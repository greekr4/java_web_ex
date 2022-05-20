package kr.go.haenam.model;

public class tour_commentVO {
	
	private int tour_comment_uninum;//			--댓글고유번호
	private int tour_comment_bnum;//			--글번호
	private String tour_comment_tit;//			--댓글제목
	private String tour_comment_detail;//		--댓글내용
	private String tour_comment_name;//			--작성자
	private String tour_comment_tdate;//		--작성일
	private int tour_comment_thumb;//			--따봉
	
	public int getTour_comment_uninum() {
		return tour_comment_uninum;
	}
	public void setTour_comment_uninum(int tour_comment_uninum) {
		this.tour_comment_uninum = tour_comment_uninum;
	}
	public int getTour_comment_bnum() {
		return tour_comment_bnum;
	}
	public void setTour_comment_bnum(int tour_comment_bnum) {
		this.tour_comment_bnum = tour_comment_bnum;
	}
	public String getTour_comment_detail() {
		return tour_comment_detail;
	}
	public void setTour_comment_detail(String tour_comment_detail) {
		this.tour_comment_detail = tour_comment_detail;
	}
	public String getTour_comment_name() {
		return tour_comment_name;
	}
	public void setTour_comment_name(String tour_comment_name) {
		this.tour_comment_name = tour_comment_name;
	}
	public String getTour_comment_tdate() {
		return tour_comment_tdate;
	}
	public void setTour_comment_tdate(String tour_comment_tdate) {
		this.tour_comment_tdate = tour_comment_tdate;
	}
	public int getTour_comment_thumb() {
		return tour_comment_thumb;
	}
	public void setTour_comment_thumb(int tour_comment_thumb) {
		this.tour_comment_thumb = tour_comment_thumb;
	}
	public String getTour_comment_tit() {
		return tour_comment_tit;
	}
	public void setTour_comment_tit(String tour_comment_tit) {
		this.tour_comment_tit = tour_comment_tit;
	}
			

}
