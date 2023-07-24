package kr.co.ham.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.ham.beans.CommunityBean;
import kr.co.ham.beans.UserBean;
import kr.co.ham.service.CommunityService;

public class CheckWriterInterceptor implements HandlerInterceptor {

		@Resource(name = "loginUserBean")
		@Lazy
		private UserBean loginUserBean;
		
		@Autowired
		private CommunityService communityService;
		
		@Override
		public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
			
			String str1 = request.getParameter("com_key");
			int com_key = Integer.parseInt(str1);
			
			CommunityBean currentContentBean = communityService.getContentInfo(com_key);
			
			if(currentContentBean.getCom_writer_index() != loginUserBean.getUser_key()) {
				
					String contextPath = request.getContextPath();
					response.sendRedirect(contextPath + "/community/not_writer");
					return false;
			}			
		return true;
		}
}
