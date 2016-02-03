public void setup()
{
	size(400, 400);
	background(0, 0, 0);
}
public void draw()
{
	sierpinski(0, 400, 400);
}
int sizes = 20;
public void mouseWheel(MouseEvent event)//optional
{
	sizes = event;
}
public void sierpinski(int x, int y, int len) 
{
	len = sizes;
	if(len >= 5)
	{
		//fill(255, 255, 255);
		fill(214, 214, 214);
		sierpinski(x, y, len/2);
		sierpinski(x+(len/2), y, len/2);
		sierpinski(x+(len/4), y-(len/2), len/2);
	}
	else
	{
		triangle(x, y, x+len, y, x+(len/2), y-len);
	}
}
