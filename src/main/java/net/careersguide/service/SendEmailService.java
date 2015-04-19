package net.careersguide.service;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.URLName;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



@Service
public class SendEmailService {

	@Value("${mail.smtp}")
	private String smtp;
	
	@Value("${mail.username}")
	private String username;

	@Value("${mail.password}")
	private String password;

	@Value("${mail.port}")
	private String port;

	


	private static final Logger logger = LoggerFactory.getLogger(SendEmailService.class);


	@Async
	@Transactional	
public void sendRegistrationMail(String recipientAddress,String mailSubject,String mailBody){
	
	final String from = "admin@Careersguide.net";
	final String subject = mailSubject;
	final String body = mailBody;
	final String to = recipientAddress;
	logger.info("start sending email to: " + to);
	
	try {
		
				
			Properties props = System.getProperties();
			props.setProperty("mail.transport.protocol", "smtp");
			props.setProperty("mail.smtp.host", smtp);
			 props.put("mail.smtp.auth","true");
			props.setProperty("mail.smtp.port", String.valueOf(port));
			props.setProperty("mail.smtp.user", username);
			final Session session = Session.getInstance(props, null);
			session.setPasswordAuthentication(new URLName("smtp", smtp, -1, null, username,password), new PasswordAuthentication(username, password));
			try {
				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress(from));
				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
				message.setSubject(subject);
				message.setText(body);

				Transport.send(message);
				
			} catch (MessagingException ex) {
				
			}
		
		
		
	} catch (RuntimeException ex) {
		throw new RuntimeException("could not send email", ex);
	} finally {
		//email.setSent(true);
		//emailRepository.save(email);
		
	}
		
	}
	
	
	
}
