# Modified_Aconv_In_Matlab
%aconv -- Convolution Tool for Two-Scale Transform_Modified_And_Updated
% Usage
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
replaced reverse() with sort()

Cite from origin project: Charles Rino (2023). Wavelet Scale Spectra (https://www.mathworks.com/matlabcentral/fileexchange/35092-wavelet-scale-spectra), MATLAB Central File Exchange. Retrieved August 28, 2023.
