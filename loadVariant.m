function [ td, fName ] = loadVariant( variant )

[ f, fRoot ] = getFileNameRoot( variant );
inPath  = '/Users/cuz/Desktop/Projects/SST/Wind/WindTunnel/2018-03-02/audio/';
var1FName = [ inPath, fRoot, '*.flac' ]
fileName1 = dir( var1FName );
fName = fileName1.name;
td = loadWavTD( [ inPath, fileName1.name ] );

[ group, height, foam, gmesh, hz, dn, inGain, outGain ] = parseFileName( fileName1.name );

% Now condition signal
linGain = 10 ^ ( inGain / 20.0 );
td.samples = td.samples ./ linGain;

fName = fileName1.name;