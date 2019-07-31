package basic;


/**
 * 检查替换模式
 * 先假设数据为某个值
 * 判断条件是否成立,如果成立,将数据修改成相应的值
 * 
 * @author new
 *
 */
public class Demo 
{
	public static void main(String[] args)
	{
	   String pname="天皇";
	   Demo.checkPerson(pname);
	}
	
	
	private static void checkPerson(String pname)
	{
		String msg=" 好人";
		if(pname.equals("天皇"))
		{
			msg=" 天下第一混蛋";
		}
		System.out.println(pname+msg);
	}

}
