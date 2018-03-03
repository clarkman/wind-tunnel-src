function idx =  plotAB( var1, var2, idx, titl )

[ f, var1FileName ] = getFileNameRoot(var1);
[ f, var2FileName ] = getFileNameRoot(var2);

inPath  = '/Users/cuz/Desktop/Projects/SST/Wind/WindTunnel/2018-02-27/audio/';
outPath = '/Users/cuz/Desktop/Projects/SST/Wind/WindTunnel/2018-02-27/AB/';

% Find and load files
var1FName = [ inPath, var1FileName, '*.flac' ];
var2FName = [ inPath, var2FileName, '*.flac' ];
fileName1 = dir( var1FName );
td1 = loadWavTD( [ inPath, fileName1.name ] );
[ group1, height1, foam1, gmesh1, hz1, dn1, inGain1, outGain1 ] = parseFileName( fileName1.name );
fileName2 = dir( var2FName );
td2 = loadWavTD( [ inPath, fileName2.name ] );
[ group2, height2, foam2, gmesh2, hz2, dn2, inGain2, outGain2 ] = parseFileName( fileName2	.name );

% Condition signals
linGain1 = 10 ^ ( inGain1 / 20.0 );
td1.samples = td1.samples ./ linGain1;
linGain2 = 10 ^ ( inGain2 / 20.0 );
td2.samples = td2.samples ./ linGain2;


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
set( gca, 'YLim', [ 1e-16, 1e-4 ] );
title( [ 'A:B = ', titl ] );
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] )
set(gca,'FontSize',14)
%legend( { fileName1.name, fileName2.name, 'coherence' }, 'Interpreter', 'none' )
legend( { fileName1.name, fileName2.name }, 'Interpreter', 'none' )
pathRoot = [ outPath, '/', var1FileName, 'vs_', var2FileName ];
print( gcf,'-djpeg100', [ pathRoot, 'AB.jpg' ] );
print( gcf,'-dpdf', '-bestfit', [ pathRoot, 'AB.pdf' ] );

close('all')