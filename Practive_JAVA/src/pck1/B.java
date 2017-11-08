package pck1;

class B extends A{
	public void m(){
		System.out.println("This is from Class B");
	}
	public int doIt(String str,Integer data) {
		String signature="(string,Integer[])";	
		System.out.println(str+""+signature);
		return 0;
	}
//	public static void main(String[] args){
//		A a = new B();
//		a.doIt("hello", 1);
//		
//	}
}
