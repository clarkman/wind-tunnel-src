function fNameRoot =  getFileNameRoot( v, comment )

datm = datestr( now, 30 );
tm = datestr( now, 13 );
if nargin > 1
    str = [ v{1}, '_', v{2}, '_', v{3}, '_', v{4}, '_', v{5}, '_', datm, '_', comment, '.flac' ];
else
    str = [ v{1}, '_', v{2}, '_', v{3}, '_', v{4}, '_', v{5}, '_', datm, '.flac' ];
end

fNameRoot = str;