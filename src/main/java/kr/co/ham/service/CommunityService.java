package kr.co.ham.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.ham.beans.CommunityBean;
import kr.co.ham.beans.PageBeanOne;
import kr.co.ham.beans.PageBeanTwo;
import kr.co.ham.beans.UserBean;
import kr.co.ham.dao.CommunityDao;


@Service
public class CommunityService {

		@Value("${path.upload}")
		private String path_upload;
	
		@Value("${page.listcnt}")
		private int page_listcnt;
		
		@Value("${page.paginationcnt}")
		private int page_paginationcnt;
		
		@Autowired
		CommunityDao communityDao;
		
		@Resource(name = "loginUserBean")
		@Lazy
		private UserBean loginUserBean;
	
		private String saveUploadFile(MultipartFile upload_file) {
			
			String file_name = System.currentTimeMillis()  +  "_"  + upload_file.getOriginalFilename();
			
			try {
				upload_file.transferTo(new File(path_upload + "/" + file_name));
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return file_name;
		}
		
		
		public void addContentInfo(CommunityBean writeContentBean) {
			
			MultipartFile upload_file = writeContentBean.getUpload_file();
			
			if(upload_file.getSize() > 0) {
				
					String file_name = saveUploadFile(upload_file);
					writeContentBean.setCom_file(file_name);
			}
			
			writeContentBean.setCom_writer_index(loginUserBean.getUser_key());
			
			communityDao.addContentInfo(writeContentBean);
		}
		
		public List<CommunityBean> getContentList(int page){
			
			int start = (page - 1) * page_listcnt;
			RowBounds rowBounds = new RowBounds(start, page_listcnt);
			
			return communityDao.getContentList(rowBounds);
		}
		
		public List<CommunityBean> getContentSearch(int page, String keyword, String searchType){
			
			int start = (page - 1) * page_listcnt;
			RowBounds rowBounds = new RowBounds(start, page_listcnt);
			
			return communityDao.getContentSearch(rowBounds,keyword,searchType);
		}
		
		
		
		public CommunityBean getContentInfo(int com_key) {
			return communityDao.getContentInfo(com_key);
		}
		
		public void modifyContentInfo(CommunityBean modifyContentBean) {
			
			MultipartFile upload_file = modifyContentBean.getUpload_file();
			
			if(upload_file.getSize() > 0) {
				String file_name = saveUploadFile(upload_file);
				modifyContentBean.setCom_file(file_name);
			}
			communityDao.modifyContentInfo(modifyContentBean);
		}
		
		public void deleteContentInfo(int com_key) {
			communityDao.deleteContentInfo(com_key);
		}
		
		public PageBeanTwo getContentCnt(int currentPage) {
			
			int content_cnt = communityDao.getContentCnt();
			PageBeanTwo pageBean = new PageBeanTwo(content_cnt, currentPage, page_listcnt, page_paginationcnt);
			
			return pageBean;
		}
		
		public PageBeanTwo getContentCntSearch(int currentPage, String searchType, String keyword) {
			
			int content_cnt = communityDao.getContentCntSearch(searchType, keyword);
			PageBeanTwo pageBeanSearch = new PageBeanTwo(content_cnt, currentPage, page_listcnt, page_paginationcnt);
			
			return pageBeanSearch;
		}
}
