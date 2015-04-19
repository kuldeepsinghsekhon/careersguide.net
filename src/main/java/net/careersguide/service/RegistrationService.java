package net.careersguide.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import net.careersguide.entity.Role;
import net.careersguide.entity.User;

import net.careersguide.repository.RoleRepository;
import net.careersguide.repository.UserRepository;
@Service
public class RegistrationService {
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private SendEmailService sendEmailService;
	 private static final int EXPIRATION = 60 * 24;
	 
	public void saveUser(User user) {
		List<Role>roles =new ArrayList<Role>();
		user.setEnabled(true);
		roles.add(roleRepository.findByName("ROLE_USER"));
		user.setRoles(roles);
		String token = UUID.randomUUID().toString();
        user.setToken(token);
        
        String recipientAddress = user.getEmail();
        String subject = "Registration Confirmation";
        String confirmationUrl =  "/regitrationConfirm.html?token=" + token;
        String message="Please click on link to complete Registration";
        String mailBody= message + " rn" + "http://localhost:8080" + confirmationUrl;
       
        sendEmailService.sendRegistrationMail(recipientAddress, subject, mailBody);
        userRepository.save(user);
       
	}
	
	public void saveCorp(User usercorp) {
		List<Role>roles =new ArrayList<Role>();
		usercorp.setEnabled(true);
		roles.add(roleRepository.findByName("ROLE_CORP"));
		usercorp.setRoles(roles);
		String token = UUID.randomUUID().toString();
		usercorp.setToken(token);
        
        String recipientAddress = usercorp.getEmail();
        String subject = "Registration Confirmation";
        String confirmationUrl =  "/regitrationConfirm.html?token=" + token;
        String message="Please click on link to complete Registration";
        String mailBody= message + " rn" + "http://localhost:8080" + confirmationUrl;
       
        sendEmailService.sendRegistrationMail(recipientAddress, subject, mailBody);
		userRepository.save(usercorp);
	}
	
	private Date calculateExpiryDate(int expiryTimeInMinutes) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(new Timestamp(cal.getTime().getTime()));
        cal.add(Calendar.MINUTE, expiryTimeInMinutes);
        return new Date(cal.getTime().getTime());
    }
	
}
