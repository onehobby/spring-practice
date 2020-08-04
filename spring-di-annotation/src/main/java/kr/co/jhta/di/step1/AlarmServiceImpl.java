package kr.co.jhta.di.step1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jhta.di.MessageSender;

@Service
public class AlarmServiceImpl implements AlarmService {

	@Autowired
	private MessageSender messageSender;
	
	@Override
	public void alarm(String message) {
		messageSender.send("소방서", "인근 주민", "화재 안내", message);
	}
}
