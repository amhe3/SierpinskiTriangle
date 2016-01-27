public void setup()
{
	size(400, 400);
}
public void draw()
{
	int pt1 = 
	triangle(x, y, len/2, len/2, x+len/2, y+len/2);
	sierpinski()
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len > 20)
	{
		triangle(x, y, len/2, len/2, x+len/2, y+len/2);
	}
	
	
}
