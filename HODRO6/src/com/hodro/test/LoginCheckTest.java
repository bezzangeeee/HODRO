package com.hodro.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.hodro.dao.MemberDAO;
import com.hodro.dto.MemberDTO;

public class LoginCheckTest {

	@Test
	public void testLoginCheck() {
		String id = "test";
		String pw ="1234";
		
		MemberDAO mDao = MemberDAO.getInstance();
		String result1 = mDao.confirmPW(id, pw);
		int result = Integer.parseInt(result1);
		if(result >0) {
		System.out.println("등록성공");
		}else {
		System.out.println("등록실패");
		}
	}

}
