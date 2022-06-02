<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
table {	border-collapse: collapse; }
td, th {	border: #ABF200 solid; padding:14px; }
</style>
</head>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>	
	$(document).ready(function() {		
		$("#con").hide();		
		$("#b").click(function() {						
			$.ajax({				
				url : "MemberJSONCtrl", // MemberJSONCtrl의 JSONObject 값을 가져옴
				dataType : "json", // 데이터 타입을 json
				contentType: 'application/x-www-form-urlencoded; charset=euc-kr', // UTF-8처리
				cache : false, // true : 새로 고침 동작을 하지 않고, 저장된 캐시에서 불러오게됨, false:새로 불러옴 
				success : function(data) {
					$("#con").empty(); //id가 con을 초기화					
					$("<table>").css({						
						backgroundColor : "#ececec",						
						border : "solid 3px gold",
						margin : "20px auto",
						}).appendTo("#con"); // 테이블을 생성하고 그 테이블을 div에 추가함					
						var key = Object.keys(data["Memberlist"][0]); // 키값(항목명)을 가져옴					
						$("<tr>" , {												
							html : "<th>"+key[9]+"</th>"+  // 컬럼명들								
							"<th>" + key[2] + "</th>"+								
							"<th>" + key[11] + "</th>"+								
							"<th>" + key[5] + "</th>"+
							"<th>" + key[14] + "</th>"+
							"<th>" + key[10] + "</th>"+
							"<th>" + key[6] + "</th>"+
							"<th>" + key[0] + "</th>"+
							"<th>" + key[7] + "</th>"+
							"<th>" + key[13] + "</th>"+
							"<th>" + key[3] + "</th>"+
							"<th>" + key[12] + "</th>"+
							"<th>" + key[1] + "</th>"
							}).appendTo("table") // 이것을 테이블에붙임					
							$.each(data.Memberlist, function(index, Memberlist) { // 이치를 써서 모든 데이터들을 배열에 넣음												
								var items = [];						
								items.push("<td>" + Memberlist.mno + "</td>"); // 여기에 id pw addr tel의 값을 배열에 넣은뒤						
								items.push("<td>" + Memberlist.mid + "</td>");						
								items.push("<td>" + Memberlist.mpw + "</td>");						
								items.push("<td>" + Memberlist.mname + "</td>");
								items.push("<td>" + Memberlist.mtel + "</td>");			
								items.push("<td>" + Memberlist.maddress + "</td>");		
								items.push("<td>" + Memberlist.memail + "</td>");	
								items.push("<td>" + Memberlist.mnick + "</td>");			
								items.push("<td>" + Memberlist.mcash + "</td>");			
								items.push("<td>" + Memberlist.mpoint + "</td>");			
								items.push("<td>" + Memberlist.mgrade + "</td>");	
								items.push("<td>" + Memberlist.mjday2 + "</td>");			
								items.push("<td>" + Memberlist.mlatest2 + "</td>");			
								$("<tr/>", {							
									html : items // 티알에 붙임,						
								}).appendTo("table"); // 그리고 그 tr을 테이블에 붙임					
							});//each끝				
						}			
				});
				$("#con").fadeToggle("slow")											
			});	
		});
</script>
<body>	
<input type="button" id="b" value="회원정보보기">	
<div id="con"></div>
</body>
</html>