import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;


public class ValidateUser {

	public static boolean validate(String uname, String pass) {
		Map<String,String> u= getUsers();
		Iterator it = u.entrySet().iterator();
		while(it.hasNext()) {
			Map.Entry element = (Map.Entry) it.next();
			if(pass.equals(element.getValue()) && uname.equals(element.getKey())) {
				return true;
			}
			
		}
		return false;
	}



	private static Map<String, String> getUsers() {
		Map<String,String> users = new HashMap<>();
		users.put("Ravi","Ravi");
		users.put("rupasi","rupasi");
		users.put("vinodh","vinodh");
		users.put("ankesh","ankesh");
		
		return users;
	}
}
