package org.minerquimwebapp.mail;

import javax.mail.PasswordAuthentication;
import javax.mail.Authenticator;

import org.springframework.stereotype.Service;

public class GMailAuthenticator extends Authenticator{

	private String userName;
	private String userPassword;
	
	public GMailAuthenticator(String userName,
	String userPassword) {
		this.userName = userName;
		this.userPassword = userPassword;
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(getUserName(), getUserPassword());
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
}
