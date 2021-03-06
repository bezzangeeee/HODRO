package com.hodro.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hodro.dao.BoardDAO;
import com.hodro.dto.BoardDTO;
import com.hodro.dto.CriteriaDTO;
import com.hodro.dto.PageMakerDTO;

public class BoardSearchAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url ="board/boardlist.jsp";
		String flag = request.getParameter("flag");
		String keyword =request.getParameter("keyword");
		System.out.println(flag+","+ keyword);
		
		//keyword와 type으로 검색된 게시글 리스트가 출력 
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page") !=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지번호:"+page);
		criDto.setPage(page);

		
		BoardDAO bDao = BoardDAO.getInstance();
		// 게시글 목록(정보들) 출력
		criDto.setKeyword(keyword);
		criDto.setFlag(flag);		
		List<BoardDTO> searchList = bDao.boardSearch(criDto);
		request.setAttribute("boardList", searchList);
		
		//현재날짜 출력
		Date today = new Date();
		request.setAttribute("today", today);
		
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		
		int totalCount = bDao.totalCount(criDto);
		pageMaker.setTotalCount(totalCount);
		request.setAttribute("pageMaker", pageMaker);
		
		System.out.println("=================");
		System.out.println(pageMaker.toString());
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
