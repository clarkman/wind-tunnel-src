function [ group, height, foam, gmesh, hz, dn, inGain, outGain ] = parseFileName( fName )

% SM_S_SO_IFOLMY_45_20180301T124057_43dBpreamp.flac
ubars = strfind( fName, '_' );
numbars = numel( ubars );
if numbars < 6
	error( 'Usage: not enough underscores');
end
group = fName(1:ubars(1)-1);
height = fName(ubars(1)+1:ubars(2)-1);
foam = fName(ubars(2)+1:ubars(3)-1);
gmesh = fName(ubars(3)+1:ubars(4)-1);
hzStr = fName(ubars(4)+1:ubars(5)-1);
hz = sscanf( hzStr, '%d' );
dn = datenum( fName(ubars(5)+1:ubars(6)-1), 'yyyymmddTHHMMSS' );
inGainStr = fName(ubars(6)+1:end);
inGaindB = strfind( inGainStr, 'dBpreamp' );
if isempty( inGaindB )
	error('File name format error (inGain)')
end
inGain = sscanf( inGainStr(1:inGaindB(1)-1), '%f' );
if numbars > 6 
	if strcmp( hzStr, '00' )
		outGainStr = fName(ubars(7)+1:end);
		outGaindB = strfind( outGainStr, 'dBoutput' );
		if isempty( outGaindB )
			error('File name format error (outGain)')
		end
		outGain = sscanf( outGainStr(1:outGaindB(1)-1), '%f' );
	else 
		error('File name format error (hz00)')
	end
else
	outGain = [];
end
