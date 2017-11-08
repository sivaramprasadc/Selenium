package pck1;

public class Exception {
	public static void m1(){
		throw new RuntimeException();
	}
	
	public static void m2(){
		try{
			m1();
		}catch(ArithmeticException a){
			a.printStackTrace();
		}catch(RuntimeException e){
			System.out.println("This");
			e.printStackTrace();
		}finally{
			System.out.println("Finally");
		}
	}
	public static void m3(){
		System.out.println("After exception");
	}
	
	public static void main(String[] args){
		m2();
		m3();
	}

}
