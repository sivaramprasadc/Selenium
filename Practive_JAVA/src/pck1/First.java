package pck1;

public class First {
	public static int i=0;
	
	public void m1()
	{
		i=i+1;
		System.out.println("From m1 "+i);
	}
	public void m2()
	{
		System.out.println("From m2 "+i);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Hello");
		First f= new First();
		First f2= new First();
		f.m1();
		f2.m2();

	}
}


