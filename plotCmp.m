function plotCmp( compd, names )

sza = size( compd );
numRuns = sza(1);
numVals = sza(2);

figure;
for r = 1 : numRuns
	for v = 1 : numVals
		line( [r r], [0, compd(r,v,1)], 'Marker', 'o')
		line( [r r], [0, compd(r,v,2)], 'Marker', 'o')
	end
end
yy = get(gca,'YLim')
for r = 1 : numRuns

	caseName = names{r};
	ubars = strfind(caseName,'_');

	text(r, yy(2), caseName(1:ubars(4)-1),'Interpreter','none','Rotation',270)
end

set(gca,'XLim', [0, numRuns+1]);
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] );
xlabel('run')
title('Linear comparison of sensor attenuation')
