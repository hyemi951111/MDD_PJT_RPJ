package kr.co.ham.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.ham.beans.UserBean;
import kr.co.ham.service.UserService;
import kr.co.ham.validator.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {
	
		@Autowired
		private UserService userService;
		
		@Resource(name = "loginUserBean")
		@Lazy
		private UserBean loginUserBean;
	
		@GetMapping("/login")
		public String login(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean) {
			
			return "user/login";
		}
		
		@PostMapping("/login_pro")
		public String login_pro(@Valid @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean, BindingResult result) {
			
			if(result.hasErrors()) {
				return "user/login";
			}
			
			userService.getLoginUserInfo(tempLoginUserBean);
			
			if(loginUserBean.isUserLogin() == true) {
				return "user/login_success";
			}else {
				return "user/login_fail";
			}
		}
		
		@GetMapping("/join")
		public String join(@ModelAttribute("UserBeanjoin") UserBean UserBeanjoin) {
			return "user/join";
		}
		
		@PostMapping("/join_pro")
		public String join_pro(@Valid @ModelAttribute("UserBeanjoin") UserBean UserBeanjoin, BindingResult result) {
			if(result.hasErrors()) {
				return "user/join";
			}
			
			userService.addUserInfo(UserBeanjoin);
			
			return "user/join_success";
		}
		
		@GetMapping("/logout")
		public String logout() {
			
			loginUserBean.setUserLogin(false);
			
			return "user/logout";
		}
		
		@GetMapping("/not_login")
		public String not_login() {
			return "user/not_login";
		}
		
		@GetMapping("/find_id")
		public String find_id(@Valid @ModelAttribute("findIdBean") UserBean findIdBean, BindingResult result) {
			
			return "user/find_id";
		}
		
		@PostMapping("/find_id_pro")
		public String find_id_pro(@ModelAttribute("findIdBean") UserBean findIdBean, Model model) {
			
			UserBean findIdBeanSet = userService.findId(findIdBean);
			model.addAttribute("findIdBeanSet", findIdBeanSet);
			
			return "user/find_id_result";
		}
		
		@GetMapping("/find_id_result")
		public String find_id_result(@Valid @ModelAttribute("findIdBean") UserBean findIdBean, BindingResult result) {
			return "user/find_id_result";
		}
		
		@GetMapping("/find_pw")
		public String find_pw(@Valid @ModelAttribute("findPwBean") UserBean findPwBean, BindingResult result) {
			return "user/find_pw";
		}
		
		@PostMapping("/find_pw_pro")
		public String find_pw_pro(@ModelAttribute("findPwBean") UserBean findPwBean, Model model) {
			
			UserBean findPwBeanSet = userService.findPw(findPwBean);
			model.addAttribute("findPwBeanSet", findPwBeanSet);
			
			return "user/find_pw_result";
		}
		
		@GetMapping("/find_pw_result")
		public String find_pw_result(@Valid @ModelAttribute("findPwBean") UserBean findPwBean, BindingResult result) {
			return "user/find_pw";
		}
		
		@GetMapping("/withdrawal")
		public String withdrawal(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
				 								 @ModelAttribute("deleteUserBean") UserBean deleteUserBean,
													BindingResult result) {
			return "user/withdrawal";
		}
		
		@PostMapping("/withdrawal_pro")
		public String withdrawal_pro(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
												 UserBean deleteUserBean,
												 HttpSession session,
												 RedirectAttributes ra,
												 BindingResult result) {
			
			String user_pw_one = loginUserBean.getUser_pw();
			String user_pw_two = deleteUserBean.getUser_pw();
			
			if(!(user_pw_one.equals(user_pw_two))) {
				ra.addFlashAttribute("msg", false);
				return "redirect:/user/withdrawal";
			}
			
			userService.withdrawal(deleteUserBean);
			session.invalidate();
			
			return "user/withdrawal_success";
		}
		
		@InitBinder
		public void initBinder(WebDataBinder binder) {
			UserValidator validator1 = new UserValidator();
			binder.addValidators(validator1);
		}
		
}
