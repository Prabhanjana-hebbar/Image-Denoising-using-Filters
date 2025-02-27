close all;
clear;
clc;

% Reading Input Image
A = imread("car.jpg"); //Pass Your Input Image here 
A = double(rgb2gray(A));
[M, N] = size(A);

% Degradation Function (Blur)
h = fspecial('motion', 7, 45); % Example motion blur
h = ones(3,3)/9; % Example average blur

% Transformation to Frequency Domain
H = fft2(h, M, N);

% Degraded Image with Noise
noise_power = 50; % Adjust noise level
noise = sqrt(noise_power) * randn(M, N);
B = real(ifft2(H .* fft2(A))) + noise;

% Wiener Filtering
% Power Spectrum Estimation (Important!)
Sa = abs(fft2(A)).^2 / (M*N); % Signal power spectrum
Sn = noise_power; % Noise power (assumed constant here)

% Wiener Filter in Frequency Domain
% Avoid division by zero
Hconj = conj(H);
denominator = abs(H).^2 + Sn./Sa;
denominator(denominator == 0) = eps; % Avoid division by zero

G = (Hconj ./ denominator);

% Apply Wiener Filter
Restored_Freq = G .* fft2(B);

% Restored Image in spatial Domain
Restored_A = real(ifft2(Restored_Freq));

% Display of Input and Output Images
figure; imshow(uint8(A)), title('Original Image');
figure; imshow(uint8(B)), title('Degraded Image');
figure; imshow(uint8(Restored_A)), title('Restored Image After Wiener Filtering');

% Calculate and Display PSNR
PSNR = psnr(uint8(Restored_A), uint8(A));
fprintf('PSNR: %f dB\n', PSNR);
