tdLM_T_3C_IFOLMY_45_NOSCREEN_POLE2FT_23dBpreamp = loadWavTD('audio/LM_T_3C_IFOLMY_45_NOSCREEN_POLE2FT_23dBpreamp.flac')
tdLM_T_3C_IFOLMY_45_NOSCREEN_POLE1FT_23dBpreamp = loadWavTD('audio/LM_T_3C_IFOLMY_45_NOSCREEN_POLE1FT_23dBpreamp.flac')
tdLM_T_3C_IFOLMY_45_NOSCREEN_31dBpreamp = loadWavTD('audio/LM_T_3C_IFOLMY_45_NOSCREEN_31dBpreamp.flac')

tdLM_T_3C_IFOLMY_45_NOSCREEN_31dBpreamp.samples = tdLM_T_3C_IFOLMY_45_NOSCREEN_31dBpreamp.samples ./ (10^(31/20));
tdLM_T_3C_IFOLMY_45_NOSCREEN_POLE1FT_23dBpreamp.samples = tdLM_T_3C_IFOLMY_45_NOSCREEN_POLE1FT_23dBpreamp.samples ./ (10^(23/20));
tdLM_T_3C_IFOLMY_45_NOSCREEN_POLE2FT_23dBpreamp.samples = tdLM_T_3C_IFOLMY_45_NOSCREEN_POLE2FT_23dBpreamp.samples ./ (10^(23/20));

figure
fd = spectrum(tdLM_T_3C_IFOLMY_45_NOSCREEN_31dBpreamp,4096*8,1)
freqs = freqVector(fd);
plot(fd)
hold on; plot(spectrum(tdLM_T_3C_IFOLMY_45_NOSCREEN_POLE1FT_23dBpreamp,4096*8,1))
plot(spectrum(tdLM_T_3C_IFOLMY_45_NOSCREEN_POLE2FT_23dBpreamp,4096*8,1))
set(gca,'XScale','log');set(gca,'YScale','log');
legend({'no pole', '1 ft', '2 ft'})
title('Turbulence Test - 45 Hz')
set(gca,'XLim',[freqs(1),freqs(end)] )
set(gca,'FontSize',14)
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] )
print( gcf,'-djpeg100', 'turbulenceTest45.jpg' );


tdLM_T_3C_IFOLMY_60_NOSCREEN_POLE2FT_23dBpreamp = loadWavTD('audio/LM_T_3C_IFOLMY_60_NOSCREEN_POLE2FT_23dBpreamp.flac')
tdLM_T_3C_IFOLMY_60_NOSCREEN_POLE1FT_23dBpreamp = loadWavTD('audio/LM_T_3C_IFOLMY_60_NOSCREEN_POLE1FT_23dBpreamp.flac')
tdLM_T_3C_IFOLMY_60_NOSCREEN_31dBpreamp = loadWavTD('audio/LM_T_3C_IFOLMY_60_NOSCREEN_31dBpreamp.flac')

tdLM_T_3C_IFOLMY_60_NOSCREEN_31dBpreamp.samples = tdLM_T_3C_IFOLMY_60_NOSCREEN_31dBpreamp.samples ./ (10^(31/20));
tdLM_T_3C_IFOLMY_60_NOSCREEN_POLE1FT_23dBpreamp.samples = tdLM_T_3C_IFOLMY_60_NOSCREEN_POLE1FT_23dBpreamp.samples ./ (10^(23/20));
tdLM_T_3C_IFOLMY_60_NOSCREEN_POLE2FT_23dBpreamp.samples = tdLM_T_3C_IFOLMY_60_NOSCREEN_POLE2FT_23dBpreamp.samples ./ (10^(23/20));

figure
plot(spectrum(tdLM_T_3C_IFOLMY_60_NOSCREEN_31dBpreamp,4096*8,1))
hold on; plot(spectrum(tdLM_T_3C_IFOLMY_60_NOSCREEN_POLE1FT_23dBpreamp,4096*8,1))
plot(spectrum(tdLM_T_3C_IFOLMY_60_NOSCREEN_POLE2FT_23dBpreamp,4096*8,1))
set(gca,'XScale','log');set(gca,'YScale','log');
legend({'no pole', '1 ft', '2 ft'})
title('Turbulence Test - 60 Hz')
set(gca,'XLim',[freqs(1),freqs(end)] )
set(gca,'FontSize',14)
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] )
print( gcf,'-djpeg100', 'turbulenceTest60.jpg' );


