package com.hodro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hodro.dao.MemberDAO;
import com.hodro.dto.MemberDTO;

public class PwUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="";
				
		request.setCharacterEncoding("UTF-8"); //한글깨짐 방지
		//View단에서 전송한 데이터를 받아오세요. 
		
		//변경할 비밀 번호
		String id = request.getParameter("updateId");
		String npw = request.getParameter("input_npw");
		System.out.println("id:" + id);
		System.out.println("변경할 pw:" + npw);
		
		//값을 못받아온다!!
		//1. getParameter("")매개변수가 name값으로 설정 돼있는지 확인
		//2. 현재 Action단으로 이동하는지 체크!! - consol창에 *.bizpoll이 뜨는지 확인 
		// 		가) 안탐 : 화면단으로 가서 form태그에 Action속성값, submit()등을 확인
			//  나) 간다
		MemberDAO mDao = MemberDAO.getInstance();
		int result= mDao.updatePw(id, npw);
		
		if(result >0) {//pw 성공
			url ="index.bizpoll";
		}else {//실패
			url="memberPw.bizpoll";
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}
	

}
