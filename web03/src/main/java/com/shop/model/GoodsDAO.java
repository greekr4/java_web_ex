package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.JDBCConnection;
import com.shop.common.GoodsVO;

public class GoodsDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	//상품 목록
	public ArrayList<GoodsVO> GetGoodsList(){
		ArrayList<GoodsVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from goods order by gno desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<GoodsVO>();
			while(rs.next()) {
				GoodsVO Vo = new GoodsVO();
				Vo.setGcode(rs.getString("gcode"));
				Vo.setGno(rs.getInt("gno"));
				Vo.setGname(rs.getString("gname"));
				Vo.setGdetail(rs.getString("gdetail"));
				Vo.setGimage(rs.getString("gimage"));
				Vo.setGprice(rs.getInt("gprice"));
				Vo.setGamount(rs.getInt("gamount"));
				Vo.setGoption(rs.getString("gopton"));
				Vo.setGoption2(rs.getString("goption2"));
				Vo.setGsize(rs.getString("gsize"));
				list.add(Vo);
			}
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return list;
	}
	
	//상품 상세
		public GoodsVO GetGoods(int gno){
			GoodsVO Vo = new GoodsVO();
			try {
				conn = JDBCConnection.getConnection();
				sql = "select * from goods where gcode=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, gno);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					Vo.setGcode(rs.getString("gcode"));
					Vo.setGno(rs.getInt("gno"));
					Vo.setGname(rs.getString("gname"));
					Vo.setGdetail(rs.getString("gdetail"));
					Vo.setGimage(rs.getString("gimage"));
					Vo.setGprice(rs.getInt("gprice"));
					Vo.setGamount(rs.getInt("gamount"));
					Vo.setGoption(rs.getString("gopton"));
					Vo.setGoption2(rs.getString("goption2"));
					Vo.setGsize(rs.getString("gsize"));
				}
			}
			catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
			catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
			catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
			finally 							{ JDBCConnection.close(rs, pstmt, conn); }
			return Vo;
		}
		
		//상품 등록
		public int AddGoods(GoodsVO Vo){
			try {
				conn = JDBCConnection.getConnection();
				sql = "insert into goods values("
						+ "?,(select nvl(max(gno),0)+1 from goods),?,?,?,?,?,?,?,?);";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, Vo.getGcode());
				pstmt.setString(2, Vo.getGname());
				pstmt.setString(3, Vo.getGdetail());
				pstmt.setString(4, Vo.getGimage());
				pstmt.setInt(5, Vo.getGprice());
				pstmt.setInt(6, Vo.getGamount());
				pstmt.setString(7, Vo.getGoption());
				pstmt.setString(8, Vo.getGoption2());
				pstmt.setString(9, Vo.getGsize());
				cnt = pstmt.executeUpdate();
			}
			catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
			catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
			catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
			finally 							{ JDBCConnection.close(rs, pstmt, conn); }
			return cnt;
		}
		//상품 수정
				public int EditGoods(GoodsVO Vo){
					try {
						conn = JDBCConnection.getConnection();
						sql = "update goods set "
								+ "gname = ?,"
								+ "gdetail = ?,"
								+ "gimage = ?,"
								+ "gprice = ?,"
								+ "gamount = ?,"
								+ "goption = ?,"
								+ "goption2 = ?,"
								+ "gsize = ?"
								+ "where gno = ?";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, Vo.getGname());
						pstmt.setString(2, Vo.getGdetail());
						pstmt.setString(3, Vo.getGimage());
						pstmt.setInt(4, Vo.getGprice());
						pstmt.setInt(5, Vo.getGamount());
						pstmt.setString(6, Vo.getGoption());
						pstmt.setString(7, Vo.getGoption2());
						pstmt.setString(8, Vo.getGsize());
						pstmt.setInt(9, Vo.getGno());
						cnt = pstmt.executeUpdate();
					}
					catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
					catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
					catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
					finally 							{ JDBCConnection.close(rs, pstmt, conn); }
					return cnt;
				}		
		//상품 삭제
		public int DelGoods(int gno){
			try {
				conn = JDBCConnection.getConnection();
				sql = "delete from goods where gno = ?";
				pstmt.setInt(1, gno);
				cnt = pstmt.executeUpdate();
			}
			catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
			catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
			catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
			finally 							{ JDBCConnection.close(rs, pstmt, conn); }
			return cnt;
		}		
	
	
}
