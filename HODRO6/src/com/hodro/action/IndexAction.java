package com.hodro.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hodro.dao.ProductDAO;
import com.hodro.dto.ProductDTO;

public class IndexAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "index.jsp";
		
		//동작하는 부분
		//: Best 상품 출력 => best 상품을 DB에서 조회
		//Model단 이동(DAO)
		
		//ProductDAO클래스 객체생성
		//ProductDAO pDao = new ProductDAO();
		//ProductDTO타입의 ArrayList 객체를 생성 
		//ArrayList<ProductDTO> bestlist = new ArrayList<>();
		// ProductDAO 클래스의 bestView()메서드를 호출
		//메서드 실행후 return값을 bestlist변수에 담는다. 
		//bestlist = pDao.bestView(); //best 상품 목록 담겨있음
		
		//싱클톤 패턴
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductDTO> bestlist = pDao.bestView();
		
		
		//View단으로 전송할 데이터를 담는다. 
		//					("이름표"   , 실제값);
		request.setAttribute("bestlist",bestlist);
		
		//어떤 View단으로 이동하는지 설정 
		ActionForward forward = new ActionForward();//ActionForward 객체 생성 
		
		//ActionForward 클래스에 setPath()메서드를 호출 
		//매개변수로 url값 ("index.jsp")을 전송 
		forward.setPath(url);        //index.jsp로 이동
		
		//ActionForward 클래스에 setRedirect()메서드를 호출
		//매개변수로 boolean타입의 false값을 전송 
		forward.setRedirect(false);  //forward 방식을 사용
		
		return forward;
	}
	
}
