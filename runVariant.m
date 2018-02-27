function success =  runVariant( variant, comment )

fRoot = getFileNameRoot( variant, comment );
fName = [ fRoot, '.flac' ];

success = 0;
if ~recordVariant( fName )
	error('Could not record.')
end

if ~plotVariant( fRoot )
	error('Could not plot.')
end

success = 1;
