function success =  runVariant( variant, comment )

fName = [ getFileNameRoot( variant, comment ), '.flac' ];

success = 0;
if ~recordVariant( fName )
	error('Could not record.')
end

if ~plotVariant( fName )
	error('Could not plot.')
end

success = 1;
