package kr.co.jhta.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.jhta.dao.RoleDao;
import kr.co.jhta.vo.User;

// 인증된 사용자가 해당 페이지에 대한 접근권한을 가지고 있는지 체크한다
public class AuthorizationInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String auth = (String) request.getAttribute("auth");
		
		if ("pass".equals(auth)) {
			List<String> reqRoles = (List<String>) request.getAttribute("reqRoles");
			List<String> hasRoles = (List<String>) request.getAttribute("hasRoles");
			
			if (!canAccess(reqRoles, hasRoles)) {
				response.sendRedirect("/signin.do?error=role");
				return false;
			}
		}
		
		return true;
	}
	
	private boolean canAccess(List<String> reqRoles, List<String> hasRoles) {
		
		for (String role : hasRoles) {
			if (reqRoles.contains(role)) {
				return true;
			}
		}
		return false;
	}
}










