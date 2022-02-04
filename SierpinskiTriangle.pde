public void setup(){
    size(800,800);
    background(0);
  }
  int x = 0;
  int y = 800;
  int len = 400;
  public void draw(){
    sierpinski(x,y,len);
  }
  public void mousePressed(){ //optional
    background(0);
    //x+=20;
    //y-=20;
    len+=100;
  }
  public void sierpinski(int x, int y, int len) {
     if (len <  10) {
       fill(104, 181, 71);
       triangle(x ,y, x+len, y, x+(len/2), y-len);//Draw a triangle with the left corner at (x,y) and a base and height equal to len.
       //len--;
   }
     else {
       fill(104, 181, 71);
       sierpinski(x,y,len/2);
       sierpinski(x+len/2,y,len/2);
       sierpinski(x+len/4, y-len/2,len/2);
     }
       //call sierpinksi function to draw a triangle with the left corner at (x,y) and a base and height equal to len/2.
       //call sierpinksi function a second time to draw another triangle a distance of len/2 to the right of the first triangle.
       //call sierpinksi function a third time to draw a triangle a distance of len/4 to the right and len/2 up from the first triangle. 
  }
