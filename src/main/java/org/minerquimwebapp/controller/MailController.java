package org.minerquimwebapp.controller;

import org.minerquimwebapp.mail.Mail;
import org.minerquimwebapp.model.EmailMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("Mail")
public class MailController {

	@Autowired
	private Mail mail;

	@RequestMapping(value = "sendMail.htm", method = RequestMethod.GET)
	public String sendMail(
			@ModelAttribute("emailSender") EmailMessage emailMessage) {
		
		String[] sendToList = new String[2];
		sendToList[0] = "dcubas16@hotmail.com";
		sendToList[1] = "dcubas16@hotmail.com";

		String newMessage = emailMessage.getEmailMessage();

		if (!emailMessage.getName().trim().isEmpty()) {
			newMessage = emailMessage.getName() + ":"
					+ emailMessage.getEmailMessage();
		}

		mail.sendMail(emailMessage.getEmailAddress(), sendToList,
				"CONSULTA DE CLIENTES", newMessage);
		return "redirect:/contact.htm";
	}

}