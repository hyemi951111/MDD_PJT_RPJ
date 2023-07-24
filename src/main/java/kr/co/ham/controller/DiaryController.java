package kr.co.ham.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import kr.co.ham.beans.DiaryBean;
import kr.co.ham.beans.PageBeanTwo;
import kr.co.ham.beans.UserBean;
import kr.co.ham.service.DiaryService;

@Controller
@RequestMapping("/diary")
public class DiaryController {

		@Autowired
		private DiaryService diaryService;
	
		@Resource(name = "loginUserBean")
		@Lazy
		private UserBean loginUserBean;
		
		@GetMapping("/diary_main")
		public String diary_main(@ModelAttribute("addDiaryBean") DiaryBean addDiaryBean, Model model) {
			
			addDiaryBean.setDia_writer_index(loginUserBean.getUser_key());
			
			model.addAttribute("addDiaryBean", new DiaryBean());
			
			return "diary/diary_main";
		}
		
		@GetMapping("/diary_list")
		public String diary_list(@RequestParam("dia_writer_index") int dia_writer_index, 
											  @RequestParam(value = "page", defaultValue = "1") int page,
											  Model model, DiaryBean listDiaryBean) {
			
				listDiaryBean.setDia_writer_index(loginUserBean.getUser_key());
				
				model.addAttribute("loginUserBean", loginUserBean);
				model.addAttribute("listDiaryBean", new DiaryBean());
				
				dia_writer_index = listDiaryBean.getDia_writer_index();
				
				model.addAttribute("dia_writer_index", dia_writer_index);
			
				List<DiaryBean> diaryList = diaryService.getDiaryList(dia_writer_index, page);
			
				model.addAttribute("diaryList", diaryList);
				
				PageBeanTwo pageBeanTwo = diaryService.getContentCnt(page, dia_writer_index);
				model.addAttribute("pageBeanTwo", pageBeanTwo);
				
			return "diary/diary_list";
		}
		
		@GetMapping("/diary_modify")
		public String diary_modify(@RequestParam("dia_key") int dia_key, @ModelAttribute("modifyDiaryBean") DiaryBean modifyDiaryBean, Model model) {
			
			model.addAttribute("dia_key", dia_key);
			
			DiaryBean tempDiaryBean = diaryService.getDiaryInfo(dia_key);
			
			modifyDiaryBean.setDia_title(tempDiaryBean.getDia_title());
			modifyDiaryBean.setDia_walk(tempDiaryBean.getDia_walk());
			modifyDiaryBean.setDia_weather(tempDiaryBean.getDia_weather());
			modifyDiaryBean.setDia_content(tempDiaryBean.getDia_content());
			modifyDiaryBean.setDia_writer_index(tempDiaryBean.getDia_writer_index());
			modifyDiaryBean.setDia_key(dia_key);
			
			return "diary/diary_modify";
		}
		
		@PostMapping("/diary_modify_pro")
		public String modify_pro(@ModelAttribute("modifyDiaryBean") DiaryBean modifyDiaryBean) {
		
			diaryService.modifyDiaryInfo(modifyDiaryBean);
			
			return "diary/modify_success";
		}
		
		@GetMapping("/diary_write")
		public String diary_write(@ModelAttribute("addDiaryBean") DiaryBean addDiaryBean, Model model) {
			
			model.addAttribute("addDiaryBean", new DiaryBean());
			
			return "diary/diary_write";
		}
		
		@PostMapping("/diary_write_pro")
		public String diary_write_pro(@ModelAttribute("addDiaryBean") DiaryBean addDiaryBean) {
			
			diaryService.addDiaryContent(addDiaryBean);
			
			return "diary/write_success";
		}
		
		@GetMapping("/diary_delete")
		public String diary_delete(@RequestParam("dia_key") int dia_key) {
			
			diaryService.deleteDiaryInfo(dia_key);
			
			return "diary/diary_delete";
		}
		
		@GetMapping("/diary_read")
		public String diary_read(@RequestParam("dia_key") int dia_key, Model model) {
			
			model.addAttribute("dia_key", dia_key);
			
			DiaryBean readDiaryBean = diaryService.getDiaryInfo(dia_key);
			model.addAttribute("readDiaryBean", readDiaryBean);
			
			model.addAttribute("loginUserBean", loginUserBean);
			
			return "diary/diary_read";
		}
		
}
