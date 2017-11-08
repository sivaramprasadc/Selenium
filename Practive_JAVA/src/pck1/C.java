package pck1;

public class C extends B{
	public void m(){
		System.out.println("This is from Class C");
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		C c = new C();
		c.m();
		B b = new C();
		b.m();
		A a = new B();
		a.m();

	}

}
