package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.JDBCConnection;
import com.shop.common.Shop_MemberVO;
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
			sql = "select * from goods a inner join shop_ccode b on substr(a.gcode,1,1) = b.ccode inner join shop_dcode c on substr(a.gcode,1,3) = c.dcode order by a.gno desc";
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
				Vo.setGoption(rs.getString("goption"));
				Vo.setGoption2(rs.getString("goption2"));
				Vo.setGsize(rs.getString("gsize"));
				Vo.setGcate1(rs.getString("ccode_res"));
				Vo.setGcate2(rs.getString("dcode_res"));
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
		public GoodsVO GetGoods(String gcode){
			GoodsVO Vo = new GoodsVO();
			try {
				conn = JDBCConnection.getConnection();
				sql = "select * from goods where gcode=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, gcode);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					Vo.setGcode(rs.getString("gcode"));
					Vo.setGno(rs.getInt("gno"));
					Vo.setGname(rs.getString("gname"));
					Vo.setGdetail(rs.getString("gdetail"));
					Vo.setGimage(rs.getString("gimage"));
					Vo.setGprice(rs.getInt("gprice"));
					Vo.setGamount(rs.getInt("gamount"));
					Vo.setGoption(rs.getString("goption"));
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
		//상품 상세 오버
				public GoodsVO GetGoods(int gno){
					GoodsVO Vo = new GoodsVO();
					try {
						conn = JDBCConnection.getConnection();
						sql = "select * from goods where gno=?";
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
							Vo.setGoption(rs.getString("goption"));
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
				
				sql = "select count(*) as cnt from goods where gcode like ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, Vo.getGcode()+"%");
				rs = pstmt.executeQuery();
				if(rs.next()) {
					int count = rs.getInt("cnt");
					String code = Vo.getGcode();
					String code2 = "";
					if (count < 10) {
						code2 = "000";
						code = code+code2+(count+1);
						Vo.setGcode(code);
					} else if (count < 100) {
						code2 = "00";
						code = code+code2+(count+1);
						Vo.setGcode(code);
					} else if (count < 1000) {
						code2 = "0";
						code = code+code2+(count+1);
						Vo.setGcode(code);
					} else
					{
						code = code+code2+(count+1);
						Vo.setGcode(code);
					}
					System.out.println(Vo.getGcode());
					sql = "insert into goods values("
							+ "?,(select nvl(max(gno),0)+1 from goods),?,?,?,?,?,?,?,?)";
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
								+ "gcode = ?,"
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
						pstmt.setString(1, Vo.getGcode());
						pstmt.setString(2, Vo.getGname());
						pstmt.setString(3, Vo.getGdetail());
						pstmt.setString(4, Vo.getGimage());
						pstmt.setInt(5, Vo.getGprice());
						pstmt.setInt(6, Vo.getGamount());
						pstmt.setString(7, Vo.getGoption());
						pstmt.setString(8, Vo.getGoption2());
						pstmt.setString(9, Vo.getGsize());
						pstmt.setInt(10, Vo.getGno());
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
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, gno);
				cnt = pstmt.executeUpdate();
			}
			catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
			catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
			catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
			finally 							{ JDBCConnection.close(rs, pstmt, conn); }
			return cnt;
		}		
		//상품 <-> 장바구니
		public ArrayList<GoodsVO> GetGoodsList_Basket(String s_gcode){
			ArrayList<GoodsVO> list = null;
			try {
				conn = JDBCConnection.getConnection();
				sql = "select * from goods where gcode = ? order by gno desc";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, s_gcode);
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
					Vo.setGoption(rs.getString("goption"));
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
	
}
