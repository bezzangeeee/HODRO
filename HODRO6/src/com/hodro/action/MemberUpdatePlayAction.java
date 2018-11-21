package com.hodro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hodro.dao.MemberDAO;
import com.hodro.dto.MemberDTO;

public class MemberUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="index.bizpoll";
		HttpSession session = request.getSession();
		
		request.setCharacterEncoding("UTF-8"); //한글깨짐 방지
		//View단에서 전송한 데이터를 받아오세요. 
		
		String id = request.getParameter("input_id");
		String name = request.getParameter("input_name");
		String phone = request.getParameter("input_pn");
		String zipcode = request.getParameter("zipcode");
		String addr1 = request.getParameter("sample6_address");
		String addr2 = request.getParameter("sample6_address2");
		String email1 = request.getParameter("email1");
		String emailurl = request.getParameter("email_url");
		String email = email1+"@"+emailurl;
				
		MemberDTO mDto = new MemberDTO(id, name, phone, email, zipcode, addr1, addr2);
		System.out.println(mDto.toString());		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.memberUpdate(mDto);
		
		if(result>0) { //등록성공 
			url ="index.bizpoll";
			
			//session값을 최신정보로 수정!!!
			session.removeAttribute("id");			
			//최신 회원정보 
			session.setAttribute("loginUser", mDto);
		}else {
			url ="memberUpdate.bizpoll";
		
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}
		

}
