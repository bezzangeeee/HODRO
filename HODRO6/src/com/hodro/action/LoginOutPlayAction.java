package com.hodro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginOutPlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="index.bizpoll"; //jsp는 화면단만 출력 <-model데이터 x
		
		//Session을 가져옴 
		HttpSession session = request.getSession();
		
		if(session !=null) {
			//session 초기화 => 로그인 정보 삭제
			session.invalidate();
		}
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}
	
}
