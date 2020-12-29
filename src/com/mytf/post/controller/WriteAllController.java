package com.mytf.post.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class WriteAllController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/* 1. 글쓰기화면 보여주기 - write.jsp
		 /board/write.do => WriteController
		  => write.jsp 
		*/
		//1. 요청 파라미터 읽어오기
		String projectNo = request.getParameter("projectNo");
		String memberNo = request.getParameter("memberNo");
		//2. 디비작업
		//3. 저장
		//4.뷰페이지 포워드
		return "/post/write_all.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}