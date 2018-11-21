package com.hodro.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hodro.action.Action;
import com.hodro.action.ActionForward;
import com.hodro.action.BoardDetailAction;
import com.hodro.action.BoardDownloadAction;
import com.hodro.action.BoardInsertAction;
import com.hodro.action.BoardInsertPlayAction;
import com.hodro.action.BoardListAction;
import com.hodro.action.BoardSearchAction;
import com.hodro.action.BoardUpdateAction;

import com.hodro.action.BoardUpdateDeletePlayAction;
import com.hodro.action.BoardUpdatePlayAction;
import com.hodro.action.BoardViewcntAction;
import com.hodro.action.CommentListAction;
import com.hodro.action.ConstractAction;
import com.hodro.action.IdCheckAction;
import com.hodro.action.IndexAction;
import com.hodro.action.LoginAction;
import com.hodro.action.LoginOutPlayAction;
import com.hodro.action.LoginPlayAction;
import com.hodro.action.MemberAction;
import com.hodro.action.MemberDeleteAction;
import com.hodro.action.MemberDeletePlayAction;
import com.hodro.action.MemberPlayAction;
import com.hodro.action.MemberUpdateAction;
import com.hodro.action.MemberUpdatePlayAction;
import com.hodro.action.PwCheckAction;
import com.hodro.action.PwUpdateAction;
import com.hodro.action.PwUpdatePlayAction;
import com.hodro.action.ReplyDeleteAction;
import com.hodro.action.ReplyInsertAction;

/**
 * Servlet implementation class BizpollFrontController
 */
@WebServlet("/BizpollFrontController")
public class BizpollFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BizpollFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//GET,POST 둘다 받음
		
		//한글깨짐 방지(POST방식): 가장 위에 적어주세요.
		request.setCharacterEncoding("UTF-8");
		
		Action action =null; 			// 실제 동작하는 부분
		ActionForward forward = null;   //forward, sendRedirect 설정 
		
		//uri = /HODRO/index.bizpoll
		//ctx =/HODRO
		//uri -ctx = 내가 원하는 Action경로 
		String uri = request.getRequestURI();
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length());  //index.bizpoll
		
		System.out.println("uri:" +uri);
		System.out.println("ctx:"+ ctx);
		System.out.println("페이지 이동====> "+command);
		
		//Action단 이동
		if(command.equals("/index.bizpoll")) {
			action = new IndexAction(); //객체생성
			forward = action.excute(request, response); //객체(인스턴스)사용 //데이터 받을때 request, 데이터보낼때 response
			//web에서는 무조건 requset, response를 매개변수로 받아야한다. 
		}else if(command.equals("/constract.bizpoll")) {
			action = new ConstractAction();
			forward = action.excute(request, response);
		}else if(command.equals("/member.bizpoll")) {
			action = new MemberAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberplay.bizpoll")) {
			action = new MemberPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/login.bizpoll")) {
			action = new LoginAction();
			forward = action.excute(request, response);
		}else if(command.equals("/LoginPlay.bizpoll")) {
			action = new LoginPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/logOut.bizpoll")) {
			action = new LoginOutPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberUpdate.bizpoll")) {
			action = new MemberUpdateAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberupdateplay.bizpoll")) {
			action = new MemberUpdatePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/idCheck.bizpoll")) {
			action = new IdCheckAction();
			forward = action.excute(request, response);
		}else if(command.equals("/pwCheck.bizpoll")) {
			action = new PwCheckAction();
			forward = action.excute(request, response);
		}else if(command.equals("/passwordUpdate.bizpoll")) {
			action = new PwUpdateAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberpwplay.bizpoll")) {
			action = new PwUpdatePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberDelete.bizpoll")) {
			action = new MemberDeleteAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberdeleteplay.bizpoll")) {
			action = new MemberDeletePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardList.bizpoll")) {
			action = new BoardListAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardSearch.bizpoll")){
			action = new BoardSearchAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardDetail.bizpoll")) {
			action = new BoardDetailAction();
			forward = action.excute(request, response);			
		}else if(command.equals("/boardViewcnt.bizpoll")) {
			action = new BoardViewcntAction();
			forward = action.excute(request, response);	
		}else if(command.equals("/boardinsert.bizpoll")) {
			action = new BoardInsertAction();
			forward = action.excute(request, response);				
		}else if(command.equals("/boardinsertplay.bizpoll")) {
			action = new BoardInsertPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/download.bizpoll")) {
			action = new BoardDownloadAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardUpadte.bizpoll")){
			action = new BoardUpdateAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardUpadteplay.bizpoll")) {
			action = new BoardUpdatePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardUpdateDeletePlayAction.bizpoll")) {
			action = new BoardUpdateDeletePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/commentlist.bizpoll")) {
			action = new CommentListAction();
			forward = action.excute(request, response);
		}else if(command.equals("/replydelete.bizpoll")) {
			action = new ReplyDeleteAction();
			forward = action.excute(request, response);
		}else if(command.equals("/replyInsert.bizpoll")) {
			action = new ReplyInsertAction();
			forward = action.excute(request, response);
		}
		
		//공통 분기작업(페이지 이동)
		if(forward !=null) {
			if(forward.isRedirect()) {//true :sendRedirect방식   //fasle 담김
				response.sendRedirect(forward.getPath());
			}else {//false : forward방식
				//목적지 : index.jsp
				//짐 : bestlist
				//이동수단 : forward
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}
	}

}
