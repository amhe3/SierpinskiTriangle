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
public void mousePressed()//optional
{
	if(sizes == 5)
	{
		sizes = 100;
	}
	else
		sizes =+ 5;
}
public void sierpinski(int x, int y, int len) 
{
	int r = (int) (Math.random()*225);
	int g = (int) (Math.random()*225);
	int b = (int) (Math.random()*225);
	if(len >= sizes)
	{
		//fill(255, 255, 255);
		fill(r, g, b);
		sierpinski(x, y, len/2);
		sierpinski(x+(len/2), y, len/2);
		sierpinski(x+(len/4), y-(len/2), len/2);
	}
	else
	{
		triangle(x, y, x+len, y, x+(len/2), y-len);
	}
}
