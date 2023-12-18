package Persistence.DAO;

import Domain.Model.Custommer;

public interface ICustommerDAO {
	public Custommer getCustomerByID(String email, String pasword);
	
}
