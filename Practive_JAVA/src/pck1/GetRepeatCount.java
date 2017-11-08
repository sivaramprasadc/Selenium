package pck1;

import java.util.HashMap;
import java.util.Set;

public class GetRepeatCount {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HashMap<Character,Integer> hm=new HashMap<Character,Integer>(); 
		//new HashSet<String>();
		String s = "india";
		char[] ch = s.toCharArray();
		for (int i = 0; i < ch.length; i++) {
			if (hm.containsKey(ch[i])){
				hm.put(ch[i], hm.get(ch[i])+1);
			}else{
				hm.put(ch[i], 1);
			}			
		}
		//System.out.println(hm);		
		Set<Character> ite = hm.keySet();
		System.out.println(ite);
		for (Character character : ite) {
			if (hm.get(character)>1){
				System.out.println(character+"-->"+hm.get(character));
			}
		}
	}
}
