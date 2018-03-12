function compd = compensateGain( ams, gains )

compd = -1;

sza = size(ams);
szg = size(gains);

if sza(1) ~= szg(1)
	error('Size mismatch')
end

numRuns = sza(1);

compd = ams;
for r = 1 : numRuns
	%gains(r,1)
	linInGain = 10^(gains(r,1)/20);
	linOutGain = 10^(gains(r,2)/20);
	compd(r,:,:) = ams(r,:,:) ./ linInGain;
	compd(r,:,:) = compd(r,:,:) ./ linOutGain;
end
