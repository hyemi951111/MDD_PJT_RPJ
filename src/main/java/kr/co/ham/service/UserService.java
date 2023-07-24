package kr.co.ham.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import kr.co.ham.beans.UserBean;
import kr.co.ham.dao.UserDao;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
	public boolean checkuserIdExist(String user_id) {
		
		String user_name = userDao.checkUserIdExist(user_id);
	
		if(user_name == null) {
			return true;
		} else {
			return false;
		}
	}
	
	public void addUserInfo(UserBean UserBeanjoin) {
		userDao.addUserInfo(UserBeanjoin);
	}
	
	public void getLoginUserInfo(UserBean tempLoginUserBean) {
		
		UserBean tempLoginUserBean2 = userDao.getLoginUserInfo(tempLoginUserBean);
		
		if(tempLoginUserBean2 != null) {
			loginUserBean.setUser_key(tempLoginUserBean2.getUser_key());
			loginUserBean.setUser_name(tempLoginUserBean2.getUser_name());
			loginUserBean.setUser_id(tempLoginUserBean2.getUser_id());
			loginUserBean.setUser_pw(tempLoginUserBean2.getUser_pw());
			loginUserBean.setUserLogin(true);
		}
	}
	
	public void withdrawal(UserBean deleteUserBean) {	
		userDao.withdrawal(deleteUserBean);	
	}
	
	public UserBean findId(UserBean findIdBean) {
		return userDao.findId(findIdBean);
	}
	
	public UserBean findPw(UserBean findPwBean) {
		return userDao.findPw(findPwBean);
	}
}











