package kr.co.ham.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ham.beans.CommunityBean;
import kr.co.ham.beans.PageBeanOne;
import kr.co.ham.beans.UserBean;

@Repository
public class CommunityDao {
	
		@Autowired
		private SqlSessionTemplate sqlSessionTemplate;
	
		public void addContentInfo(CommunityBean writeContentBean) {
			
			sqlSessionTemplate.insert("com.addContentInfo", writeContentBean);

		}
		
		public List<CommunityBean> getContentList(RowBounds rowBounds){
			return sqlSessionTemplate.selectList("com.getContentList", null, rowBounds);
		}
		
		public List<CommunityBean> getContentSearch(RowBounds rowBounds, String keyword, String searchType){
			
			HashMap<String, Object> searchData = new HashMap<String, Object>();
			
			searchData.put("keyword", keyword);
			searchData.put("searchType", searchType);
			
			return sqlSessionTemplate.selectList("com.getContentSearch", searchData,  rowBounds);
		}
		
		public CommunityBean getContentInfo(int com_key) {
			return sqlSessionTemplate.selectOne("com.getContentInfo", com_key);
		}
		
		public void modifyContentInfo(CommunityBean modifyContentBean) {
			 sqlSessionTemplate.update("com.modifyContentInfo", modifyContentBean);
		}
		
		public void deleteContentInfo(int com_key) {
			sqlSessionTemplate.delete("com.deleteContentInfo", com_key);
		}
		
		public int getContentCnt() {
			
			return sqlSessionTemplate.selectOne("com.getContentCnt");
		}
		
public int getContentCntSearch(String searchType, String keyword) {
			
			HashMap<String,Object> cntData = new HashMap<String,Object>();
			
			cntData.put("searchType", searchType);
			cntData.put("keyword", keyword);
			
			return sqlSessionTemplate.selectOne("com.getContentCntSearch", cntData);
		}
}
