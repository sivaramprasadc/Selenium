package pck1;

public class Test {
	static int i;
	static boolean b;
	
	
	public Test(int a){
		i=a;
	}
	
	public static void add(int j){
		i=j;
		show(j);
		System.out.println(i);
	}
	public static int show(int k){
		System.out.println(i);
		i= i*k;
		return i;
	}	
	public  static void main(String[] args){
		Test t1=new Test(2);
		t1.add(3);
		
	}

}
