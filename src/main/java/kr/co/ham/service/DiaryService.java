package kr.co.ham.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import kr.co.ham.beans.DiaryBean;
import kr.co.ham.beans.PageBeanTwo;
import kr.co.ham.beans.UserBean;
import kr.co.ham.dao.DiaryDao;

@Service
public class DiaryService {
	
		@Value("${path.upload}")
		private String path_upload;
	
		@Value("${page.listcnt}")
		private int page_listcnt;
		
		@Value("${page.paginationcnt}")
		private int page_paginationcnt;
	
		@Autowired
		private DiaryDao diaryDao;
		
		@Resource(name = "loginUserBean")
		@Lazy
		private UserBean loginUserBean;
		
		public void addDiaryContent(DiaryBean addDiaryBean) {
			
			addDiaryBean.setDia_writer_index(loginUserBean.getUser_key());
			
			diaryDao.addDiaryContent(addDiaryBean);
		}
		
		public List<DiaryBean> getDiaryList(int dia_writer_index, int page){
			
			int start = (page - 1) * page_listcnt;
			RowBounds rowBounds = new RowBounds(start, page_listcnt);
			
			return diaryDao.getDiaryList(dia_writer_index, rowBounds);
		}
		
		public PageBeanTwo getContentCnt(int currentPage, int dia_writer_index) {
			
			int diary_cnt = diaryDao.getDiaryCnt(dia_writer_index);
			PageBeanTwo pageBean = new PageBeanTwo(diary_cnt, currentPage, page_listcnt, page_paginationcnt);
			
			return pageBean;
		}

		public DiaryBean getDiaryInfo(int dia_key) {
			return diaryDao.getDiaryInfo(dia_key);
		}
		
		public void modifyDiaryInfo(DiaryBean modifyDiaryBean) {
			
			diaryDao.modifyDiaryInfo(modifyDiaryBean);
		}
		
		public void deleteDiaryInfo(int dia_key) {
			diaryDao.deleteDiaryInfo(dia_key);
		}
}
