package com.hodro.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class ConnTest {
	private static Connection conn;
	private  final static String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final static String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";//1521 => 포트번호 , XE => DB이름, 127.0.0.1=> 무조건 내 IP 탐
	private final static String user = "java";
	private final static String password ="1234";
	@Test
	public void testGetConnecrion() {
		conn = null;
		
		if(conn ==null) {
			try {
				Class.forName(DRIVER);
				conn = DriverManager.getConnection(url, user, password);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}

	}
}