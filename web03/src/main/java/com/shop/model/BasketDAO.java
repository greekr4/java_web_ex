package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.BasketVO;
import com.shop.common.JDBCConnection;

public class BasketDAO {
		private Connection conn = null;
		private PreparedStatement pstmt = null;
		private ResultSet rs = null;
		String sql = "";
		int cnt = 0;
		//장바구니 추가
		public int addBasket(BasketVO Vo) {
			try {
			conn = JDBCConnection.getConnection();
			sql = "select * from basket where gcode =? and userid =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Vo.getGcode());
			pstmt.setString(2, Vo.getUserid());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				sql = "update basket set bamount = bamount+? where bno = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Vo.getBamount());
				pstmt.setInt(2, rs.getInt("bno"));
				cnt = pstmt.executeUpdate();
			}else {
				sql = "insert into basket values("
					+ "(select nvl(max(bno),0)+1 from basket),"
					+ "?,"
					+ "?,"
					+ "?,"
					+ "SYSDATE"
					+ ")";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, Vo.getGcode());
				pstmt.setInt(2, Vo.getBamount());
				pstmt.setString(3, Vo.getUserid());
				cnt = pstmt.executeUpdate();
			}

			}
			catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
			catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
			catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
			finally 							{ JDBCConnection.close(pstmt, conn); }
			return cnt;
		}
		
		//장바구니 삭제
				public int delBasket(int bno) {
					try {
					conn = JDBCConnection.getConnection();
					sql = "delete from basket where bno = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1,bno);
					cnt = pstmt.executeUpdate();

					}
					catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
					catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
					catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
					finally 							{ JDBCConnection.close(pstmt, conn); }
					return cnt;
				}
				
				//장바구니 삭제 (아이디)
				public int delBasket(String sid) {
					try {
					conn = JDBCConnection.getConnection();
					sql = "delete from basket where userid = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1,sid);
					cnt = pstmt.executeUpdate();

					}
					catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
					catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
					catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
					finally 							{ JDBCConnection.close(pstmt, conn); }
					return cnt;
				}
		
		//장바구니 보기(아이디)
		public ArrayList<BasketVO> getBasketList(String userid) {
			ArrayList<BasketVO> list = new ArrayList<BasketVO>();
			try {
			conn = JDBCConnection.getConnection();
			sql = "select a.bno, a.gcode, a.bamount , a.userid, a.bdate, b.gname, b.gimage, b.gprice from basket a inner join goods b on a.gcode = b.gcode where userid =? order by a.bno desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs= pstmt.executeQuery();
			while(rs.next()) {
			BasketVO Vo = new BasketVO();
			Vo.setBno(rs.getInt("bno"));
			Vo.setGcode(rs.getString("gcode"));
			Vo.setBamount(rs.getInt("bamount"));
			Vo.setUserid(rs.getString("userid"));
			Vo.setBdate(rs.getString("bdate"));
			Vo.setGname(rs.getString("gname"));
			Vo.setGimage(rs.getString("gimage"));
			Vo.setGprice(rs.getInt("gprice"));
			
			list.add(Vo);
			}
			}
			catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
			catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
			catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
			finally 							{ JDBCConnection.close(pstmt, conn); }
			return list;
		}		
		//장바구니 정보 가져오기
				public BasketVO getBasket(int bno) {
					BasketVO Vo = new BasketVO();
					try {
					conn = JDBCConnection.getConnection();
					sql = "select a.bno, a.gcode, a.bamount , a.userid, a.bdate, b.gname, b.gimage, b.gprice, b.gno from basket a inner join goods b on a.gcode = b.gcode where bno =? order by a.bno desc";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, bno);
					rs= pstmt.executeQuery();
					if(rs.next()) {
					Vo.setBno(rs.getInt("bno"));
					Vo.setGcode(rs.getString("gcode"));
					Vo.setBamount(rs.getInt("bamount"));
					Vo.setUserid(rs.getString("userid"));
					Vo.setBdate(rs.getString("bdate"));
					Vo.setGname(rs.getString("gname"));
					Vo.setGimage(rs.getString("gimage"));
					Vo.setGprice(rs.getInt("gprice"));
					Vo.setGno(rs.getInt("gno"));
					}
					}
					catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
					catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
					catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
					finally 							{ JDBCConnection.close(pstmt, conn); }
					return Vo;
				}	
				
				//장바구니 변경
				public int EditBasket_Amount(int bno, int qty) {
					try {
					conn = JDBCConnection.getConnection();
					sql = "update basket set bamount=? where bno=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, qty);
					pstmt.setInt(2, bno);
					cnt = pstmt.executeUpdate();
					
					}
					catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
					catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
					catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
					finally 							{ JDBCConnection.close(pstmt, conn); }
					return cnt;
				}
}
