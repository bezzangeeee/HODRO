package com.hodro.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hodro.common.DBManager;
import com.hodro.dto.MemberDTO;
import com.hodro.dto.ProductDTO;
import com.hodro.mybatis.SqlMapConfig;

public class MemberDAO {
	
	//MyBatis 셋팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	//mapper에 접근 하기 위한 sqlSession
	SqlSession sqlSession;
	
	//싱글톤으로 new없이 사용하기 때문에
	//다른곳에 new로 객체생성 못하게 private으로 막음 

	private MemberDAO() {}
	//싱글톤 패턴 - 객체생성 1회 실시 후 공유해서 사용
	//개체생성 1회 실시 
	private static MemberDAO instance = new MemberDAO();
	
	//외부에서 getInstance()를활용하여 1회 실시한 객체를 공유 
	public static MemberDAO getInstance() {
		return instance;
	}

	//회원가입 - 회원등록
	public int insertMember(MemberDTO mDto) {
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result=sqlSession.insert("insertMember", mDto);
			sqlSession.commit(); //insert, update, delete는 반드시 커밋해주기 
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}return result;
	}
	//회원가입 페이지 ID 중복체크(Ajax)
	public String confirmID(String userid) {
		String result = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result=sqlSession.selectOne("confirmID", userid);
			
			if(result !=null) {
				result = "-1";
			}else {
				result ="1";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}return result;
	}
	
	//비밀번호 수정 페이지 현재비밀번호와 일치하는지 확인
	public String confirmPW(String userid, String userpw) {
		String result = null;
		sqlSession = sqlSessionFactory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(userid);
		mDto.setpw(userpw);
		try {
			result=sqlSession.selectOne("confirmPW", mDto);
			
			if(result !=null) {
				result = "-1";
			}else {
				result ="1";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}return result;
		
	}
	
	//로그인 기능
	public MemberDTO loginCheck(String userid, String userpw) {
		sqlSession = sqlSessionFactory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(userid);
		mDto.setpw(userpw);
		try {
			mDto=sqlSession.selectOne("loginCheck", mDto);	
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}return mDto;
		
	}
	//회원정보수정(비밀번호 제외)
	public int memberUpdate(MemberDTO mDto) {
		int result =0;
		sqlSession = sqlSessionFactory.openSession();
		System.out.println("DAO memberUpdate 옴");
		try {
			result=sqlSession.update("memberUpdate", mDto);	
			sqlSession.commit();
			System.out.println("결과값 : "+result);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {       
			sqlSession.close();
		}
		
		return result;
		
	}
	//회원패스워드 변경(일반정보 제외)
	public int updatePw(String userid, String userpw) {
		int result =0;
		sqlSession = sqlSessionFactory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(userid);
		mDto.setpw(userpw);
		try {
			result=sqlSession.update("updatePw", mDto);	
			sqlSession.commit();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}return  result;
	}
	
	//회원탈퇴(삭제)
	public int deleteMember(String userid) {
		int flag= 0;
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			flag = sqlSession.delete("deleteMember",userid);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();			
		}
		
		return flag;
	}
	
	
	
	
//====================================================================================================	
/*	Connection conn = null;
	PreparedStatement pstmt =null;
	ResultSet rs = null;
	ArrayList<ProductDTO> list = new ArrayList<>();
	int result =0;
	MemberDTO mDto;

	public int inputmember(MemberDTO mDto){
		try {
			conn= DBManager.getConnecrion();
			String sql ="INSERT INTO member(id,pw,name,phone,email,zipcode,addr1,addr2)"
					   +"VALUES(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mDto.getId());
			pstmt.setString(2, mDto.getpW());
			pstmt.setString(3, mDto.getName());
			pstmt.setString(4, mDto.getPhone());
			pstmt.setString(5, mDto.getEmail());
			pstmt.setString(6, mDto.getZipcode());
			pstmt.setString(7, mDto.getAddr1());
			pstmt.setString(8, mDto.getAddr2());
			
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally { // 무조건 실행, 디비를 쓰면 반드시 닫아줘야 해서 무조건 실행
			DBManager.close(conn, pstmt);
		}
		return result; // 메서드 종료 return값(result)을 가지고 나를 호출한 곳으로 돌아감 
	}
	//로그인시 회원여부 체크
	public MemberDTO loginCheck(String uid, String upw){
		try {
			conn= DBManager.getConnecrion();
			String sql ="SELECT * FROM member "
					   + "WHERE id =? AND pw=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			pstmt.setString(2, upw);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pW");
				String name = rs.getString("name");
				String phone= rs.getString("phone");
				String email = rs.getString("email");
				String zipcode = rs.getString("zipcode");
				String addr1 = rs.getString("addr1");
				String addr2 = rs.getString("addr2");
				Date regdate = rs.getDate("regdate");
				 mDto = new MemberDTO(id, pw, name, phone, email, zipcode, addr1, addr2, regdate);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mDto;
	}
	
	//회원정보 수정
	public int memberUpdate(MemberDTO mDto){
		try {
			conn= DBManager.getConnecrion();
			String sql ="UPDATE member SET "
					   + "name=?, phone=?, email=?, zipcode=?, addr1=?,addr2=? "
					   + "WHERE id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mDto.getName());
			pstmt.setString(2, mDto.getPhone());
			pstmt.setString(3, mDto.getEmail());
			pstmt.setString(4, mDto.getZipcode());
			pstmt.setString(5, mDto.getAddr1());
			pstmt.setString(6, mDto.getAddr2());
			pstmt.setString(7, mDto.getId());
			
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	
	}
	
	//Ajax를 활용한 ID 중복체크 
		public String confirmID(String userid) {
			String msg="";
			try {
				conn= DBManager.getConnecrion();
				String sql ="SELECT id FROM member "
						   + "WHERE id =?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userid);
				rs = pstmt.executeQuery();
				
				if(rs.next()) { //중복된 아이디
					//중복된 아이디
					msg = "-1"; 
				}else {
					msg = "1";
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt, rs);
			}
			
			return msg;
			
		}
		
		//Ajax를 활용한 현재 비밀번호 체크 
				public String confirmPW(String userid, String userpw) {
					String msg="";
					try {
						conn= DBManager.getConnecrion();
						String sql ="SELECT id FROM member "
								   + "WHERE id =? AND pw=?";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, userid);
						pstmt.setString(2, userpw);
						rs = pstmt.executeQuery();
						
						if(rs.next()) { //중복된 pw
							//중복된 pw
							msg = "-1"; 
						}else {
							msg = "1";
						}
						
					} catch (Exception e) {
						e.printStackTrace();
					}finally {
						DBManager.close(conn, pstmt, rs);
					}
					
					return msg;
					
				}
				
				public int updatePw(String userId, String userPw) {
					try {
						conn= DBManager.getConnecrion();
						String sql ="UPDATE member SET "
								   +"pw =? "
								   +"WHERE id=?";
						
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, userPw);
						pstmt.setString(2, userId);
						result = pstmt.executeUpdate();
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						DBManager.close(conn, pstmt);
					}
					return result;
				}*/
}
