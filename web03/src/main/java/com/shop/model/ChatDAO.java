package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.ChatVO;
import com.shop.common.JDBCConnection;

public class ChatDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	//채팅 불러오기(받은기록)
	public ArrayList<ChatVO> getChatlist_m1(String sid){
		ArrayList<ChatVO> list = new ArrayList<ChatVO>();		//보낸기록
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from (select * from shop_chat where sendid = ? or reqid = ? order by cno desc) where rownum <= 10 order by cno";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sid);
			pstmt.setString(2, sid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
			ChatVO Vo = new ChatVO();
			Vo.setCno(rs.getInt("cno"));
			Vo.setSendid(rs.getString("sendid"));
			Vo.setReqid(rs.getString("reqid"));
			Vo.setCdetail(rs.getString("cdetail"));
			Vo.setCdate(rs.getString("cdate"));
			Vo.setAnswer_val(rs.getInt("answer_val"));
			list.add(Vo);
			}
			
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return list;
	}
	//임시
	public ArrayList<ChatVO> getChatlist_m2(String sid){
		ArrayList<ChatVO> list = new ArrayList<ChatVO>();		
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from shop_chat where reqid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
			ChatVO Vo = new ChatVO();
			Vo.setCno(rs.getInt("cno"));
			Vo.setSendid(rs.getString("sendid"));
			Vo.setReqid(rs.getString("reqid"));
			Vo.setCdetail(rs.getString("cdetail"));
			Vo.setCdate(rs.getString("cdate"));
			list.add(Vo);
			}
			
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return list;
	}
	//제이슨
		public ArrayList<ChatVO> getChatlist_m1_json(String sid){
			ArrayList<ChatVO> list = new ArrayList<ChatVO>();		//보낸기록
			try {
				conn = JDBCConnection.getConnection();
				sql = "select cno,cdetail,sendid,reqid,to_char(cdate,'yy-mm-dd hh24:mi') as cdate,answer_val from (select * from shop_chat where sendid = ? or reqid = ? order by cno desc) where rownum <= 10 order by cno";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, sid);
				pstmt.setString(2, sid);
				rs = pstmt.executeQuery();
				while(rs.next()) {
				ChatVO Vo = new ChatVO();
				Vo.setCno(rs.getInt("cno"));
				Vo.setSendid(rs.getString("sendid"));
				Vo.setReqid(rs.getString("reqid"));
				Vo.setCdetail(rs.getString("cdetail"));
				Vo.setCdate(rs.getString("cdate"));
				Vo.setAnswer_val(rs.getInt("answer_val"));
				list.add(Vo);
				}
				
			}
			catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
			catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
			catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
			finally 							{ JDBCConnection.close(rs, pstmt, conn); }
			return list;
		}
	
	
	
	public int sendChat(ChatVO Vo){
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into shop_chat values("
					+ "(select nvl(max(cno),0)+1 from shop_chat),"
					+ "?," //내용
					+ "?," //발신자
					+ "?," //수신자
					+ "SYSDATE,"
					+ "0"
					+ ")";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Vo.getCdetail());
			pstmt.setString(2, Vo.getSendid());
			pstmt.setString(3, Vo.getReqid());
			cnt = pstmt.executeUpdate();
			
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return cnt;
	}
	
	
}
