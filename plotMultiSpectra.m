function plotMultiSpectra( base, fftL, titl, varargin )

numCmps = length(varargin);

if isa( base, 'TimeData')
  tdObj = true;
else
  tdObj = false;
end

figure;

lgnd = cell( numCmps, 1 );
if tdObj
  td = base;
  fName = td.title;
else
  [ td, fName ] = loadVariant( base );
end
freq = spectrum( td, fftL, 1 );
fv = freqVector( freq );
plot( freq );
lgnd{1} = fName;
hold on;
for n = 1 : numCmps
  if tdObj
  	multi = varargin{n};
  	fName = multi.title;
  else
    [ multi, fName ] = loadVariant( varargin{n} );
  end
  lgnd{n+1} = fName;
  plot( spectrum( multi, fftL, 1 ) );
end
set(gca,'XScale','log');
set(gca,'YScale','log');
set(gca,'XLim',[fv(1),fv(end)])
%set(gca,'YLim',[1e-16, 1e-4]);
set(gca,'YLim',[1e-7, 1e-0]);
set(gcf, 'OuterPosition', [ 400 500 1200 900 ] );
legend(lgnd, 'Interpreter','none');
title( titl );

% plotCmpSpectra( preFilter1_0017, 4096, preFilter1_0097, preFilter1_0124, preFilter1_0130, preFilter1_0239, preFilter1_0778, preFilter1_0066, preFilter1_0106, preFilter1_0126, preFilter1_0148, preFilter1_0740, preFilter1_0084, preFilter1_0123, preFilter1_0128, preFilter1_0235, preFilter1_0751  );