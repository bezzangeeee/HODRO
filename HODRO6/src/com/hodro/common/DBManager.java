package com.hodro.common;

import java.sql.*;

//공통으로 사용하니까 common으로 pakage 생성

// 싱글톤 패턴을 활용한 공유 방법 
//프레임 워크 : 개발자가 개발을 하기 쉽게 도와주는 도구 
//싱글톤 패턴 : static 과 생성자를 이용해서 만든 것
public class DBManager {
	//생성자, static(=자원공유의 목적)
	//객체생성을 단 한번만 실행하고
	//다른 클래스에서 사용 할 때는 한번 생성된
	//객체를 빌려다가 공유의 목적으로 사용하게 
	//만드는 방법 
	
	//인스턴스의 주소를 저장하기 위한 참조 변수
	private static Connection conn;
	
	//connection 관련 정보 상수 
	private  final static String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final static String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";//1521 => 포트번호 , XE => DB이름, 127.0.0.1=> 무조건 내 IP 탐
	private final static String user = "java";
	private final static String password ="1234";
	// 생성자를 private으로 만들어 은닉화 시킨다. 
	//=> 외부에서 인스턴스를 생성하지 못하도록 선언
	//=> 이유 : 공유해서 사용하려고 하는데 다른개발자가 객체생성 해서 사용하면 공유의 의미가 없음. 
	//         (사용자의 실수를 막는 용도)
	private DBManager() {
		
	}
	//인스턴스를 생성 또는 기존 인스턴스를 반환하는 
	public static Connection getConnecrion() {
		conn = null;
		
		if(conn ==null) {
			try {
				Class.forName(DRIVER);
				conn = DriverManager.getConnection(url, user, password);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		} return conn;
	}
	

	//select 수행후 자원 해제를 위한 메서드
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(rs !=null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(pstmt !=null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(conn !=null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//insert, delete, update 수행후 자원해재를 위한 메서드 
	public static void close(Connection conn, PreparedStatement pstmt) {
		try {
		
			if(pstmt !=null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(conn !=null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

