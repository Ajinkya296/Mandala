int order = 4;
float angle;
int len =  1500;
color red  = #f71e1b;
color green = #33c441;
color yellow  = #e2dc2b;
color pink  = #e23bdd;
color blue  = #2758dd;
color lblue = #1ee8e4;
color w =  #FFFFFF;
color current_color = red;
void setup()
{
  
 
  size(900,900);
  angle = 2 * PI / pow(2,order);
  background(0);
  translate(width/2,height/2);
  for(int i = 0 ; i < pow(2,order) ; i++)
  {
    rotate(-angle);
    stroke(0,0,0,100);
    line(0,0,len,0);
  }
}

void draw()
{
  translate(width/2,height/2);
  if(frameCount%20==0)saveFrame("GifPhotos/Photo-#####.png");
}


void mouseDragged()
{
  for(int i = 0 ; i < pow(2,order) ; i++)
  {
    rotate(-angle);
    fill(current_color);
    noStroke();
    ellipse(mouseX-width/2,mouseY-height/2,4,4);
  }
  
}

void keyPressed()
{
  switch(key)
  {
    case 'r' : current_color = red;
                break;
    case 'b' : current_color = blue;
                break;
    case 'g' : current_color = green;
                break;
   case  'p' : current_color = pink;
               break;
    case 'y' : current_color = yellow;
               break;
    case 'l' : current_color = lblue;
               break;
    case 'w' : current_color = w;
               break;
    case 's' : saveFrame();
  }
}