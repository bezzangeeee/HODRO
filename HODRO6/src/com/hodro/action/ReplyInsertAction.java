package com.hodro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hodro.dao.BoardDAO;
import com.hodro.dao.ReplyDAO;
import com.hodro.dto.ReplyDTO;

public class ReplyInsertAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int bno = Integer.parseInt(request.getParameter("re_bno"));
		String writer = request.getParameter("rpwriter");
		String content = request.getParameter("reply_content");
		System.out.println(bno+","+writer+","+content);
		
		//bno 게시글에 댓글 등록
		ReplyDTO rDto = new ReplyDTO(content, writer, bno);
		ReplyDAO rDao = ReplyDAO.getInstance();
	
		rDao.replyInsert(rDto);
		
		//bno 게시글 reply_cnt +1 증가
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.boardReplyCntPlus(bno);
		return null;
	}

}
