package kr.co.jhta.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.jhta.dao.RoleDao;
import kr.co.jhta.vo.User;

// 인증여부를 체크하는 인터셉터
// 이미 가입을 했고, 정상적인 로그인 과정을 통과한 사용자
public class AuthenticationInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	RoleDao roleDao;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	
		String requestURI = request.getRequestURI();
		List<String> reqRoles = roleDao.getRolesByUrl(requestURI);
		request.setAttribute("reqRoles", reqRoles);
		
		if (!reqRoles.isEmpty()) {
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("LOGIN_USER");
			if (user == null) {
				response.sendRedirect("/signin.do?error=deny");
				return false;
			} 
			request.setAttribute("auth", "pass");
			request.setAttribute("hasRoles", user.getRoles());
		} else {
			request.setAttribute("auth", "skip");
		}
		
		return true;
	}
	
}






