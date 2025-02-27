# Image-Denoising-using-Filters
This repository implements image denoising using the Wiener Filter in MATLAB. The Wiener filter is a powerful method for removing noise from images by reducing the mean square error between the original and noisy image. The approach adjusts the filter based on local image statistics, making it effective in various types of noise, such as Gaussian noise.


##Usage
1.Prepare your noisy image:

Ensure the image is in a format supported by MATLAB, such as .jpg, .png, or .bmp.
The image should contain noise (e.g., Gaussian noise) to demonstrate the denoising process.

2.Open MATLAB and navigate to the directory containing the script.
Run the following command in the MATLAB command window:
denoisedImage = wiener_filter_denoising('noisy_image.png');
