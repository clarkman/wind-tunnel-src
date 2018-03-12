function [ ams, gains, cases ] = sensHists()

pSel = [ 0.3836    0.6012 ];

inPath  = '/Users/cuz/Desktop/Projects/SST/Wind/WindTunnel/2018-03-02/audio/';
var1FName = [ inPath, '*output.flac' ];
fileNames = dir( var1FName );
numFiles = numel( fileNames );

amsTmp = zeros( numFiles, 10, 2 );
gains = zeros( numFiles, 2 );
for f = 1 : numFiles
	inName = fileNames(f).name;
	cases{f} = inName;
	td = loadWavTD( [ inPath, inName ] );
	td.samples = filterA(td.samples, td.sampleRate);
    [ group, height, foam, gmesh, hz, dn, inGain, outGain ] = parseFileName( inName );
    gains(f,1) = inGain;
    gains(f,2) = outGain;
	outName = [ td.title, '.jpg'] 
	plot(td);
	title(inName);
	set(gca,'FontSize',14)
    set(gca,'YLim',[-1.0,1.0])
    set(gcf, 'OuterPosition', [ 400 500 1200 900 ] )
    stagr = 0.99;
    samps = td.samples;
	sr = td.sampleRate;
    for l = 1 : 10
    	selBeg = pSel(1)+(l*stagr-1);
    	selFin = pSel(2)+(l*stagr-1);
    	line([selBeg, selBeg],get(gca,'YLim'),'Color','r')
    	line([selFin, selFin],get(gca,'YLim'),'Color','K')
        slikk = samps(floor(selBeg*sr):ceil(selFin*sr));
        amsTmp(f,l,1) = max(slikk);
        amsTmp(f,l,2) = min(slikk);
    end
	% while 1
	%     [x, y, button] = ginput(1);
	%     if( button == 3 ) % cancel
	%       	break
	%     end
 %    end
    psName = [ inPath(1:end-6), 'Ref/', outName ]
    print( gcf,'-djpeg100', psName );
    close('all') 
end

ams = amsTmp;
% td = loadWavTD( [ inPath, fileName1.name ] );
% [ group, height, foam, gmesh, hz, dn, inGain, outGain ] = parseFileName( fileName1.name );
