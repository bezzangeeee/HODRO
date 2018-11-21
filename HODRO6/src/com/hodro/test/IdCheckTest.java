package com.hodro.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.hodro.dao.MemberDAO;

public class IdCheckTest {

	String userid = "psm410";
	@Test
	public void testConfirmID() {
		MemberDAO mDao = MemberDAO.getInstance();
		
		mDao.confirmID(userid);
	}

}
