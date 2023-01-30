import java.io.PrintWriter;
import java.io.IOException;
import java.util.Arrays;
void setup() {
  size(860,853); //size of the test image; this can be modified to be a variable for any image size that is used in the test
  PImage img; //create image variable 
  img = loadImage("jeeptwo.png"); //test image that will be used
 
  image(img,0,0);
  filter(GRAY); //processing has this func that allows image to be converted to grayscale, now i just need the grayscale values
  loadPixels();
  
  float newPix[] = new float[width*height]; //array for new ascii image "pixels"
  //int hSpace = (860/48)+10;
  int count = 0;
  
  String newimg[] = new String[width*height];
  
  
 // PrintWriter out = new PrintWriter("output.txt"); unable to set up in this class
  
  
  for (int i=0; i < (width*height); i++){ //this for-loop will cycle through every single pixel in the loaded image
    newPix[i]=brightness(pixels[i]);      //stores every brightness pixel's brightness value into a new array
  }
  
  for (int i=0; i < (width*height); i++){ //this for-loop will cycle through every single pixel in the loaded image
    String x;
    if (newPix[i] > 230.0){     //assigns an ascii character to each pixel based on its brightness value
      x = " ";
  } else if (newPix[i] > 204){
    x = ".";
  } else if (newPix[i] > 178){
    x = "\'";
  } else if (newPix[i] > 152){
    x = "=";
  } else if (newPix[i] > 127){
    x = ":";
  } else if (newPix[i] > 102){
    x = "*";
  } else if (newPix[i] > 76){
    x = "|";
  } else if (newPix[i] > 50){
    x = "o";
  } else if (newPix[i] > 25){
    x = "$";
  } else {
    x = "M";
  }
  
  newimg[i] = x;
  
  }
  
    for (int i = 0; i < 733580; i=i+8530){ //scaling loop WIP -> output for "Processing" deletes output -> txt file will be output destination but requires a new class
      while (count < 8531) {
      System.out.print(newimg[i]);
      count++;
      }
      System.out.println();
      count = 0;
    }
   
  
  
  /************************** VERSION 1 [START] *************************************
  
  /*for (int z = 0; z < hSpace; z++){

  for (int i = 0; i < width; i=i+48){ //runs through the horizontal array 48 pixels at a time
    int avgPixH = 0;
    //int count = 0;
    int current = i;
    for (int j = current; j < (j+47); j++){ //adds the previous 48 values together and stores that value into avgPixH
    // count++;
      avgPixH += pixels[j];
  }
  
  avgPixH = (avgPixH / 48); //average pixel greyscale value for this section of 48 pixels
  hpix[hCount]=avgPixH; //stores the average greyscale value for this section into the new horizontal pixel array
  }
   

  }
  for (int i = 0; i < hSpace; i++){
   System.out.print(hpix[i]); 
  }
 // for (int i = 0; i < (width*height); i=i+1000){
   // System.out.print(pixels[i]);
 // }
  
 updatePixels(); //ll be used to update the display window after the conversion
 */  
  
  
  
  /*************TEST AREA******************
  
  //System.out.println(hSpace);
  System.out.println(width);
  
  **************TEST AREA******************
  
  
  /************************** VERSION 1 [END]*************************************
  
  
  */
  
  
}
