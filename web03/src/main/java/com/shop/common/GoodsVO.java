package com.shop.common;

public class GoodsVO {
	private String gcode;		//상품코드
	private int gno;			//상품번호
	private String gname;		//상품이름
	private String gdetail;		//상품설명
	private String gimage;		//상품이미지
	private int gprice;			//상품가격
	private int gamount;		//상품수량
	private String goption;		//상품옵션1
	private String goption2;	//상품옵션2
	private String gsize;		//상품사이즈
	public String getGcode() {
		return gcode;
	}
	public void setGcode(String gcode) {
		this.gcode = gcode;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getGdetail() {
		return gdetail;
	}
	public void setGdetail(String gdetail) {
		this.gdetail = gdetail;
	}
	public String getGimage() {
		return gimage;
	}
	public void setGimage(String gimage) {
		this.gimage = gimage;
	}
	public int getGprice() {
		return gprice;
	}
	public void setGprice(int gprice) {
		this.gprice = gprice;
	}
	public int getGamount() {
		return gamount;
	}
	public void setGamount(int gamount) {
		this.gamount = gamount;
	}
	public String getGoption() {
		return goption;
	}
	public void setGoption(String goption) {
		this.goption = goption;
	}
	public String getGoption2() {
		return goption2;
	}
	public void setGoption2(String goption2) {
		this.goption2 = goption2;
	}
	public String getGsize() {
		return gsize;
	}
	public void setGsize(String gsize) {
		this.gsize = gsize;
	}
	
	
	public int getGno() {
		return gno;
	}
	public void setGno(int gno) {
		this.gno = gno;
	}
	@Override
	public String toString() {
		return "GoodsVO [gcode=" + gcode + ", gno=" + gno + ", gname=" + gname + ", gdetail=" + gdetail + ", gimage="
				+ gimage + ", gprice=" + gprice + ", gamount=" + gamount + ", goption=" + goption + ", goption2="
				+ goption2 + ", gsize=" + gsize + "]";
	}

}
