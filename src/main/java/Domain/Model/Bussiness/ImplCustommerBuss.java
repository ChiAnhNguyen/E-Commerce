package Domain.Model.Bussiness;

import Domain.Model.Custommer;
import Persistence.DAO.ICustommerDAO;
import Persistence.DAO.Impl.ImpCustommerDAO;

public class ImplCustommerBuss implements IcustommerBuss {
	private ICustommerDAO custommerDAO = new ImpCustommerDAO() ;
	@Override
	public Custommer getCustommerbyID(String email, String password) {
		
		return custommerDAO.getCustomerByID(email,password);
	}

	

}
