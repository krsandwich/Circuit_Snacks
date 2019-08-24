In order to do the bitmap, please do the following: 

1. Resize your image to something small I like [this website](https://resizeimage.net)

2. Convert image from png to jpg [here](https://cloudconvert.com/png-to-jpg). Only if it already isn't a jpg

3. Use Adafruit's [Img2Code instructions](https://github.com/ehubin/Adafruit-GFX-Library/tree/master/Img2Code). You will need to download all the dependencies first. Then you can clone the repository and run from within that folder. 

4. Copy the bitmap into the header file. Adjust the height and width variables. 

5. Any changes to color or naming can just be changed within the .ino folder. 
`tft.drawBitmap(25, 20, logo, logoWidth, logoHeight,ST77XX_CYAN);`