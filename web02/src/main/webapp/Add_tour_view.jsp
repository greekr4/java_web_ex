<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>tour_view_add입니다.</h2>
    <form action="/web02/AddTour_viewCtrl" method="post">
     <table>
        <tr>
            <th>투어ID</th>
            <td>	<!--  <input type="text" name="tour_add_id" id="tour_add_id" required> -->
	        <select name="sel1" id="sel1" onchange="selfn()">
		            <option value="A">자연관광</option>
		            <option value="B">관광명소</option>
		            <option value="C">문화재</option>
		            <option value="D">코스관광</option>
		            <option value="E">수련시설</option>
		            <option value="F">축제</option>
		            <option value="G">음식</option>
		            <option value="H">숙박</option>
		            <option value="I">교통</option>
            </select>

       		 <select name="sel2" id="sel2">
	            <option value="11">산</option>
	            <option value="12">등산/산책로</option>
	            <option value="13">해수욕장</option>
            </select>           
            </td>
            
            
        </tr>
        <tr>
            <th>이름</th>
            <td><input type="text" name="tour_add_name" id="tour_add_name" required></td>
        </tr>
        <tr>
            <th>주소</th>
            <td><input type="text" name="tour_add_address" id="tour_add_address" required></td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td><input type="text" name="tour_add_tel" id="tour_add_tel" required></td>
        </tr>
        <tr>
            <th>이미지경로1</th>
            <td>
            <input type="text" name="tour_add_img1" id="tour_add_img1">
            <label><input type="checkbox" name="img_default" id="img_default" onchange="defaultimg()" checked>기본값</label>
            </td>
        </tr>
        <tr>
            <th>이미지경로2</th>
            <td><input type="text" name="tour_add_img2" id="tour_add_img2"></td>
        </tr>
        <tr>
            <th>이미지경로3</th>
            <td><input type="text" name="tour_add_img3" id="tour_add_img3"></td>
        </tr>
        <tr>
            <th>이미지경로4</th>
            <td><input type="text" name="tour_add_img4" id="tour_add_img4"></td>
        </tr>

     </table>
            <input type="submit" value="전송">

    </form>
    
    <script>
	var sel1 = document.getElementById("sel1");
	var sel2 = document.getElementById("sel2");
    var listA = ["산","등산/산책로","해수욕장"];
    var listB = ["사찰","주거건물","박물관/전시관","해남 8경"];
    var listC = ["국가지정문화재","도지정문화재","유적건조물"];
    var listD = ["일정별코스","권역별코스","이야기별코스","자전거코스"];
    var listE = ["템플스테이","농어촌체험","생태체험"];
    var listF = ["명량대첩축제","땅끝매화축제","흑석산철쭉제","땅끝해넘이해맞이축제","문화행사","기타행사","달마고도 힐링축제","해남 미남 축제"];
    var listG = ["해남명물 8미","해남군 대표음식점","해남 제철 맛","해남 추천 음식","읍면별 음식점"];
    var listH = ["호텔/리조트","모텔/여관","민박/펜션","휴양림/캠핑카","유스호스텔","황토나라테마촌"];
    var listI = ["해남브랜드","해남특산물","해남미소","전통시장현황","주조장"];
    var listJ = ["농어촌버스","직행직통버스","고속버스","우수영여객선 터미널","땅끝여객선","열차항공"];

	function selfn(){
        var num = 11;
        sel2.innerHTML = ""
		if (sel1.value == "A"){
            for(var i=0;i<listA.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listA[i]+"</option>";
            }
		}else if (sel1.value == "B"){
            for(var i=0;i<listB.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listB[i]+"</option>";
            }
		}else if (sel1.value == "C"){
            for(var i=0;i<listC.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listC[i]+"</option>";
            }
		}else if (sel1.value == "D"){
            for(var i=0;i<listD.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listD[i]+"</option>";
            }
		}else if (sel1.value == "E"){
            for(var i=0;i<listE.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listE[i]+"</option>";
            }
		}else if (sel1.value == "F"){
            for(var i=0;i<listF.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listF[i]+"</option>";
            }
		}else if (sel1.value == "G"){
            for(var i=0;i<listG.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listG[i]+"</option>";
            }
		}else if (sel1.value == "H"){
            for(var i=0;i<listH.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listH[i]+"</option>";
            }
		}else if (sel1.value == "I"){
            for(var i=0;i<listI.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listI[i]+"</option>";
            }
		}else if (sel1.value == "J"){
            for(var i=0;i<listJ.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listJ[i]+"</option>";
            }
		}
		
	}
	
		var img1 = document.getElementById("tour_add_img1");
		var img2 = document.getElementById("tour_add_img2");
		var img3 = document.getElementById("tour_add_img3");
		var img4 = document.getElementById("tour_add_img4");
		var ckbox = document.getElementById("img_default");
		defaultimg();
		function defaultimg(){
		if (ckbox.checked == true){
			img1.readOnly = true;
			img2.readOnly = true;
			img3.readOnly = true;
			img4.readOnly = true;
			img1.style = "background-color: #555;"
			img2.style = "background-color: #555;"	
			img3.style = "background-color: #555;"
			img4.style = "background-color: #555;"
			
			
		} else if(ckbox.checked == false){
			img1.readOnly = false;
			img2.readOnly = false;
			img3.readOnly = false;
			img4.readOnly = false;
			img1.style = "background-color: ;"
			img2.style = "background-color: ;"	
			img3.style = "background-color: ;"
			img4.style = "background-color: ;"
		}
		}
		
		
 /*
 -- A : 자연관광 - 11:산 12:등산/산책로 13:해수욕장
 -- B : 관광명소 - 11:사찰 12:주거건물 13:박물관/전시관 14:해남 8경
 -- C : 문화재 - 11:국가지정문화재 12:도지정문화재 13:유적건조물
 -- D : 코스관광 - 11:일정별코스 12:권역별코스 13:이야기별코스 14:자전거코스
 -- E : 수련시설 - 11:템플스테이 12:농어촌체험 13:생태체험
 -- F : 축제 - 11:명량대첩축제 12:땅끝매화축제 13:흑석산철쭉제 14:땅끝해넘이해맞이축제 15:문화행사 16:기타행사 17:달마고도 힐링축제 18:해남 미남 축제
 -- G : 음식 - 11:해남명물 8미 12:해남군 대표음식점 13:해남 제철 맛 14:해남 추천 음식 15:읍면별 음식점
 -- H : 숙박 - 11:호텔/리조트 12:모텔/여관 13:민박/펜션 14:휴양림/캠핑카 15:유스호스텔 16:황토나라테마촌
 -- I : 쇼핑 - 11:해남브랜드 12:해남특산물 13:해남미소 14:전통시장현황 15:주조장
 -- J : 교통 - 11:농어촌버스 12:직행직통버스 13:고속버스 14:우수영여객선 터미널 15:땅끝여객선 16:열차항공
 */

    </script>
</body>
</html>