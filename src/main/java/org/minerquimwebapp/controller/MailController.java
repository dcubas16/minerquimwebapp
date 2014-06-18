package org.minerquimwebapp.controller;

import org.minerquimwebapp.mail.Mail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("Mail")
public class MailController {
	
	@Autowired
	private Mail mail;
	
	@RequestMapping(value="sendMail.htm", method=RequestMethod.GET )
	public String sendMail(Model model)
	{
		mail.sendMail("dcubas16@gmail.com", "dcubas16@gmail.com", "Prueba", "Hola Esto es una Prueba");
		return "redirect:/contact.htm";
	}
	
}