package circle;

public class PassObject
{
	public void printAreas(Circle c,int time)
	{
		System.out.println("圆半径是："+"		圆的面积是：");
		for(int i=1;i<=time;i++)
		{
			c.radius=i;
			
			System.out.println("半径是："+i+"		面积是："+c.forest());
		}
	}

}
