package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.JDBCConnection;
import com.shop.common.OrderVO;

public class OrderDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	public ArrayList<OrderVO> GetOrderList() {
		ArrayList<OrderVO> list = new ArrayList<OrderVO>();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from shop_order order by ORDER_NO desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				OrderVO Vo = new OrderVO();
				Vo.setOrder_seq(rs.getInt("order_seq"));
				Vo.setOrder_state(rs.getInt("ORDER_STATE"));
				Vo.setOrder_pay_state(rs.getInt("ORDER_PAY_STATE"));
				Vo.setOrder_no(rs.getInt("order_no"));
				Vo.setDelivery_user_name(rs.getString("delivery_user_name"));
				Vo.setDelivery_cellphone(rs.getString("delivery_cellphone"));
				Vo.setDelivery_zip_code(rs.getString("DELIVERY_ZIP_CODE"));
				Vo.setDelivery_address(rs.getString("DELIVERY_ADDRESS"));
				Vo.setDelivery_address_details(rs.getString("DELIVERY_ADDRESS_DETAILS"));
				Vo.setOrder_email(rs.getString("order_email"));
				Vo.setUser_id(rs.getString("user_id"));
				Vo.setGtotal(rs.getInt("GTOTAL"));
				Vo.setRegdate(rs.getString("regdate"));
				list.add(Vo);
			}
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		
		
		
		return list;
	}
	
	public ArrayList<OrderVO> GetOrderList(String sid) {
		ArrayList<OrderVO> list = new ArrayList<OrderVO>();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from shop_order where user_id = ? order by ORDER_NO desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				OrderVO Vo = new OrderVO();
				Vo.setOrder_seq(rs.getInt("order_seq"));
				Vo.setOrder_state(rs.getInt("ORDER_STATE"));
				Vo.setOrder_pay_state(rs.getInt("ORDER_PAY_STATE"));
				Vo.setOrder_no(rs.getInt("order_no"));
				Vo.setDelivery_user_name(rs.getString("delivery_user_name"));
				Vo.setDelivery_cellphone(rs.getString("delivery_cellphone"));
				Vo.setDelivery_zip_code(rs.getString("DELIVERY_ZIP_CODE"));
				Vo.setDelivery_address(rs.getString("DELIVERY_ADDRESS"));
				Vo.setDelivery_address_details(rs.getString("DELIVERY_ADDRESS_DETAILS"));
				Vo.setOrder_email(rs.getString("order_email"));
				Vo.setUser_id(rs.getString("user_id"));
				Vo.setGtotal(rs.getInt("GTOTAL"));
				Vo.setRegdate(rs.getString("regdate"));
				list.add(Vo);
			}
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		
		
		
		return list;
	}
	
	
	public int AddOrder(OrderVO Vo) {
		int ono = 0;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select max(order_no) as ono from shop_order";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				ono = rs.getInt("ono") + 1;
				sql = "insert into shop_order values("
						+ "(select nvl(max(ORDER_SEQ),0)+1 from shop_order)," //시퀸스
						+ "1,"	// 주문상태
						+ "1,"	// 결제상태
						+ "?," //주문번호 (ono)	1
						+ "?," //이름				2
						+ "?," //번호				3
						+ "?," //우편번호			4
						+ "?," //어드레스1			5
						+ "?," //어드레스2			6
						+ "?," //이메일			7
						+ "?," //아이디			8
						+ "?," //주문총금액			9
						+ "sysdate"
						+ ")";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, ono);
				pstmt.setString(2, Vo.getDelivery_user_name());
				pstmt.setString(3, Vo.getDelivery_cellphone());
				pstmt.setString(4, Vo.getDelivery_zip_code());
				pstmt.setString(5, Vo.getDelivery_address());
				pstmt.setString(6, Vo.getDelivery_address_details());
				pstmt.setString(7, Vo.getOrder_email());
				pstmt.setString(8, Vo.getUser_id());
				pstmt.setInt(9, Vo.getGtotal());
				cnt = pstmt.executeUpdate();
					if(cnt>0) {
						return ono;
					}
				////////////////////////
			}


		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return cnt;
	}
	
	public int AddOrder_line(int ono, String gcode, int qty) {
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into shop_order_line values("
					+ "(select nvl(max(order_line_seq),0)+1 from shop_order_line),"
					+ "?," 	//주문번호
					+ "?,"	//코드
					+ "?"	//수량
					+ ")";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ono);
			pstmt.setString(2, gcode);
			pstmt.setInt(3, qty);
			cnt = pstmt.executeUpdate();
			}

		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return ono;
	}
	
	
	
	public ArrayList<OrderVO> GetOrderMore(int ono) {
		ArrayList<OrderVO> list = new ArrayList<OrderVO>();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select a.*,b.gname,b.gprice from shop_order_line a "
					+ "inner join goods b on a.gcode = b.gcode where a.order_no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ono);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				OrderVO Vo = new OrderVO();
				Vo.setOrder_line_seq(rs.getInt("order_line_seq"));
				Vo.setOrder_line_no(rs.getInt("order_no"));
				Vo.setGcode(rs.getString("gcode"));
				Vo.setGqty(rs.getInt("gqty"));
				Vo.setGname(rs.getString("gname"));
				Vo.setGprice(rs.getInt("gprice"));
				list.add(Vo);
			}
		}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		
		
		
		return list;
	}
	
	public int Edit_Order_State(String type,int val,int oseq ) {
		try {
			conn = JDBCConnection.getConnection();
			if (type.equals("S")) {
				sql = "update shop_order set order_state = ? where order_seq = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, val);
				pstmt.setInt(2, oseq);
				cnt = pstmt.executeUpdate();
			}else if (type.equals("P")) {
				sql = "update shop_order set order_pay_state = ? where order_seq = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, val);
				pstmt.setInt(2, oseq);
				cnt = pstmt.executeUpdate();
			}
			}
		catch(ClassNotFoundException e) 	{ System.out.println("드라이버 로딩이 실패되었습니다."); e.printStackTrace(); }
		catch(SQLException e) 				{ System.out.println("SQL구문이 처리되지 못했습니다."); e.printStackTrace(); }
		catch(Exception e) 					{ System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다."); e.printStackTrace();	}
		finally 							{ JDBCConnection.close(rs, pstmt, conn); }
		return cnt;
	}

}
