import SimpleOpenNI.*;

SimpleOpenNI kinect = new SimpleOpenNI(this);

void setup()
{
  size(640*2, 480);

  kinect.enableDepth();
  //kinect.enableRGB();
  kinect.enableIR();
  //IR or RGB, not simultaneously
}

void draw()
{
  kinect.update();
  image(kinect.depthImage(), 0, 0);
  //image(kinect.rgbImage(), 640, 0);
  image(kinect.irImage(), 640, 0);
}

