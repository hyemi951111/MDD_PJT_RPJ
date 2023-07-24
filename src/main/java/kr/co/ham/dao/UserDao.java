package kr.co.ham.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ham.beans.UserBean;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public String checkUserIdExist(String user_id) {
		return sqlSessionTemplate.selectOne("user.checkUserIdExist", user_id);
	}
	public void addUserInfo(UserBean UserBeanjoin) {
		sqlSessionTemplate.insert("user.addUserInfo", UserBeanjoin);
	}
	public UserBean getLoginUserInfo(UserBean tempLoginUserBean) {
		return sqlSessionTemplate.selectOne("user.getLoginUserInfo", tempLoginUserBean);
	}
	public void withdrawal(UserBean deleteUserBean) {
		sqlSessionTemplate.delete("user.withdrawal", deleteUserBean);
	}
	public UserBean findId(UserBean findIdBean) {
		return sqlSessionTemplate.selectOne("user.findId", findIdBean);
	}
	public UserBean findPw(UserBean findPwBean) {
		return sqlSessionTemplate.selectOne("user.findPw", findPwBean);
	}
}
