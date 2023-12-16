package Persistence.DAO;

import java.util.ArrayList;
import java.util.List;
public interface ICustommerDAO<E> {

    
 
	void updateAccount();
	void newAccount();
	List<E> getAccount(String customer_id);
	void deleteAccount();
	ArrayList<E> getAllAccount();

}
