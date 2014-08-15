package org.minerquimwebapp.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class Mail {

	@Autowired
	private JavaMailSender javaMailSender;

	public Mail() {
	}

	public void sendMail(String from, String[] to, String subject, String msg) {

		SimpleMailMessage message = new SimpleMailMessage();

		// sendToList[0] = "dcubas16@gmail.com";
		// sendToList[1] = "dcubas16@hotmail.com";

		message.setFrom(from);
		message.setTo(to);
		message.setSubject(subject);
		message.setText(msg);
		javaMailSender.send(message);
	}
	//
	// public void sendMail(String from1, String[] to, String subject, String
	// msg) {
	// try {
	// String host = "smtp.gmail.com";
	// String from = "dcubas16@gmail.com";
	// String pass = "Incubas61";
	// Properties props = System.getProperties();
	// props.put("mail.smtp.starttls.enable", "true");
	// props.put("mail.smtp.host", host);
	// props.put("mail.smtp.user", from);
	// props.put("mail.smtp.password", pass);
	// props.put("mail.smtp.port", "587");
	// props.put("mail.smtp.auth", "true");
	// props.put("mail.debug", "true");
	//
	// Session session = Session.getDefaultInstance(props, new
	// GMailAuthenticator(from, pass));
	// MimeMessage message = new MimeMessage(session);
	//
	// Address fromAddress = new InternetAddress(from);
	// Address toAddress = new InternetAddress("dcubas16@hotmail.com");
	//
	// message.setFrom(fromAddress);
	// message.setRecipient(Message.RecipientType.TO, toAddress);
	//
	// message.setSubject(subject);
	// message.setText(msg);
	//
	// Transport transport = session.getTransport("smtp");
	// transport.connect(host, from, pass);
	// message.saveChanges();
	// Transport.send(message);
	// transport.close();
	//
	// }catch(Exception ex){
	//
	// System.out.println("<html><head></head><body>");
	// System.out.println("ERROR: " + ex);
	// System.out.println("</body></html>");
	// }
	// }
}
