package circle;

public class Test
{

	public static void main(String[] args) 
	{
		PassObject p = new PassObject();
		Circle c = new Circle();
		c.radius=1;
		int time =6;
		p.printAreas(c, time);

	}

}
