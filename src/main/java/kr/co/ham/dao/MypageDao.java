package kr.co.ham.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.ham.beans.UserBean;

@Repository
public class MypageDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public UserBean getModifyMypage(int user_key) {
		return sqlSessionTemplate.selectOne("myp.getModifyMypage", user_key);
	}
	
	public void modifyMypageInfo(UserBean modifyUserBean) {
		sqlSessionTemplate.update("myp.modifyMypageInfo", modifyUserBean);
	}
	
}
