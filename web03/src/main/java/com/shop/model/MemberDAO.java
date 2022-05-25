package com.shop.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;

import com.shop.common.JDBCConnection;
import com.shop.common.Shop_MemberVO;

public class MemberDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	//멤버 리스트
	public ArrayList<Shop_MemberVO> getMemberList(){
		ArrayList<Shop_MemberVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from shop_member order by mno desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<Shop_MemberVO>();
			while(rs.next()) {
				Shop_MemberVO Vo = new Shop_MemberVO();
				Vo.setMno(rs.getInt("mno"));
				Vo.setMid(rs.getString("mid"));
				Vo.setMpw(rs.getString("mpw"));
				Vo.setMname(rs.getString("mname"));
				Vo.setMnick(rs.getString("mnick"));
				Vo.setMtel(rs.getString("mtel"));
				Vo.setMaddress(rs.getString("maddress"));
				Vo.setMemail(rs.getString("memail"));
				Vo.setMcash(rs.getInt("mcash"));
				Vo.setMpoint(rs.getInt("mpoint"));
				Vo.setMgrade(rs.getInt("mgrade"));
				Vo.setMjday(rs.getDate("mjday"));
				Vo.setMlatest(rs.getDate("mlatest"));
				list.add(Vo);
			}
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return list;
	}
	//멤버 리스트 (JSON)
		public ArrayList<Shop_MemberVO> JSONgetMemberList(){
			ArrayList<Shop_MemberVO> list = null;
			try {
				conn = JDBCConnection.getConnection();
				sql = "select mno,mid,mpw,mname,mtel,maddress,memail,mnick,mcash,mpoint,mgrade,to_char(mjday,'yyyy-MM-dd HH24:mi:ss') as jday, to_char(mlatest,'yyyy-MM-dd HH24:mi:ss') as latest from shop_member order by mno desc";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				list = new ArrayList<Shop_MemberVO>();
				while(rs.next()) {
					Shop_MemberVO Vo = new Shop_MemberVO();
					Vo.setMno(rs.getInt("mno"));
					Vo.setMid(rs.getString("mid"));
					Vo.setMpw(rs.getString("mpw"));
					Vo.setMname(rs.getString("mname"));
					Vo.setMnick(rs.getString("mnick"));
					Vo.setMtel(rs.getString("mtel"));
					Vo.setMaddress(rs.getString("maddress"));
					Vo.setMemail(rs.getString("memail"));
					Vo.setMcash(rs.getInt("mcash"));
					Vo.setMpoint(rs.getInt("mpoint"));
					Vo.setMgrade(rs.getInt("mgrade"));
					Vo.setMjday2(rs.getString("jday"));
					Vo.setMlatest2(rs.getString("latest"));
					list.add(Vo);
				}
			}
			catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
			catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
			catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
			finally 							{ JDBCConnection.close(rs, pstmt, conn); }
			return list;
		}
	//멤버리스트_검색
	public ArrayList<Shop_MemberVO> getMemberSearch(String s_type,String s_txt){
		ArrayList<Shop_MemberVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			if(s_type.equals("ids")) {
			sql = "select * from shop_member where mid like ? order by mno desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+s_txt+"%");
			}else if(s_type.equals("names")) {
			sql = "select * from shop_member where mname like ? order by mno desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+s_txt+"%");	
			}
			rs = pstmt.executeQuery();

			list = new ArrayList<Shop_MemberVO>();
			while(rs.next()) {
				Shop_MemberVO Vo = new Shop_MemberVO();
				Vo.setMno(rs.getInt("mno"));
				Vo.setMid(rs.getString("mid"));
				Vo.setMpw(rs.getString("mpw"));
				Vo.setMname(rs.getString("mname"));
				Vo.setMnick(rs.getString("mnick"));
				Vo.setMtel(rs.getString("mtel"));
				Vo.setMaddress(rs.getString("maddress"));
				Vo.setMemail(rs.getString("memail"));
				Vo.setMcash(rs.getInt("mcash"));
				Vo.setMpoint(rs.getInt("mpoint"));
				Vo.setMgrade(rs.getInt("mgrade"));
				Vo.setMjday(rs.getDate("mjday"));
				Vo.setMlatest(rs.getDate("mlatest"));
				list.add(Vo);
			}
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return list;
	}
	//멤버 상세보기
	public Shop_MemberVO getMemberPage(String id){
		Shop_MemberVO Vo = new Shop_MemberVO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from shop_member where mid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Vo.setMno(rs.getInt("mno"));
				Vo.setMid(rs.getString("mid"));
				Vo.setMpw(rs.getString("mpw"));
				Vo.setMname(rs.getString("mname"));
				Vo.setMnick(rs.getString("mnick"));
				Vo.setMtel(rs.getString("mtel"));
				Vo.setMaddress(rs.getString("maddress"));
				Vo.setMemail(rs.getString("memail"));
				Vo.setMcash(rs.getInt("mcash"));
				Vo.setMpoint(rs.getInt("mpoint"));
				Vo.setMgrade(rs.getInt("mgrade"));
				Vo.setMjday(rs.getDate("mjday"));
				Vo.setMlatest(rs.getDate("mlatest"));		
			}
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return Vo;
	}
	//회원가입
	public int joinMember(Shop_MemberVO Vo){
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into shop_member values("
					+ "(select nvl(max(mno),0)+1 from shop_member),"
					+ "?,"
					+ "?,"
					+ "?,"
					+ "?,"
					+ "?,"
					+ "?,"
					+ "?,"
					+ "?,"
					+ "?,"
					+ "?,"
					+ "sysdate,"
					+ "sysdate"
					+ ")";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Vo.getMid());
			String pw = Base64.getEncoder().encodeToString(Vo.getMpw().getBytes());	//BASE64
			pstmt.setString(2, pw);
			pstmt.setString(3, Vo.getMname());
			pstmt.setString(4, Vo.getMtel());
			pstmt.setString(5, Vo.getMaddress());
			pstmt.setString(6, Vo.getMemail());
			pstmt.setString(7, Vo.getMnick());
			pstmt.setInt(8, Vo.getMcash());
			pstmt.setInt(9, Vo.getMpoint());
			pstmt.setInt(10, Vo.getMgrade());
			cnt = pstmt.executeUpdate();

		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(pstmt, conn); }
		return cnt;
	}
	//회원가입_아이디 중복확인
		public int checkid(String id){
			try {
				conn = JDBCConnection.getConnection();
				sql = "select * from shop_member where mid=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()) {
				return 2;		//있으면 2
				}
			}
			catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
			catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
			catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
			finally 							{ JDBCConnection.close(rs, pstmt, conn); }
			return 1; //없으면 1
		}
	//회원 수정
	public int editMember(Shop_MemberVO Vo){
		try {
			conn = JDBCConnection.getConnection();
			sql = "update shop_member set "
					+ "mpw=?,"
					+ "mtel=?,"
					+ "maddress=?,"
					+ "memail=?,"
					+ "mnick=?,"
					+ "mcash=?,"
					+ "mpoint=?,"
					+ "mgrade=? "
					+ "where mid=?";
			pstmt = conn.prepareStatement(sql);
			String pw = Base64.getEncoder().encodeToString(Vo.getMpw().getBytes());	//BASE64
			pstmt.setString(1, pw);
			pstmt.setString(2, Vo.getMtel());
			pstmt.setString(3, Vo.getMaddress());
			pstmt.setString(4, Vo.getMemail());
			pstmt.setString(5, Vo.getMnick());
			pstmt.setInt(6, Vo.getMcash());
			pstmt.setInt(7, Vo.getMpoint());
			pstmt.setInt(8, Vo.getMgrade());
			pstmt.setString(9, Vo.getMid());
			cnt = pstmt.executeUpdate();

		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(pstmt, conn); }
		return cnt;
	}
	//회원 삭제
	public int delMember(String uid){
		try {
			conn = JDBCConnection.getConnection();
			sql = "delete from shop_member where mid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			cnt = pstmt.executeUpdate();
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(pstmt, conn); }
		return cnt;
	}
	
	//로그인
	public Shop_MemberVO loginMember(String id, String pw){
		Shop_MemberVO Vo = new Shop_MemberVO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from shop_member where mid=? and mpw=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pw = Base64.getEncoder().encodeToString(pw.getBytes());	//BASE64
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next()) {
			Vo.setMid(rs.getString("mid"));
			Vo.setMname(rs.getString("mname"));
			Vo.setMnick(rs.getString("mnick"));			
			}
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return Vo; //기본정보만 보냄
	}
	/////////////////////////////////////////////////
	
	
	
	
	
}
