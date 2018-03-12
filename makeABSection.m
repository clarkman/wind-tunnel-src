function makeABSection( vars, aBFile, outFile )

fid = fopen( aBFile );
if fid == -1
	error(['No: ',aBFile])
end

fidw = fopen( outFile, 'w' );
if fidw == -1
	error(['No: ',outFile])
end

rowth = 0;
while 1
  next45 = fgetl(fid);
  nextl = fgetl(fid);
  next60 = fgetl(fid);
  nextl = fgetl(fid);
  rowth = rowth + 1;
  if isempty(next45) == 1
    break
  end
 if next45 == -1
    break
  end
  % if isempty( nextl )
  % 	continue
  % end

  % Parse this:
  % plotAB( varInitLM{1}, varInitLM{3}, 1, '45 Hz, Large Macaron, Tall, 3inch Foam, Mesh .vs. No Mesh' ); %1
  lbrace45 = strfind( next45, '{' );
  rbrace45 = strfind( next45, '}' );
  lbrace60 = strfind( next60, '{' );
  rbrace60 = strfind( next60, '}' );
  commas = strfind( next45, ',' );
  spaces = strfind( next45, ' ' );
  parens = strfind( next45, ')' );
  next45
  idx  = next45(spaces(3)+1:commas(3)-1);
  abName = next45(spaces(4)+9:parens(1)-3);

  % Now form filenames:
  aIdx45 = next45(lbrace45(1)+1:rbrace45(1)-1);
  eval( [ '[ v, var1Name45 ] = getFileNameRoot( vars{', aIdx45, '} );' ] );
  bIdx45 = next45(lbrace45(2)+1:rbrace45(2)-1);
  eval( [ '[ v, var2Name45 ] = getFileNameRoot( vars{', bIdx45, '} );' ] );
  name45 = [ 'AB/', var1Name45, 'vs_', var2Name45, 'AB.jpg' ];

  aIdx60 = next60(lbrace60(1)+1:rbrace60(1)-1);
  eval( [ '[ v, var1Name60 ] = getFileNameRoot( vars{', aIdx60, '} );' ] );
  bIdx60 = next60(lbrace60(2)+1:rbrace60(2)-1);
  eval( [ '[ v, var2Name60 ] = getFileNameRoot( vars{', bIdx60, '} );' ] );
  name60 = [ 'AB/', var1Name60, 'vs_', var2Name60, 'AB.jpg' ];

  % LATEX native
  % fprintf( fidw, '\\pagebreak{}\n\n' );

  % fprintf( fidw, '\\subsubsection{A: B blah}\n' );
  % fprintf( fidw, '\\begin{center}\n' );
  % fprintf( fidw, '\\includegraphics[angle=-90,width=15cm]{AB/LM_S_3C_INONMN_45_vs_LM_S_1C_INONMN_45_AB}\n' );
  % fprintf( fidw, '\\par\\end{center}\n\n' );

  % fprintf( fidw, '\\begin{center}\n' );
  % fprintf( fidw, '\\includegraphics[angle=-90,width=15cm]{AB/LM_T_1C_IFOLMY_60_vs_LM_S_1C_IFOLMY_60_AB}\n' );
  % fprintf( fidw, '\\par\\end{center}\n' );
  % fprintf( fidw, '\\end{document}\n\n\n' );

  % LyX native
  fprintf( fidw, '\\begin_layout Standard\n' );
  fprintf( fidw, '\\begin_inset Newpage pagebreak\n' );
  fprintf( fidw, '\\end_inset\n\n\n' );


  fprintf( fidw, '\\end_layout\n\n' );

  fprintf( fidw, '\\begin_layout Subsubsection\n' );
  fprintf( fidw, 'A:B #%s, %s\n', idx, abName );
  fprintf( fidw, '\\end_layout\n\n' );

  fprintf( fidw, '#BEG%d\n', rowth );
  fprintf( fidw, '#FIN%d\n', rowth );

  fprintf( fidw, '\\begin_layout Standard\n' );
  fprintf( fidw, '\\align center\n' );
  fprintf( fidw, '\\begin_inset Graphics\n' );
  fprintf( fidw, '        filename %s\n', name45 );
  fprintf( fidw, '        lyxscale 30\n' );
  fprintf( fidw, '        width 15cm\n' );
  fprintf( fidw, '        rotateAngle -90\n\n' );

  fprintf( fidw, '\\end_inset\n\n\n' );

  fprintf( fidw, '\\end_layout\n\n' );

  fprintf( fidw, '\\begin_layout Standard\n\n' );
  fprintf( fidw, '\\align center\n' );
  fprintf( fidw, '\\begin_inset Graphics\n' );
  fprintf( fidw, '        filename %s\n', name60 );
  fprintf( fidw, '        lyxscale 30\n' );
  fprintf( fidw, '        width 15cm\n' );
  fprintf( fidw, '        rotateAngle -90\n\n' );

  fprintf( fidw, '\\end_inset\n\n\n' );


  fprintf( fidw, '\\end_layout\n\n' );






end
fclose(fid);
fclose(fidw);
