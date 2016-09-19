function y = LowPassRadFreq(x, rad_freq)
% low-pass filter with cut-off frequency in rad/sample
% use a long sinc pulse for filtering. 

% this is the frequeny
wc = rad_freq;

% make a long time index
n = [-40:39];

% create the appropriate impulse response 
% and xhfilter
h = wc/pi*sinc(wc*n/pi);
y = conv(x,h);
y = y(length(n):end);
end