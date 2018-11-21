package com.hodro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.hodro.dao.MemberDAO;

public class PwCheckAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userid = request.getParameter("id");
		String userpw = request.getParameter("pw");
		System.out.println("id:"+userid);
		System.out.println("pw:"+userpw);
		
		MemberDAO mDao = MemberDAO.getInstance();
		String msg = mDao.confirmPW(userid, userpw);
		System.out.println("메세지:"+msg);
		JSONObject jObj = new JSONObject();
		
		jObj.put("message", msg);
		jObj.put("id", userid);
		jObj.put("pw", userpw);
		//DB에서 pw값 가지고 와서 비교
		//SELECT pw FROM member
		//WHERE id=?;
		
		//id값을 구하는 방법2가지 (Session)
		//1. Controller단에서 Sesseion객체 호출해서 ID값 빼오는 방법
		//2. View단에서 Session에 담겨있는 id값을 pw값과 함께 보내는 방법- 훨씬 쉬움
		
		//JSON 객체에 담은 데이터를 호출한 페이지로 전송하는 기능 
		 response.setContentType("application/x-json; charset=UTF-8");
		 response.getWriter().print(jObj);
		 System.out.println("hi");
		
		return null; //페이지 이동을 하지 않기 때문에 null을 넣어야함. 
	}
	
}
