# ASCII-Image-Converter
This program is (so far) a rough sample of an image processing application.

The program uses "Processing" which is a digital media processing library for Java.

Here, the program takes a jpg or png image file and transforms the pixels into ASCII characters. It achieves this by first coverting the image file into a grayscale version using only shades of black and white. Then it takes the new rgb pixel values (referred to as a "brightness value" since it is now shades) and assigns each pixel to an ASCII character based on its "brightness" value. Lastly, it prints out the image using strings of ASCII characters. 

Due to the time constraint of this project I was unable to have the output be printed onto an external txt file. Unfortunately, the "Processing" application which I used to code this particular program has a buggy output display that deletes most of the output as it is processed out. With more time I would have been able to print the output to an external txt file to properly display the new image.

Additionally, I would have liked to propely implement scaling for the output image. Without scaling, the output image appears distorted due to ASCII characters having a 6x8 pixel area. This means that the raw ASCII image is scaled in its width by a factor of 6 and in its height by a factor of 8. To combat this effect, one can scale down the image using various methods. The method I would like to implement is to take the average brightness of a group of pixels and make the image smaller so that there is less detail but the overall resolution of the original image remains intact. 
