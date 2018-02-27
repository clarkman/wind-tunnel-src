function idx =  plotAB( var1, var2, idx )

[ f, var1FileName ] = getFileNameRoot(var1);
[ f, var2FileName ] = getFileNameRoot(var2);



var1FName = [ var1FileName, '*.flac' ];
var2FName = [ var2FileName, '*.flac' ];

fileName1 = dir( var1FName );
td1 = loadWavTD( fileName1.name );

fileName2 = dir( var2FName );
td2 = loadWavTD( fileName2.name );

fftL = 4096;
figure;
plot(spectrum(td1,fftL));
hold on;
plot(spectrum(td2,fftL));
set(gca,'XScale','log');
set(gca,'YScale','log');
aa = get( gca, 'XLim' );
set( gca, 'XLim', [ aa(1), td1.sampleRate/2 ] );
title( [ fileName1.name, ' .vs. ', fileName2.name ] );
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] )
set(gca,'FontSize',14)
legend( { fileName1.name, fileName2.name }, 'Interpreter', 'none' )
print( gcf,'-djpeg100', [ var1FileName, 'vs_', var2FileName, 'AB.jpg' ] );
print( gcf,'-dpdf', '-bestfit', [ var1FileName, 'vs_', var2FileName, 'AB.pdf' ] );

