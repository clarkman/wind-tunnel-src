function plotThree( ts1, ts2, ts3, lgnd, titl )

figure;
fftL=4096*8;
fd1 = spectrum(ts1,fftL,1);
plot(spectrum(ts1,fftL,1))
hold on
plot(spectrum(ts2,fftL,1))
plot(spectrum(ts3,fftL,1))
set(gca,'XScale','log');set(gca,'YScale','log');
legend(lgnd)
fv = freqVector(fd1);
set(gca,'XLim',[fv(1) fv(end)])
set(gca,'YLim',[1e-8, 1e-2]);
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] );
title(titl)


