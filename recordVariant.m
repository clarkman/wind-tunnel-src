function success =  recordVariant( fName, recorder )

success = 0;

sampRate = 48000
bitsPerSamp = 16;

if nargin < 2
	recorder = audiorecorder( sampRate, bitsPerSamp, 1, 2 );
end

recordblocking(recorder, 10);

data = getaudiodata(recorder);

audiowrite( fName, data, sampRate, 'BitsPerSample', bitsPerSamp, 'Comment', datestr(now-10/86400,31) );
