function plotVariant( fRoot )

flacName = [ fRoot, '.flac' ];
td = loadWavTD( flacName );


tsName = [ fRoot, '.ts.jpg' ];
plotTitle = td.title;
figure;
plot(td);
set(gca,'YLim',[-1.0, 1.0])
title(plotTitle)
print( gcf,'-djpeg100', tsName );
close('all');

fftL = 4096 * 4;
psName = [ fRoot, '.spect.jpg' ];
plotTitle = [ 'Spectrum of: ', td.title ];
figure;
plot(spectrum(td,fftL,1))
aa = get(gca,'YLim');
set(gca,'XScale','log');
set(gca,'YScale','log');
title(plotTitle)
print( gcf,'-djpeg100', psName );
close('all');

fftL = 4096 * 4;
sgramName = [ fRoot, '.sgram.jpg' ];
plotTitle = [ 'Spectrogram of: ', td.title ];
figure;
plot(log10(spectrogram(td,fftL,0.8675)))
title(plotTitle)
print( gcf,'-djpeg100', sgramName );
close('all');

