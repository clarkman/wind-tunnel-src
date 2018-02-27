function plotVariant( variant )

% Load uadio file
[ f, fRoot ] = getFileNameRoot( variant );
inPath  = '/Users/cuz/Desktop/Projects/SST/Wind/WindTunnel/2018-02-27/audio/';
var1FName = [ inPath, fRoot, '*.flac' ];
fileName1 = dir( var1FName );
td = loadWavTD( [ inPath, fileName1.name ] );

% Pre output path, group by folder
group = fRoot(1:2);
outPath  = [ '/Users/cuz/Desktop/Projects/SST/Wind/WindTunnel/2018-02-27/', group, '/' ];

% Time series
tsName = [ outPath, fRoot, '.ts.jpg' ];
plotTitle = td.title;
figure;
plot(td);
set(gca,'YLim',[-1.0, 1.0])
title(plotTitle)
set(gca,'FontSize',14)
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] )
print( gcf,'-djpeg100', tsName );
close('all');

% Spectrum
fftL = 4096 * 4;
psName = [ outPath, fRoot, '.spect.jpg' ];
plotTitle = [ 'Spectrum of: ', td.title ];
figure;
plot(spectrum(td,fftL,1))
aa = get(gca,'YLim');
set(gca,'XScale','log');
set(gca,'YScale','log');
title(plotTitle)
set(gca,'FontSize',14)
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] )
print( gcf,'-djpeg100', psName );
close('all');

% Spectrogram
fftL = 4096 * 4;
sgramName = [ outPath, fRoot, '.sgram.jpg' ];
plotTitle = [ 'Spectrogram of: ', td.title ];
figure;
plot(log10(spectrogram(td,fftL,0.8675)))
title(plotTitle)
set(gca,'FontSize',14)
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] )
print( gcf,'-djpeg100', sgramName );
close('all');

