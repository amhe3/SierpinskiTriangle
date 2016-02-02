public void setup()
{
	size(400, 400);
	background(0, 0, 0);
}
public void draw()
{
	sierpinski(0, 400, 400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	fill(255, 255, 255);
	//triangle(0, 400, 400, 400, 200, 0);
	//triangle(x, y, len, y, len/2, x);
	//triangle(0, 400, 200, 400, 100, 200);
	//triangle(x, y, len/2, y, len/4, len/2);
	///triangle(x, y, x+len, y, len/2, y-len);
	triangle(x, y, x+len, y, len/2, y-len);
	if(len >= 20)
	{
		//fill(255, 0, 0);
		//ierpinski(x, y, len/2);
		//sierpinski(x+(len/2), y, len/2);
		sierpinski(x+(len/4), y-(len/2), len/2);
	}
	else
	{
		triangle(x, y, x+len, y, len/2, y-len);
	}
		
	
}
