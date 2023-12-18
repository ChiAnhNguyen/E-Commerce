package Domain.Model.Bussiness;

import Domain.Model.Custommer;

public interface IcustommerBuss {
	

	public Custommer getCustommerbyID(String email, String password);
	
}
