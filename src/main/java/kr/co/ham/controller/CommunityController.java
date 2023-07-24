package kr.co.ham.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.ham.beans.CommunityBean;
import kr.co.ham.beans.PageBeanOne;
import kr.co.ham.beans.PageBeanTwo;
import kr.co.ham.beans.UserBean;
import kr.co.ham.service.CommunityService;

@Controller
@RequestMapping("/community")
public class CommunityController {
	
		@Autowired
		private CommunityService communityService;

		@Resource(name = "loginUserBean")
		@Lazy
		private UserBean loginUserBean;
	
		@GetMapping("/community_main")
		public String main(@RequestParam(value = "page", defaultValue = "1") int page,  Model model) {
			
			List<CommunityBean> contentList = communityService.getContentList(page);
			model.addAttribute("contentList", contentList);
			
			PageBeanTwo pageBeanTwo = communityService.getContentCnt(page);
			model.addAttribute("pageBeanTwo", pageBeanTwo);
			
			return "community/community_main";
		}
		
		@GetMapping("/search")
		public void getContentSearch(@RequestParam(value = "page", defaultValue = "1") int page,
													@RequestParam("keyword") String keyword, 
													@RequestParam("searchType") String searchType,
													Model model) {
			
			List<CommunityBean> contentList = communityService.getContentList(page);
			model.addAttribute("contentList", contentList);
			
			PageBeanTwo pageBeanTwo = communityService.getContentCnt(page);
			model.addAttribute("pageBeanTwo", pageBeanTwo);
			
			List<CommunityBean> searchList = communityService.getContentSearch(page, keyword,searchType);
			model.addAttribute("searchList", searchList);
			
			PageBeanTwo pageBeanThree = communityService.getContentCntSearch(page, searchType, keyword);
			model.addAttribute("pageBeanThree", pageBeanThree);
			
			PageBeanOne pageBeanOne = new PageBeanOne();
			pageBeanOne.setKeyword(keyword);
			pageBeanOne.setSearchType(searchType);
			model.addAttribute("pageBeanOne", pageBeanOne);
			
		}
		
		@GetMapping("/community_read")
		public String community_read(@RequestParam("com_key") int com_key, Model model) {
			
			model.addAttribute("com_key", com_key);
			
			CommunityBean readContentBean = communityService.getContentInfo(com_key);
			model.addAttribute("readContentBean", readContentBean);
			
			model.addAttribute("loginUserBean", loginUserBean);
			
			return "community/community_read";
		}
		
		@GetMapping("/community_write")
		public String community_write(@ModelAttribute("writeContentBean") CommunityBean writeContentBean) {
			
			return "community/community_write";
		}
		
		
		@PostMapping("/community_write_pro")
		public String community_write_pro(@Valid @ModelAttribute("writeContentBean") CommunityBean writeContentBean, BindingResult result ) {
			if(result.hasErrors()) {
				return "community/community_write";
			}
			
			communityService.addContentInfo(writeContentBean);
			
			return "community/write_success";
		}
		
		@GetMapping("/not_writer")
		public String not_writer() {
			return "community/not_writer";
		}
		
		@GetMapping("/community_modify")
		public String community_modify(@RequestParam("com_key") int com_key, Model model,
																@ModelAttribute("modifyContentBean") CommunityBean modifyContentBean) {
			
			model.addAttribute("com_key", com_key);
			
			CommunityBean tempContentBean = communityService.getContentInfo(com_key);
			
			modifyContentBean.setCom_writer_name(tempContentBean.getCom_writer_name());
			modifyContentBean.setCom_date(tempContentBean.getCom_date());
			modifyContentBean.setCom_title(tempContentBean.getCom_title());
			modifyContentBean.setCom_content(tempContentBean.getCom_content());
			modifyContentBean.setCom_file(tempContentBean.getCom_file());
			modifyContentBean.setCom_writer_index(tempContentBean.getCom_writer_index());
			modifyContentBean.setCom_key(com_key);
			
			return "community/community_modify";
		}
		
		@PostMapping("/modify_pro")
		public String modify_pro(@Valid @ModelAttribute("modifyContentBean") CommunityBean modifyContentBean, BindingResult result) {
				
				if(result.hasErrors()) {
					return "community/community_modify";
				}
				
				communityService.modifyContentInfo(modifyContentBean);
				
				return"community/modify_success";
		}
		
		@GetMapping("/community_delete")
		public String community_delete(@RequestParam("com_key") int com_key) {
			
			communityService.deleteContentInfo(com_key);
			
			return "community/community_delete";
		}
		
}
