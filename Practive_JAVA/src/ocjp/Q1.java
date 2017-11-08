package ocjp;

public class Q1 {
	static{
		System.out.println("This is from Static");
	}
	{System.out.println("This is statement");
	}
	Q1(){
		System.out.println("This is from Constructor");
	}
	
	public static void main(String[] args){
		Q1 a=new Q1();
	}

}
