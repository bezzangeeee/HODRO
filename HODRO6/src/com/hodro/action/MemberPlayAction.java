package com.hodro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hodro.dao.MemberDAO;
import com.hodro.dto.MemberDTO;

public class MemberPlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="welcom.jsp"; //페이지 이동 기능은 전혀 없음. 그냥 변수생성후 값 담아둔거임
		
		request.setCharacterEncoding("UTF-8"); //한글깨짐 방지
		//View단에서 전송한 데이터를 받아오세요. 
		
		String id = request.getParameter("input_id"); //name값을 받는거임 
		String pW = request.getParameter("input_pw");
		String rpw = request.getParameter("input_rpw");
		String name = request.getParameter("input_name");
		String phone = request.getParameter("input_pn");
		String zipcode = request.getParameter("zipcode");
		String addr1 = request.getParameter("sample6_address");
		String addr2 = request.getParameter("sample6_address2");
		String email1 = request.getParameter("email1");
		String emailurl = request.getParameter("email_url");
		String email = email1+"@"+emailurl;
		
		System.out.println(id+","+pW+","+rpw+","+name+","+phone+","+email+","+zipcode+","+addr1+","+addr2);		
		
		MemberDTO mDto = new MemberDTO(id, pW, name, phone, email, zipcode, addr1, addr2);
		System.out.println(mDto.toString());
		
		//싱글톤 패턴
		//객체생성은 한번만 이루어지고
		//나머지는 생성된 객체를 빌려 쓰는 형태로 작성됨
		//효율성이 좋음= 메모리 효율
		MemberDAO mDao = MemberDAO.getInstance(); //객체 생성
		int result = mDao.insertMember(mDto); //MemberDAO 클래스의 insertMember() 메서드를 호출하고 view단에서 전달한 데이터를 mDto에 담아 보냄
		
		if(result>0) { //등록성공 
		}else { //회원가입 실패
			
		}
		
		response.setContentType("text/html; charset=UTF-8"); //한글깨짐 방지
		
		//ActionForward 객체 생성
		//forward인스턴스 생성 
		ActionForward forward = new ActionForward();
		//ActionFroward 클래스의 setPath()함수를 호출하고 url값을 매개변수로 전달 
		forward.setPath(url);
		
		//ActionForward 클래스의 setRedirect() 메서드 호출하고 turn라고 하는 boolean 값을 매개변수로 전달 
		forward.setRedirect(true);
		
		return forward;
	}


}
