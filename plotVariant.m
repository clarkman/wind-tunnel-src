function [ rms, stdev, skew ] = plotVariant( variant )

% Load audio file
[ f, fRoot ] = getFileNameRoot( variant );
inPath  = '/Users/cuz/Desktop/Projects/SST/Wind/WindTunnel/2018-02-27/audio/';
var1FName = [ inPath, fRoot, '*.flac' ];
fileName1 = dir( var1FName );
td = loadWavTD( [ inPath, fileName1.name ] );
[ group, height, foam, gmesh, hz, dn, inGain, outGain ] = parseFileName( fileName1.name );

% Now condition signal
linGain = 10 ^ ( inGain / 20.0 );
td.samples = td.samples ./ linGain;

% Pre output path, group by folder
group = fRoot(1:2);
outPath  = [ '/Users/cuz/Desktop/Projects/SST/Wind/WindTunnel/2018-02-27/', group, '/' ];

% Time series
tsName = [ outPath, fRoot, '.ts.jpg' ];
plotTitle = td.title;
figure;
plot(td);
plims = 1 / linGain;
set(gca,'YLim',[-plims, plims])
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
fd = spectrum(td,fftL,1);
freqs = freqVector(fd);
plot(spectrum(td,fftL,1))
set(gca,'XLim',[freqs(1),freqs(end)]);
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
plot(log10(spectrogram(td,fftL,(1-1/32))))
title(plotTitle)
set(gca,'FontSize',14)
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] )
print( gcf,'-djpeg100', sgramName );
close('all');

