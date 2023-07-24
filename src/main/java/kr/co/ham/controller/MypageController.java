package kr.co.ham.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.co.ham.beans.UserBean;
import kr.co.ham.service.MypageService;

@Controller
@RequestMapping("/mypage")
public class MypageController {

		@Autowired
		MypageService mypageService;
	
		@GetMapping("/mypage_main")
		public String mypage_main(@ModelAttribute("modifyUserBean") UserBean modifyUserBean,  Model model) {
			
			mypageService.getModifyMypage(modifyUserBean);
			
			return "mypage/mypage_main";
		}
		
		@PostMapping("/mypage_pro")
		public String mypage_pro(@Valid @ModelAttribute("modifyUserBean") UserBean modifyUserBean, BindingResult result) {
			
			if(result.hasErrors()) {
				return "mypage/mypage_main";
			}
			
			mypageService.modifyMypageInfo(modifyUserBean);
			
			return "mypage/modify_success";
		}
		
}
