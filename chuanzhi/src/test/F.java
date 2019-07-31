package test;

import java.io.File;
import java.io.IOException;

public class F 
{

	public static void main(String[] args) throws IOException 
	{
		File file = new File("f:\\demo");
		System.out.println(file.mkdir());
		File file2 = new File("f:\\demo\\a.text");
		System.out.println(file2.createNewFile());
		File file3 = new File("f:\\text\\text1\\test");
		System.out.println(file3.mkdirs());
	}

}
