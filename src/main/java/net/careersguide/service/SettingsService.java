package net.careersguide.service;

import java.util.UUID;

import net.careersguide.entity.User;
import net.careersguide.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
@Service
public class SettingsService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private SendEmailService sendEmailService;
	 private static final int EXPIRATION = 60 * 24;
	
	public void changePassword(String name, String password) {
		BCryptPasswordEncoder encoder =new BCryptPasswordEncoder();
		User user=userRepository.findByEmail(name);
		user.setPassword(encoder.encode(password));
		userRepository.save(user);
		
	}
	
	public void renewPasswordRequest(String email) {
		User user=userRepository.findByEmail(email);
		String token = UUID.randomUUID().toString().replaceAll("-", "");
        user.setPasswordResetToken(token);
        userRepository.save(user);
        String recipientAddress = email;
        String subject = "Password Change Request";
        String chagePasswordUrl =  "/passwordupdate.html?u="+user.getId()+"&token="+token;
        String message="Please click on Given link to Change The password";
        String mailBody= message + " <br/>" + "http://careersguide.in" + chagePasswordUrl;
        sendEmailService.sendRegistrationMail(recipientAddress, subject, mailBody);
	}

	
	public User userById(int id) {
		
		return userRepository.findOne(id);
	}
	/*public void changeForgotPassword(String email, String password) {
	User user=userRepository.findByEmail(email);
	BCryptPasswordEncoder encoder =new BCryptPasswordEncoder();
	user.setPassword(encoder.encode(password));
	userRepository.save(user);
	
}*/



}
