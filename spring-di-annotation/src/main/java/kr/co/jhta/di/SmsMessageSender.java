package kr.co.jhta.di;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("sms")
public class SmsMessageSender implements MessageSender {

	@Value("${message.sender.sms.company}")
	private String company;
	
	@Override
	public void send(String from, String to, String subject, String content) {
		System.out.println("["+company+"] 통신사를 활용한다.");
		System.out.println("SMS 발신자: " + from);
		System.out.println("SMS 수신자: " + to);
		System.out.println("SMS 제  목: " + subject);
		System.out.println("SMS 내  용: " + content);
	}
}
