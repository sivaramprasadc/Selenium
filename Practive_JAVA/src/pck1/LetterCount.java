package pck1;

import java.util.HashMap;

public class LetterCount {
	public String str = "My Name is Java";
	
	public void lettercount(){
		String s = "Java is Java java";
		String l = "a";
		String ns = s.replace("a", "");
		System.out.println(ns);
		int c  = s.length()-s.replace("a", "").length();
		System.out.println(c);
	}
	
	public void stringReverse(){
		String s = "My name is java";
		StringBuffer sb = new StringBuffer(s);
		System.out.println(sb.reverse());
	}
	
	public void removeSpaces(){
		String ns = str.replace(" ", "");
		System.out.println(ns);
	}
	
	public void isCharDup(){
		char[] ch = str.toCharArray();
		HashMap<Character,Integer> hm = new HashMap<Character,Integer>();
		for (char c : ch) {
			
		}
	}
	
	public static void main(String[] args) {
		LetterCount lc = new LetterCount();
		//lc.lettercount();
		//lc.stringReverse();
		lc.removeSpaces();
	}
	
}
