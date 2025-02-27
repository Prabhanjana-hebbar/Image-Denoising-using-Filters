# Image-Denoising-using-Filters
This repository implements image denoising using the Wiener Filter in MATLAB. The Wiener filter is a powerful method for removing noise from images by reducing the mean square error between the original and noisy image. The approach adjusts the filter based on local image statistics, making it effective in various types of noise, such as Gaussian noise.


##Usage<br>
1.Prepare your noisy image:<br>
Ensure the image is in a format supported by MATLAB, such as .jpg, .png, or .bmp.
The image should contain noise (e.g., Gaussian noise) to demonstrate the denoising process.

2.Open MATLAB and navigate to the directory containing the script.<br>
Run the following command in the MATLAB command window:
denoisedImage = wiener_filter_denoising('noisy_image.png');

##MATLAB's Image Processing Toolbox was used to handle basic image processing tasks such as reading, displaying, and manipulating images.


##OUTPUT<br>
<img src="https://github.com/user-attachments/assets/542e313c-2d42-4c5d-8d4f-cd22276117dc"/>

<img src="https://github.com/user-attachments/assets/4fe773a2-8be8-4964-98e2-d6c55e3ea4eb"/>
