package egovframework.example.security;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("userAuthDAO")
public class UserAuthDAO extends EgovAbstractDAO {
	
	public CustomUserDetails getUserById(String user_id) {
		return (CustomUserDetails) select("securityDAO.selectUser",user_id);
	}
	
}
