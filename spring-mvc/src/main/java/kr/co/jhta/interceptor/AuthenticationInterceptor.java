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
		/*
		 * 1. 요청 URL 정보를 조회한다.
		 * 2. 해당 URL에 접근하기 위한 접근권한을 조회한다.
		 * 3. 접근권한이 없으면
		 * 		다음 인터셉터 혹은 컨트롤러가 실행되도록한다.
		 * 4. 접근권한이 있으면
		 * 		로그인된 사용자인지 확인하고, 
		 * 			로그인된 사용자라면 다음 인터셉터 혹은 컨트롤러가 실행되도록한다.
		 * 			로그인된 사용자가 아니라면 로그인 폼 페이지로 이동시키다.\
		 * * 결론
		 * 		접근권한이 요구되는 URL 요청인데, 로그인된 사용자가 아니라면 
		 * 	    로그인 페이지로 이동시킨다.
		 */		
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






