function fNameRoot =  getFileNameRoot( v )

datm = datestr( now, 30 );
tm = datestr( now, 13 );
str = [ v{1}, '_', v{2}, '_', v{3}, '_', v{4}, '_', v{5}, '_', datm, '.flac' ]