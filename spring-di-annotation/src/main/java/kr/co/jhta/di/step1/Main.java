package kr.co.jhta.di.step1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring/context-step1.xml");
		AlarmService service =  ctx.getBean(AlarmService.class);
		
		service.alarm("화재가 발생하였습니다.");
	}
}
