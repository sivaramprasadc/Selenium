package pck1;

public class StringBuilder {
	public static void main(String[] args) {
		String s = "Sivarama";
		StringBuffer sb = new StringBuffer(s);
		System.out.println(sb.length());
		char[] ch = s.toCharArray();
		String a = "";
		
//		for (int i = 0; i < sb.length()-1; i++) {
//			while(sb.indexOf(Character.toString(sb.charAt(i))) != sb.lastIndexOf(Character.toString(sb.charAt(i)))){
//				sb.deleteCharAt(sb.lastIndexOf(Character.toString(sb.charAt(i))));
//			}
//		}
//		sb.indexOf("a", 0);
//		System.out.println(sb.indexOf("a", 0));	
//		System.out.println(sb.lastIndexOf("a"));
//		
//		for (int i = 0; i < sb.length()-1; i++) {
//			while(sb.indexOf("a", 0) != sb.lastIndexOf("a")){
//				sb.deleteCharAt(sb.lastIndexOf("a"));
//			}
//		}
		
		System.out.println(s.lastIndexOf("a"));
		
		
		System.out.println(sb.toString());
	}
}
