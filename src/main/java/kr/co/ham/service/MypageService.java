package kr.co.ham.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import kr.co.ham.beans.UserBean;
import kr.co.ham.dao.MypageDao;

@Service
public class MypageService {

		@Autowired
		MypageDao mypageDao;
		
		@Resource(name = "loginUserBean")
		@Lazy
		private UserBean loginUserBean;
		
		public void getModifyMypage(UserBean modifyUserBean) {
			
			UserBean mypageModifyUserBean = mypageDao.getModifyMypage(loginUserBean.getUser_key());
			
			modifyUserBean.setUser_key(loginUserBean.getUser_key());
			modifyUserBean.setUser_name(mypageModifyUserBean.getUser_name());
			modifyUserBean.setUser_id(mypageModifyUserBean.getUser_id());
			modifyUserBean.setUser_pw(mypageModifyUserBean.getUser_pw());
			modifyUserBean.setUser_phone(mypageModifyUserBean.getUser_phone());
			modifyUserBean.setUser_email(mypageModifyUserBean.getUser_email());
		}
		
		public void modifyMypageInfo(UserBean modifyUserBean) {
			
			modifyUserBean.setUser_key(loginUserBean.getUser_key());
			
			mypageDao.modifyMypageInfo(modifyUserBean);
		}
		
}
