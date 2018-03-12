

Rycote_Fur_OurMic_45_30dBpreamp = loadWavTD('audio/Rycote_Fur_OurMic_45_30dBpreamp.flac')
Rycote_Fur_OurMic_45_30dBpreamp.samples = Rycote_Fur_OurMic_45_30dBpreamp.samples ./ 10^(30/20);
LM_T_3C_IMOMMY_45_20180302T115042_25dBpreamp = loadWavTD('audio/LM_T_3C_IMOMMY_45_20180302T115042_25dBpreamp.flac')
LM_T_3C_IMOMMY_45_20180302T115042_25dBpreamp.samples = LM_T_3C_IMOMMY_45_20180302T115042_25dBpreamp.samples ./ 10^(25/20);
SM_S_SO_IFOLMY_45_20180302T153452_21dBpreamp = loadWavTD('audio/SM_S_SO_IFOLMY_45_20180302T153452_21dBpreamp.flac')
SM_S_SO_IFOLMY_45_20180302T153452_21dBpreamp.samples = SM_S_SO_IFOLMY_45_20180302T153452_21dBpreamp.samples ./ 10^(21/20);
plotThree( Rycote_Fur_OurMic_45_30dBpreamp, LM_T_3C_IMOMMY_45_20180302T115042_25dBpreamp, SM_S_SO_IFOLMY_45_20180302T153452_21dBpreamp, {'Rycote','Large Macaron','Small Macaron'},'Rycote .vs. Macarons - 45Hz')




Rycote_Fur_OurMic_60_27dBpreamp = loadWavTD('audio/Rycote_Fur_OurMic_60_27dBpreamp.flac');
Rycote_Fur_OurMic_60_27dBpreamp.samples = Rycote_Fur_OurMic_60_27dBpreamp.samples ./ 10^(27/20);
LM_T_3C_IFOLMY_60_20180302T122932_18dBpreamp = loadWavTD('audio/LM_T_3C_IFOLMY_60_20180302T122932_18dBpreamp.flac');
LM_T_3C_IFOLMY_60_20180302T122932_18dBpreamp.samples = LM_T_3C_IFOLMY_60_20180302T122932_18dBpreamp.samples ./ 10^(18/20);
SM_T_SO_IFOLMY_60_20180302T155952_20dBpreamp = loadWavTD('audio/SM_T_SO_IFOLMY_60_20180302T155952_20dBpreamp.flac');
SM_T_SO_IFOLMY_60_20180302T155952_20dBpreamp.samples = SM_T_SO_IFOLMY_60_20180302T155952_20dBpreamp.samples ./ 10^(20/20);
plotThree( Rycote_Fur_OurMic_60_27dBpreamp, LM_T_3C_IFOLMY_60_20180302T122932_18dBpreamp, SM_T_SO_IFOLMY_60_20180302T155952_20dBpreamp, {'Rycote','Large Macaron','Small Macaron'},'Rycote .vs. Macarons - 60Hz')


