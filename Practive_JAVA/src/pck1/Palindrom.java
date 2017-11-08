package pck1;

public class Palindrom {
	
	public static void main(String[] args){
		
		String s = "abcdcbaa";
		char[] ch = s.toCharArray();
		int l=ch.length-1;
		boolean f = false;
		for (int i = 0; i < ch.length/2; i++) {
			if (ch[i]==ch[l]){
				f=true;
				l--;
				continue;
			}else{
				f=false;
				System.out.println("Not palindrom");
				break;
			}			
		}
		if (f==true){
			System.out.println("It is palindrom");
		}
	}

}
