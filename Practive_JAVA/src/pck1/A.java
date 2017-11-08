package pck1;

public class A {
	
	public void m(){
		System.out.println("This is from Class A");
	}
	public int doIt(String str,Integer data){
		String signature="(string,Integer[])";	
		System.out.println(str+""+signature);
		return 1;
	}
	
//	public static void main(String[] args){
//		A a = new B();
//		a.m();
//	}

}


