package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.JDBCConnection;
import com.shop.common.PaymentVO;

public class PaymentDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	public ArrayList<PaymentVO> getPaymentList() {
		ArrayList<PaymentVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from payment order by ono desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<PaymentVO>();
			while(rs.next()) {
				PaymentVO vo = new PaymentVO();
				vo.setOno(rs.getInt("ono"));
				vo.setPaytype(rs.getString("paytype"));
				vo.setPayno(rs.getString("content"));
				vo.setMoney(rs.getInt("money"));
				vo.setSdate(rs.getString("odate"));
				vo.setGno(rs.getInt("gno"));
				vo.setAmount(rs.getInt("amount"));
				vo.setUserid(rs.getString("userid"));
				vo.setRname(rs.getString("rname"));
				vo.setTel(rs.getString("tel"));
				vo.setAddr1(rs.getString("addr1"));
				vo.setAddr2(rs.getString("addr2"));
				vo.setPostcode(rs.getString("postcode"));
				vo.setTransno(rs.getString("transno"));
				vo.setTransco(rs.getString("transco"));
				vo.setRstatus(rs.getString("rstatus"));
				vo.setRdate(rs.getString("pdate"));
				vo.setMemo(rs.getString("memo"));
				list.add(vo);
			}
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
			e.printStackTrace();
		} catch(SQLException e) {
			System.out.println("SQL구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, pstmt, conn);
		}
		return list;
	}
}
