package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.CcodeVO;
import com.shop.common.DcodeVO;
import com.shop.common.JDBCConnection;

public class CodeDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	//c코드불러오기
	public ArrayList<CcodeVO> getCcode(){
		ArrayList<CcodeVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from shop_ccode";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<CcodeVO>();
			while(rs.next()) {
				CcodeVO vo = new CcodeVO();
				vo.setCcode(rs.getString("ccode"));
				vo.setCcode_res(rs.getString("ccode_res"));
				list.add(vo);
			}
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return list;
	}
	//d코드불러오기
	public ArrayList<DcodeVO> getDcode(){
		ArrayList<DcodeVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from shop_dcode";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<DcodeVO>();
			while(rs.next()) {
				DcodeVO vo = new DcodeVO();
				vo.setDcode(rs.getString("dcode"));
				vo.setDcode_res(rs.getString("dcode_res"));
				list.add(vo);
			}
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return list;
	}
}
