package com.mytf.HelpCenter.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class ContactController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return "/fg_contact.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
