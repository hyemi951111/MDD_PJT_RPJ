package kr.co.ham.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.ham.beans.DiaryBean;

@Repository
public class DiaryDao {

		@Autowired
		private SqlSessionTemplate sqlSessionTemplate;
		
		public void addDiaryContent(DiaryBean addDiaryBean) {
			sqlSessionTemplate.insert("dia.addDiaryContent", addDiaryBean);
		}
		
		public List<DiaryBean> getDiaryList(int dia_writer_index, RowBounds rowBounds){
			return sqlSessionTemplate.selectList("dia.getDiaryList", dia_writer_index, rowBounds);
		}
		
		public int getDiaryCnt(int dia_writer_index) {	
			return sqlSessionTemplate.selectOne("dia.getDiaryCnt", dia_writer_index);
		}
		
		public DiaryBean getDiaryInfo(int dia_key) {
			return sqlSessionTemplate.selectOne("dia.getDiaryInfo", dia_key);
		}
		
		public void modifyDiaryInfo(DiaryBean modifyDiaryBean) {
			sqlSessionTemplate.update("dia.modifyDiaryInfo", modifyDiaryBean);
		}
		
		public void deleteDiaryInfo(int dia_key) {
			sqlSessionTemplate.delete("dia.deleteDiaryInfo", dia_key);
		}
}
