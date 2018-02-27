function idx =  plotAB( var1, var2, idx, titl )

[ f, var1FileName ] = getFileNameRoot(var1);
[ f, var2FileName ] = getFileNameRoot(var2);

inPath  = '/Users/cuz/Desktop/Projects/SST/Wind/WindTunnel/2018-02-27/';
outPath = '/Users/cuz/Desktop/Projects/SST/Wind/WindTunnel/2018-02-27/AB/';

var1FName = [ inPath, var1FileName, '*.flac' ];
var2FName = [ inPath, var2FileName, '*.flac' ];

fileName1 = dir( var1FName );
td1 = loadWavTD( [ inPath, fileName1.name ] );
fileName2 = dir( var2FName );
td2 = loadWavTD( [ inPath, fileName2.name ] );

fftL = 4096;
figure;
%yyaxis left
plot(spectrum(td1,fftL));
hold on;
%yyaxis left
plot(spectrum(td2,fftL),'LineStyle','--');
set(gca,'XScale','log');
set(gca,'YScale','log');

%yyaxis right
%plot( mscohere( td1, td2, 0.75, fftL ), 'Color', [0.8 0.8 0.8] )

aa = get( gca, 'XLim' );
set( gca, 'XLim', [ aa(1), td1.sampleRate/2 ] );
title( [ 'A:B = ', titl ] );
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] )
set(gca,'FontSize',14)
%legend( { fileName1.name, fileName2.name, 'coherence' }, 'Interpreter', 'none' )
legend( { fileName1.name, fileName2.name }, 'Interpreter', 'none' )
pathRoot = [ outPath, '/', var1FileName, 'vs_', var2FileName ];
print( gcf,'-djpeg100', [ pathRoot, 'AB.jpg' ] );
print( gcf,'-dpdf', '-bestfit', [ pathRoot, 'AB.pdf' ] );

