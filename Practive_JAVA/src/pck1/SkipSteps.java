package pck1;

import java.io.StringBufferInputStream;

public class SkipSteps {
	public void me() throws Throwable{
		int a = 0;
		int b = 1;
		try {
			int c = b/a;
			System.out.println(c);
		} catch (Throwable e) {
			// TODO: handle exception
		}
		
		System.out.println("After error");
	}
	public static void main(String[] args) throws Throwable {
		SkipSteps o = new SkipSteps();
		o.me();
	}

}
