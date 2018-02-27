function [ fNameRoot, elRoot ] =  getFileNameRoot( v, comment )

elRoot = [ v{1}, '_', v{2}, '_', v{3}, '_', v{4}, '_', v{5}, '_' ];

datm = datestr( now, 30 );
tm = datestr( now, 13 );
if nargin > 1
    str = [ elRoot, datm, '_', comment ];
else
    str = [ elRoot, datm ];
end

fNameRoot = str;
