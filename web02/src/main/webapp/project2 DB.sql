select * from member;
select * from tour_board;
select * from tour_comment;

select a.tour_id, b.ccode_res, c.dcode_res,a.tour_num,a.tour_name,a.tour_tel,a.tour_address,a.tour_img1 from tour_view a inner join tour_ccode b on substr(a.tour_id,1,1) = b.ccode inner join tour_dcode c on substr(a.tour_id,1,3) = c.dcode order by a.tour_id"

select a.tour_board_num, a.tour_board_pidno,a.tour_board_tit,a.tour_board_detail,a.tour_board_writer,a.tour_board_cdate,a.tour_board_views,a.tour_board_thumb
,a.tour_board_img1,a.tour_board_img2,a.tour_board_img3,a.tour_board_img4,
b.tour_comment_detail,b.tour_comment_name,b.tour_comment_tdate,b.tour_comment_thumb
from tour_board a 
inner join tour_comment b on a.tour_board_num = b.tour_comment_bnum
where tour_board_pidno='A110001';


select * from tour_comment where TOUR_comment_uninum=3;
select * from tour_board,tour_comment;