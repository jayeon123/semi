package com.mytf.detail.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class DetailOptionController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return "/detailPage_REAL/detail_option.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
