package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.JDBCConnection;
import com.shop.common.Shop_MemberVO;

public class PaymentDAO {
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
}
