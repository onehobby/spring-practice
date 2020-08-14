package com.sample.web.controller;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@SessionAttributes("state")
public class LoginController {

	@GetMapping("/signin")
	public String signin(Model model, RedirectAttributes redirectAttributes) {
		String state = this.generateState();
		model.addAttribute("state", state);
		
		redirectAttributes.addAttribute("client_id", "클라이언트 아이디");
		redirectAttributes.addAttribute("response_type", "code");
		redirectAttributes.addAttribute("redirect_uri", "http://localhost/login");
		redirectAttributes.addAttribute("state", state);
		
		return "redirect:https://nid.naver.com/oauth2.0/authorize";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("state") String state, 
			@RequestParam("code") String code, 
			@ModelAttribute("state") String storedState) {
		
		System.out.println("state: " + state);
		System.out.println("storedState: " + storedState);
		
		if (!state.equals(storedState)) {
			return "redirect:/loginfail";
		} else {
			System.out.println("사용자 인증 완료");
			final String url = "https://nid.naver.com/oauth2.0/token";
			Map<String, String> params = new HashMap<String, String>();
			params.put("client_id", "클라이언트 아이디");
			params.put("client_secret", "클라이언트 시크릿 아이디");
			params.put("grant_type", "authorization_code");
			params.put("state", state);
			params.put("code", code);
			
			RestTemplate restTemplate = new RestTemplate();
			String jsonText = restTemplate.getForObject(url, String.class, params);
			
			System.out.println(jsonText);
			
		
			return null;
		}
	}
	
	private String generateState() {
		SecureRandom random = new SecureRandom();
		return new BigInteger(130, random).toString(32);
	}

	public static class NaverAccessToken {
		private String access_token;
		private String refresh_token;
		private String token_type;
		private String expires_in;
		
		public NaverAccessToken() {}

		public String getAccess_token() {
			return access_token;
		}

		public void setAccess_token(String access_token) {
			this.access_token = access_token;
		}

		public String getRefresh_token() {
			return refresh_token;
		}

		public void setRefresh_token(String refresh_token) {
			this.refresh_token = refresh_token;
		}

		public String getToken_type() {
			return token_type;
		}

		public void setToken_type(String token_type) {
			this.token_type = token_type;
		}

		public String getExpires_in() {
			return expires_in;
		}

		public void setExpires_in(String expires_in) {
			this.expires_in = expires_in;
		}

		@Override
		public String toString() {
			return "NaverAccessToken [access_token=" + access_token + ", refresh_token=" + refresh_token
					+ ", token_type=" + token_type + ", expires_in=" + expires_in + "]";
		}
		
		
	}
}
