package com.hodro.action;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.hodro.dao.MemberDAO;
import com.hodro.dto.MemberDTO;

public class LoginPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id +","+pw);
		
		//DAO 클래스에 LoginCheck() 메서드를 활용하여 
		//id와 pw값으로 Select 절에 where조건으로 검색 후
		//결과 값을 가지고 현재 지금 이곳 Action단으로 돌아오는 코드를 작성 
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = mDao.loginCheck(id, pw);
		
		String message = null;
		if(mDto != null) {//로그인 성공
			//session값에 login된 회원정보를 담아야함 
			session.removeAttribute("id");//혹시모를 기존에 남아있는 값을 제거
			//session은 DTO객체로 값 받기,List는 안됨!!
			session.setAttribute("loginUser", mDto);
			message ="1";
		}else {//로그인 실패
			message ="-1";
		}
		JSONObject jObj = new JSONObject();
		jObj.put("message", message);
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(jObj);
		
		return null;
	}
	
}
