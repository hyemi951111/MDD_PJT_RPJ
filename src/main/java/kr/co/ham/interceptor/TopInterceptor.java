package kr.co.ham.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Lazy;
import org.springframework.web.servlet.HandlerInterceptor;
import kr.co.ham.beans.UserBean;

public class TopInterceptor implements HandlerInterceptor{

		@Resource(name = "loginUserBean")
		@Lazy
		private UserBean loginUserBean;
		
		@Override
		public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		request.setAttribute("loginUserBean", loginUserBean);
			
		return true;
		}
}
