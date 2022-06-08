package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.CommentVO;
import com.shop.common.JDBCConnection;

public class CommentDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	
	//이용후기 불러오기
	public ArrayList<CommentVO> getComment(String gcode) {
		ArrayList<CommentVO> Volist = new ArrayList<CommentVO>();
		
		try {
		conn = JDBCConnection.getConnection();
		sql = "select * from shop_comment where gcode = ? order by C_SEQ desc";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, gcode);
		rs = pstmt.executeQuery();
		while(rs.next()) {
		CommentVO Vo = new CommentVO();
		Vo.setC_seq(rs.getInt("c_seq"));
		Vo.setGcode(rs.getString("gcode"));
		Vo.setUser_id(rs.getString("user_id"));
		Vo.setCdetail(rs.getString("cdetail"));
		Vo.setThumb(rs.getInt("thumb"));
		Volist.add(Vo);
		}
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs,pstmt, conn); }
		return Volist;
	}
	
	
	//이용후기 추가
	public int addComment(CommentVO Vo) {
		try {
		conn = JDBCConnection.getConnection();
		sql = "insert into shop_comment values((select nvl(max(c_seq),0)+1 from shop_comment),?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, Vo.getGcode());
		pstmt.setString(2, Vo.getUser_id());
		pstmt.setString(3, Vo.getCdetail());
		pstmt.setInt(4, Vo.getThumb());
		cnt = pstmt.executeUpdate();
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(pstmt, conn); }
		return cnt;
	}
	
	
}
