function y = aconv(f,x)
% This is a modified version of aconv from Wavelab for a wavelet filter implementation
% fixed a problem: replace function reverse() with sort() to make this function warning-free
%
% (c) 2023 modified by LiHao
% newtiement@gmail.com
% aconv -- Convolution Tool for Two-Scale Transform
%  Usage
%    y = aconv(f,x)
%  Inputs
%    f    filter
%    x    1-d signal
%  Outputs
%    y    filtered result
%
%  Description
%    Filtering by periodic convolution of x with the
%    time-reverse of f.
%
%  See Also
%    iconv, UpDyadHi, UpDyadLo, DownDyadHi, DownDyadLo
%
	n = length(x);
	p = length(f);
	if p < n,
	   xpadded = [x x(1:p)];
	else
	   z = zeros(1,p);
	   for i=1:p,
		   imod = 1 + rem(i-1,n);
		   z(i) = x(imod);
	   end
	   xpadded = [x z];
	end
	fflip = reverse(f);
	ypadded = filter(fflip,1,xpadded);
	y = ypadded(p:(n+p-1));
%
% Copyright (c) 1993. David L. Donoho
%     
    
    
 
 
%
%  Part of Wavelab Version 850
%  Built Tue Jan  3 13:20:40 EST 2006
%  This is Copyrighted Material
%  For Copying permissions see COPYING.m
%  Comments? e-mail wavelab@stat.stanford.edu 
