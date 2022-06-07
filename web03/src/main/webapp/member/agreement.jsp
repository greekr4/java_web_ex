<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태균낚시마트 - 회원 약관</title>
<!--  -->
<script src="../js/jquery-latest.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/ft.css">
<!--  -->





<style>
 .agree{
 clear:both;
 width:1200px;
 margin:0 auto;
 margin-top:50px;
 text-align: center;
 }
 *{margin: 0;padding: 0;box-sizing: border-box}
body{background-color: #f7f7f7;}
ul>li{list-style: none}
a{text-decoration: none;}
.clearfix::after{content: "";display: block;clear: both;}


#joinForm{width: 460px;margin: 0 auto;}
ul.join_box{border: 1px solid #ddd;background-color: #fff;}
.checkBox,.checkBox>ul{position: relative;}
.checkBox>ul>li{float: left;}
.checkBox>ul>li:first-child{width: 85%;padding: 15px;font-weight: 600;color: #888;}
.checkBox>ul>li:nth-child(2){position: absolute;top: 50%;right: 30px;margin-top: -12px;}
.checkBox textarea{width: 96%;height: 200px; margin: 0 2%;background-color: #f7f7f7;color: #888; border: none;
resize: none;


}
.footBtwrap{margin-top: 15px;}
.footBtwrap>li{float: left;width: 50%;height: 60px;}
        button {
            display: inline-block;
            padding: 12px 24px;
            background: rgb(220, 220, 220);
            font-weight: bold;
            color: rgb(120, 120, 120);
            border: none;
            outline: none;
            border-radius: 3px;
            cursor: pointer;
            transition: ease .3s;
        }

        button:hover {
            background: #8BC34A;
            color: #ffffff;
        }
 </style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="../hd.jsp"></jsp:include>
</header>
<div class="ct">
<div class="agree">
   <div id="joinForm">
        <ul class="join_box">
            <li class="checkBox check01">
                <ul class="clearfix">
                    <li style="font-size: 15px;">이용약관, 개인정보 수집 및 이용에 모두 동의합니다.</li>
                    <li class="checkAllBtn">
                        <input type="checkbox" id="ck3" class="chkAll" onclick="checkall()">
                    </li>
                </ul>
            </li>
            <li class="checkBox check02">
                <ul class="clearfix">
                    <li>이용약관 동의(필수)</li>
                    <li class="checkBtn">
                        <input type="checkbox" id="ck1"> 
                    </li>
                </ul>
                <textarea name="" id="" readonly>
제1장 총칙
제1조 (목적)
이 약관은 전기통신사업법령 및 정보통신망이용촉진 및 정보보호 등에 관한 법률에 따라 한겨레신문㈜ 및 관계사{씨네21 ㈜(이상, 자회사) ㈜한겨레플러스(이상, 제휴사)} (이하 `회사`)에서 제공하는 모든 서비스(이하 `서비스`)의 이용절차,조건등 서비스 이용과 관련한 회사와 회원의 권리 및 의무에 관련된 사항을 규정함을 목적으로 합니다.

제2조 (약관의 효력과 변경)
1.본 약관은 회원이 신규 가입 시 "약관에 동의합니다"라는 물음에 회원이 "동의" 버튼을 클릭 하는 것으로 효력이 발생됩니다.
2.회사는 필요한 경우 약관을 변경할 수 있으며, 변경된 약관은 적용일 전 7일간 온라인 상의 공지나 전자 우편 등의 방법을 통해 회원에게 공지되고 적용일에 효력이 발생됩니다.
3.회원은 변경된 약관에 동의하지 않을 경우, 서비스 이용을 중단하고 탈퇴할 수 있습니다.
4.약관이 변경된 이후에도 계속적으로 서비스를 이용하는 경우에는 회원이 약관의 변경 사항에 동의한 것으로 봅니다.
제3조 (약관 외 준칙)
1.이 약관에 명시되지 않은 사항이 전기통신기본법, 전기통신사업법, 기타 관계법령에 규정 되어 있을 경우에는 그 규정에 따릅니다.
2.회사는 약관 이외에 개별 서비스에 대한 세부적인 사항을 정할 수 있으며, 그 내용은 해당 서비스의 이용안내 및 별도의 이용 동의 절차를 통해 공지합니다.
제2장 회원 가입과 서비스 이용
제4조 (이용계약)
서비스 이용계약은 회원이 회사가 정한 약관에 동의하고, 회사에 가입 및 서비스 이용을 신청하며, 회사가 이를 허락하는 것 으로 이루어집니다.

제5조 (이용신청)
1.본 서비스를 이용하기 위해서는 회사가 정한 소정의 가입신청서에 이용자의 정보를 기록해야 합니다.
2.가입신청 양식에 기재된 모든 이용자 정보는 반드시 실제 정보와 동일해야 합니다. 실제 정보를 입력하지 않거나 사실과 다른 정보를 입력한 사용자는 법적인 보호를 받을 수 없습니다.
제6조 (이용신청의 승낙)
1.회사는 회원이 모든 사항을 정확히 기재하여 신청할 경우 서비스 이용을 승낙합니다.
단, 아래의 경우는 승낙을 거부하거나 취소할 수 있습니다.
a .실명이 아닌 경우
b .본인의 주민등록번호가 아닌 경우
c .이용신청 시 필요내용을 허위로 기재하여 신청한 경우
d .사회의 안녕 질서 또는 미풍양속을 저해할 목적으로 신청한 경우
e .전기통신기본법, 전기통신사업법, 정보통신 윤리강령, 정보통신 윤리위원회 심의규정, 프로그램 보호법 및 기타관련 법령과 약관이 금지하는 행위를 한 경우
f .마호에 해당하는 사유로 형사처벌을 받은 경우
g .마호에 해당하는 사유로 다른 서비스제공회사로부터 서비스 이용이 거절된 경력이 있는 경우
h .기타 회사가 정한 이용신청 요건에 맞지 않을 경우
i .만14세 미만의 아동이 부모 등의 법정대리인의 동의를 얻지 않은 경우
2.회사는 기술적인 이유나 정책 등의 이유로 인해 이용신청의 승낙을 보류할 수 있습니다.
3.회사는 회원 가입을 위하여 필요한 정보를 요구할 수 있으며, 회원가입 이후에도 추가정보의 입력을 요구할 수 있습니다.
회원가입 시 요구하는 구체적인 정보는 개인정보 취급방침에서 확인하실 수 있습니다.
4.회사는 회원이 온/오프라인 이벤트에 참여하거나, 상품 구매시에 제출 또는 취득한 개인정보를 보유할 수 있으며,
동 정보를 회원이 가입시 입력한 회원의 정보에 추가 또는 수정할 수 있습니다.
5.4 항의 내용에 따라 추가 또는 수정하여 보유할 수 있는 개인정보는 다음과 같습니다. 전자우편주소, 우편번호, 주소,
전화번호, 이동전화번호, 이벤트 응모일, 상품 구매일, 상품 구매내역, 자동차보험 만기일
제7조 (회원 아이디 관리)
1.회원의 아이디와 비밀번호에 관한 모든 관리책임은 회원에게 있습니다.
2.회원이 등록한 아이디 및 비밀번호에 의하여 발생되는 사용상의 과실 또는 제 3자에 의한 부정사용 등에 대한 모든 책임은 해당 회원에게 있습니다.
제8조 (계약 사항의 변경)
회원은 서비스이용 신청 시 기재한 사항이 변경되었을 경우, 즉시 수정하여야 합니다.

제3장 개인 정보의 보호 및 이용
제9조 (개인정보 취급방침)
1.회사는 회원의 개인정보를 보호하며, 회사는 그 내용을 회사의 각 서비스의 메인화면 과 개인정보관리 페이지에 '개인정보 취급방침'이란 이름으로 공지합니다.
a .개인정보 취급방침'에서 언급하고 있는 주요 내용은 다음과 같습니다.
b .개인정보관리책임자의 성명/소속부서/지위/전화번호/전자우편 주소
c .개인정보의 구체적인 수집목적 및 이용목적
d .동의 철회, 열람 또는 정정 요구 등 이용자의 권리와 그 행사방법
e .서비스제공자가 수집하고자 하는 개인정보항목
f .수집하는 개인정보의 보유·이용기간 및 보유이유
g .기타 개인정보에 대한 가공 또는 관리 방식
h .쿠키의 운영에 관한 사항
i .개인정보 관련 불만처리에 관한 사항
j .개인정보의 가공목적·가공방식, 가공된 개인정보의 이용·관리 등에 관한 사항
k .개인정보 위탁업체 및 위탁업체에 제공하는 정보
l .기타 개인정보의 보호를 위하여 필요한 사항
2.회사는 '개인정보 취급방침'의 내용이 수정, 변경될 경우 변경 이전에 그 내용을 인터넷홈페이지, 전자우편 등의 방법을 통해 공지합니다.
제10조 (개인정보의 이용)
1.회사는 회원의 동의를 받아 회원이 회원가입 시 제출한 개인정보를 상호 공유할 수 있습니다.
2.회사는 약관 개정일 이전에 가입한 한겨레신문㈜ 및 ㈜한겨레플러스 회원의 동의를 받아 회원의 개인정보를 공유할 수 있습니다.
3.회사는 회사와 제휴를 맺은 사이트와 회사의 사이트를 편리하게 이용할 수 있도록 하기 위해 회원의 동의를 받아 회원의 정보를 제휴 사이트들과 공유할 수 있으며, 공유를 위해 회원의 컴퓨터에 쿠키를 전송할 수 있습니다.
4.회사는 서비스 제공으로 알게 된 회원의 신상정보를 본인의 동의 없이 제3자에게 누설, 배포하지 않습니다.
단, 다음 각 호에 해당하는 경우에는 예외로 합니다.
a .금융실명거래 및 비밀보장에 관한 법률, 신용정보의 이용 및 보호에 관한 법률,전기통신기본법, 전기통신 사업법, 지방세법, 소비자보호법,한국은행법, 형사소송법 등 법령에 특별한 규정이 있는 경우
b .통계작성/학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우
5.회사는 회원의 전체 또는 일부 정보를 업무와 관련된 통계 자료로 사용할 수 있습니다.
6.회사는 회사의 사업 내용을 회원에게 전화 혹은 전자우편, 우편물 발송, 휴대폰 단문 메시지 전송 등의 방법으로 홍보하고 상품 구입 및 가입을 권유할 수 있습니다.
7.회사는 양질의 서비스를 제공하기 위해 여러 비즈니스 파트너와 제휴를 맺어 회원정보를 위탁관리 하게 할 수 있습니다.
그럴 경우 회사는 약관에 위탁관리 업체명 및 목적, 내용을 밝혀 회원의 동의를 받습니다. 자세한 개인정보 위탁관리 업체는 개인정보 취급방침에서 확인하실 수 있습니다.
8.회원의 개인정보 이용에 대한 동의는 회원이 본 약관에 동의(2조4항에따른 동의로 보는 경우 포함)하는 것으로서 갈음합니다.
제4장 계약 해지
제11조 (계약 해지)
회원이 서비스 이용 계약을 해지 하고자 할 때는 개인정보수정의 '회원탈퇴' 메뉴에서 회원탈퇴를 신청하시면 됩니다. 탈퇴를 신청하시면 즉시 탈퇴처리가 완료되며, 탈퇴후 7일 동안은 회사에 다시 가입하실 수 없습니다.

제12조 (탈퇴 회원의 개인정보 이용)
1.회사는 회원정보를 회원이 탈퇴하는 시점으로부터 1년까지 보유할 수 있습니다.
2.회사가 보관하고 있는 탈퇴 회원의 정보는 회원의 가입이력관리와 지적재산권 관리,개인정보보호를 위해서만 활용할 수 있습니다.
3.단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.
-표시/광고에 관한 기록 : 6개월
-계약 또는 청약철회 등에 관한 기록 : 5년
-대금결제 및 재화 등의 공급에 관한 기록 : 5년
제13조 (자격상실)
다음 각 항의 사유에 해당하는 경우 회사는 사전 통보 없이, 이용계약을 해지하거나 기간을 정하여 서비스 이용을 중지 또는 이용계약 해지 후 무기한 가입제한 할 수 있습니다.

1.가입시 또는 정보변경시 제6조 3항의 회원정보를 누락시키거나 허위 기재한 경우
2.미풍양속을 저해하는 비속한 아이디, 필명, 별명을 사용한 경우
3.타인의 아이디와 비밀번호, 주민등록번호 등 회원정보를 수집, 저장, 도용한 경우
4.회사 임직원, 운영자 등을 포함한 타인을 사칭하는 행위
5.회사, 다른 회원 또는 제3자의 지적재산권을 침해하는 경우
6.사회의 안녕과 질서, 미풍양속을 해치는 행위를 하는 경우
7.타인의 명예를 훼손, 모욕, 스톡 등 괴롭히거나 불이익을 주는 행위를 한 경우
8.정보통신망에 장애를 일으킬 수 있는 행위를 하는 경우
9.회사의 허락 없이 회사의 서비스를 이용해 영리행위를 하는 경우
10.회사가 허락하지 않은 방법으로 회사가 운영, 관리하는 포인트를 취득한 경우
11.전기통신기본법, 전기통신사업법, 정보통신 윤리강령, 정보통신 윤리위원회 심의규정, 프로그램 보호법 및 기타관련 법령과 약관이 금지하는 행위를 한 경우
제5장 서비스 제공 및 이용
제14조 (서비스의 제공)
1.회사는 이 약관에서 정한 바에 따라 지속적이고 안정적인 서비스의 제공을 위해 노력합니다.
2.회사는 서비스에 장애가 발생할 경우 그 복구에 최선을 다합니다. 다만 시스템점검, 천재지변, 비상사태, 기타 부득이한 경우에는 서비스를 일시적으로 중단할 수 있습니다.
3.회사는 이용계약의 체결, 계약사항의 변경, 계약해지 등 회원과의 계약사항의 처리에 있어 회원에게 편의를 제공하도록 노력합니다.
제15조 (정보의 제공)
1.회사는 회원에게 유용하다고 판단되는 정보나 광고를 전자우편의 방법으로 전달할 수 있으며, 회원은 이를 원하지 않을 경우 개인정보 관리 메뉴에서 수신을 거부할 수 있습니다.
2.전자우편의 수신을 거부한 경우에도 회원약관, 개인정보 취급방침, 기타 중대한영업정책의 변경이나 서비스 변경 등 회원이 반드시 알고 있어야 하는 공지사항이 있는 경우 수신 거부와 관계없이 공지메일을 발송할 수 있습니다.
제16조 (회원의 게시물)
1. 게시물이라 함은 회사의 각종 게시판에 회원이 게시한 게시물, 질문, 답변, 자료를 모두 총칭합니다.
2.회사는 게시물의 포괄적 사용권과 서비스 내 게시권을 갖습니다.
3.회원이 게시하는 게시물 및 정보로 인해 발생하는 손실이나 문제는 회원 개인의 책임이며, 회사는 이에 대하여 책임을 지지 않습니다. 단 회사의 고의에 의한 경우에는 그렇지 않습니다.
4.회원의 게시물로 인하여 제3자의 회사에 대한 청구, 소송, 기타 일체의 분쟁이 발생한 경우 회원은 그 해결에 소요되는 비용을 부담하고 회사를 위하여 분쟁을 처리하여야 하며, 회사가 제3자에게 배상하거나 회사에 손해가 발생한 경우 회원은 회사에 배상하여야 합니다.
5.회사는 회원의 게시물이 다음 각 항에 해당되는 경우에는 사전통지 없이 삭제 합니다.
a .제3자를 비방하거나 중상 모략하여 명예를 손상시키는 경우
b .공공질서, 미풍양속에 저해되는 내용인 경우
c .회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우
d .회사에서 규정한 게시기간을 초과한 경우
e .상업성이 있는 게시물이나 돈벌이 광고, 행운의 편지 등을 게시한 경우
f .사이트의 개설취지에 맞지 않을 경우
g .기타 관계법령을 위반한다고 판단되는 경우
6.5 항의 원인으로 발생한 각종 손해 및 관계기관에 의한 법적 조치에 따르는 책임은 회원 본인이 집니다.
7.회사는 5항의 이유로 삭제한 게시물의 보관의무를 갖지 않습니다.
8.회사는 모든 게시물을 검사 또는 검열할 의무를 갖지 않습니다.
9.회사는 탈퇴한 회원의 게시물을 삭제할 의무를 갖지 않습니다.
제17조 (회원 게시물의 이용)
1.회사는 회원이 등록한 게시물을 이용해 가공, 출판, 판매 등을 할 수 있으며, 비즈니스 파트너 혹은 미디어에게 게시물의 내용을 제공할 수 있습니다.
2.회사는 회원 게시물을 이용해 출판을 하고자 할 경우 전화, 팩스, 전자우편 등의 절차를 통해 사전에 회원의 동의를 얻어야 합니다. 단, 회원정보에 등록된 연락처가 사실과 다르거나 회원이 회사의 연락에 응하지 않아 사전에 동의를 구하지 못한 경우, 회사는 출판된 후에 동의 절차를 구할 수 있습니다.
3.출판에 따라 회원에게 지급되는 원고료나 제공되는 혜택은 출판 동의과정에서 함께 공지 합니다.
4.회사는 다른 업체나 인터넷사이트와의 제휴에 따라 회원 게시물을 제휴업체에게 제공할 수 있습니다. 제휴업체에게 회원의 게시물을 제공할 경우 회사는 회원의 동의 없이 회원의 아이디를 제외한 개인정보를 제공하지 않습니다.
제18조 (게시물의 지적재산권)
서비스에 게시된 게시물에 대한 저작권과 책임은 게시자에게 있습니다. 또, 게시물이 타인의 지적재산권을 침해한 경우 게시자가 전적인 책임을 집니다.

제19조 (유료 서비스)
1.회사의 회원가입 및 서비스는 기본적으로 무료입니다. 하지만 별도의 유료 서비스의 경우 해당 서비스에 명시된 요금을 지불하여야만 이용할 수 있습니다.
2.유료서비스의 종류와 요금은 수시로 변경될 수 있습니다.
3.이용자가 유료서비스를 이용할 경우 요금의 결제와 본인 확인을 위해 회원정보에 입력된 다음 내용을 이용하거나 추가 입력을 요구할 수 있으며, 요금결제 대행업체가 결제과정에서 해당 정보를 넘겨받아 이용할 수 있습니다.
a .납입자 이름
b .주민등록번호
c .결제방법
d .선택한 결제방법에 따르는 추가입력 사항
e .연락처
4.회원이 선택한 결제방법의 이용에 따른 약관은 해당 결제수단의 대행업체가 정하는 약관에 따릅니다.
5.본 약관에 명시되지 않은 내용은 해당 유료 서비스의 이용안내에 공지합니다.
제20조 (포인트 제도의 운영)
1.포인트는 서비스 내에서 무료 제공되거나 유료 충전되는 가상거래수단을 말합니다.
2.포인트의 정책은 회사의 사정에 따라 사전 고지 없이 변경될 수 있습니다.
3.회사는 지급된 포인트의 보상에 있어 소득세법에 의거 일정비율의 세금을 공제하거나, 관리에 따르는 비용을 보전하기 위한 수수료를 부과할 수 있습니다.
4.회원이 포인트를 위법적이거나 부당한 방법으로 취득하거나, 회사의 포인트 정책상의 기준 이외의 방법으로 취득한 경우 회사는 임의로 포인트를 삭제할 수 있습니다.
5.회원은 회사의 동의 없이 포인트를 제3자에게 양도, 증여하거나 담보로 제공할 수 없습니다.
제21조 (서비스 이용 시간)
1.회사의 업무 혹은 기술적 이유에 의한 별도의 공지가 없는 한, 서비스는 연중무휴 1일 24시간 동안 계속 제공됩니다.
2.회사가 업무 혹은 기술적 이유로 서비스를 중단하고자 할 경우에는 사전에 서비스 중단 사유 및 시간을 공지해야 합니다. 단, 천재지변, 긴급사태, 시스템 장애 등 예기치 않은 상황의 경우는 사후에 공지할 수 있습니다.
제6장 손해배상 및 면책
제22조 (손해배상)
회사는 무료 서비스 이용과 관련하여 회사의 고의 또는 중과실이 없는 한 회원에게 발생한 어떠한 손해에 대해서도 배상 및 보상의 책임을 지지 않습니다. 유료서비스의 경우는 별도로 정하는 바에 따릅니다.

제23조 (면책)
1.회사가 천재지변, 비상사태 또는 이에 준하는 불가피한 사정으로 서비스를 중단할 경우,서비스 중단으로 회원에게 발생되는 문제에 대한 책임이 면책됩니다.
2.회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대해 책임을 지지 않습니다.
3.회사는 서비스를 통해 제공된 정보, 제품, 서비스, 소프트웨어, 그래픽, 음성, 동영상의 적합성, 정확성, 시의성, 신빙성에 관한 보증 또는 담보책임을 지지 않습니다.
4.회사는 회원이 게시한 게시물의 적합성, 정확성, 시의성, 신빙성에 관한 보증 또는 담보 책임을 지지 않습니다.
5.회원이 회사가 제공한 서비스를 통해 취득한 정보나 서비스에 게시된 다른 회원의 게시물을 통해 법률적 또는 의학적, 기타 재정적 사항에 관하여 필요한 결정을 하고자 할 때에는 반드시 사전에 전문가와 상의하기를 권고합니다.
제7장 만14세 미만 회원에 대한 조치
제24조 (만14세 미만 회원의 이용계약)
1.만14세 미만의 아동이 회사와 서비스 이용계약을 체결하고자 할 경우에는 반드시 법정대리인의 동의를 얻어야 합니다.
2.회사는 1항에 의한 동의를 얻기 위하여 법정대리인의 성명, 주민등록번호, 연락처 등 필요한 최소한의 정보를 요구할 수 있습니다.
3.회사가 취득한 법정대리인의 개인정보는 이용계약에 대한 동의여부를 확인하기 위한 용도 이외에는 사용되지 않습니다.
제25조 (법정대리인에 대한 동의 방법)
1.회사가 제24조 제1항에 의해 법정대리인의 동의를 받고자 하는 경우, 만14세 미만아동이 회사와 서비스 이용계약을 맺기 위해 회원가입 절차를 밟는 과정에서 법정대리인이 이를 확인하고, 동의여부를 표시한 뒤 실명, 주민등록번호, 연락처를 입력하는 방법을 통해 동의를 받을 수 있습니다.
2.1항의 방법을 보완하기 위하여 회사는 전화, 팩스, 우편 등의 방법으로 법정대리인의 동의여부를 확인할 수 있으며, 이외에도 기타 법정대리인이 진정으로 동의하였음을 확인 할 수 있는 합리적인 방법을 추가할 수 있습니다.
3.회사는 법정대리인의 동의 여부에 대한 확인 과정을 거쳐 만14세미만 아동의 회원 가입을 승인합니다.
4. 만14세 미만 아동의 법정대리인은 동의 여부 확인의 중요한 수단이 되는 주민등록번호가만14세 미만 아동에게 알려져 동의 여부를 조작할 수 있는 수단이 되지 않도록 주의하여야 합니다.
5. 법정대리인은 언제든지 본인의 동의를 취소할 수 있으나, 동의를 취소하더라도 동의 기간동안 회원의 서비스 이용에 대한 책임으로부터 면책되는 것은 아닙니다.
제8장 기타
제26조 (고충처리)
회사는 개인정보 관리, 서비스 이용 등에 대한 회원들의 불편 및 불만 사항, 기타 의견을 홈페이지, 전자우편, 전화, 서면등을 통해 접수하고 처리합니다.

제27조 (분쟁해결 및 관할법원)
1.회사 및 회원은 개인정보에 관한 분쟁이 있는 경우 신속하고 효과적인 분쟁해결을 위하여 개인정보분쟁조정위원회에 분쟁의 조정을 신청할 수 있습니다.
2.요금 등 서비스 이용으로 발생한 분쟁에 대해 소송이 제기될 경우 회사의 본사 소재지를 관할하는 법원 또는 대한민국의 민사소송법에 따른 법원을 관할법원으로 합니다.
3.본 약관의 해석과 적용 및 본 약관과 관련한 분쟁의 해결에는 대한민국 법률이 적용됩니다.
부칙
본 약관은 2009년 3월 6일부터 적용되며, 2008년 2월 1일부터 시행되던 약관은 본 약관으로 대체합니다.
본 약관의 적용일자 이전 가입자 또한, 본 약관의 적용을 받습니다.

                </textarea>
            </li>
            <li class="checkBox check03">
                <ul class="clearfix">
                    <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
                    <li class="checkBtn">
                        <input type="checkbox" id="ck2">
                    </li>
                </ul>

                <textarea name="" id="" readonly>
개인정보취급방침을 통해 이용자가 제공한 개인정보 가 어떠한 용도와 방식으로 이용되며 관리되고 있는지에 대해 안내해 드립니다. 회사는 '정보통신망 이용촉진 및 정보보호 등에 관한 법률' 등 개인정보와 관련된 법령 상의 개인정보보호규정 및 방송통신위원회가 제정한 '개인정보보호지침'을 준수하고 있습니다. 본 ‘개인정보 취급방침’은 수시로 내용이 변경될 수 있으므로 정기적으로 방문하셔서 확인하십시오.

수집하는 개인정보의 항목 및 수집방법
개인정보의 수집 및 이용목적
개인정보의 제공
개인정보의 취급위탁
개인정보의 보유 및 이용기간
개인정보의 파기
이용자 및 법정대리인의 권리와 그 행사방법
개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항
개인정보의 기술적, 관리적 보호 대책
개인정보관리 책임자 및 담당자의 민원서비스
부칙
수집하는 개인정보의 항목 및 수집방법
1)수집항목
①일반회원, 만 14세 미만 회원, 국내 거주 외국인회원
- 필수항목 :성명, 아이디, 아이핀 번호, 비밀번호, 이메일주소, 생년월일, 성별, 만 14세 미만은 법정대리인 정보(성명, 연락처), 가입인증 정보

- 선택항목 :주소, 휴대폰번호, 일반전화번호, 결혼여부, 직업, 관심분야, 메일매거진 수신, 닉네임

②재외동포 회원
- 필수항목 :성명, 아이디, 비밀번호, 이메일주소, 본인 확인 자료

- 선택항목 :생년월일, 성별, 국적, 거주국가, 전화번호, 주소, 결혼여부, 직업, 관심분야, 닉네임

③서비스 이용과정에서 다음과 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록

④ 부가 서비스 및 이벤트 응모 과정 등에서 개인정보를 추가로 수집될 경우에는 이용자들에게 고지하고 동의를 받습니다.
⑤유료서비스 이용 시
- 신용카드 정보, 계좌 정보, 결제기록 등의 정보가 수집될 수 있습니다.

2)개인정보 수집방법
홈페이지 회원가입, 전화, 팩스, 서비스의 이용, 이메일, 이벤트 응모, 생성정보 수집 툴을 통한 수집, 회원정보수정, 고객센터 문의하기, 구독신청, 제보, 투고

TOP
개인정보의 수집 및 이용목적
회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.

1)서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
컨텐츠 제공, 특정 맞춤 서비스 제공, 물품 배송 또는 청구서 등 발송, 본인인증, 구매 및 요금 결제, 요금추심

2)회원관리
회원제 서비스 이용, 제한적 본인 확인제에 따른 본인확인, 개인식별, 불량회원의 부정 이용 방지와 비인가 사용방지, 가입의사 확인, 중복가입 제한, 연령확인, 만14세미만 회원 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정 대리인의 본인확인, 민원처리, 고지사항 전달

3)신규 서비스 개발 및 마케팅·광고에의 활용
신규 서비스 개발 및 맞춤 서비스 제공, 인구 통계학적 특성에 따른 서비스 제공 및 광고 게재, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 회원의 서비스 이용 통계

TOP
개인정보의 제공
회사는 이용자들의 개인정보를 '개인정보의 수집 및 이용목적'에서 고지한 범위내에서 사용하며, 이용자의 사전동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다. 단, 다음의 경우에는 예외로 합니다.

1)이용자들이 사전에 공개에 동의한 경우 (해당 링크를 통해 별도로 기재되며 해당 업체는 추후 변동될 수 있습니다.)
2)법령의 규정에 의거하거나, 수사의 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우
TOP
개인정보의 취급위탁
회사는 이용자에게 안정적인 서비스를 제공하기 위하여 개인정보를 외부전문업체에 위탁하여 운영할 수 있으며, 위탁 계약시 관계 법령에 따라 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다.

-수탁자 : ㈜한겨레에스앤씨, 한겨레미디어마케팅㈜
-위탁업무 내용 : 인터넷한겨레 회원 중 회사에서 발행하는 일간지 및 주월간지 구독자를 대상으로한 구독 및 불만처리 업무
-기간 : 위탁 계약 종료 시까지

-수탁자 : 한국모바일인증㈜
-위탁업무 내용 : 서비스 이용을 위한 본인확인업무 처리
-기간 : 위탁 계약 종료시 (개인정보는 목적 달성 후 즉시 파기)
TOP
개인정보의 보유 및 이용기간
회사는 회원 가입일로부터 서비스를 제공하는 기간 동안에 한하여 이용자의 개인정보를 보유 및 이용할 수 있습니다. 이용자가 회원 탈퇴를 요청하거나 개인정보의 수집 및 이용에 대한 동의를 철회하는 경우, 수집 및 이용목적이 달성되거나 보유 및 이용기간이 종료한 경우 해당 정보를 지체 없이 파기합니다. 단, 서비스 이용의 혼선 방지, 불법적 이용자에 대한 관련 기관 수사협조 등을 위해 회원탈퇴 후에도 회원님의 정보를 1년간 보유하게 됩니다.

그리고 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 기간 동안 회원 정보를 보존합니다.

-표시/광고에 관한 기록 : 6개월
-계약 또는 청약철회 등에 관한 기록 : 5년
-대금결제 및 재화 등의 공급에 관한 기록 : 5년
-소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
TOP
개인정보의 파기
회사는 원칙적으로 개인정보 수집 및 이용목적이 달성되면 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.

1)파기절차
이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도 서류함) 내부 방침 및 기타 관련 법령에 의한 정보 보호 사유에 따라(개인정보의 보유 및 이용기간 참조) 일정기간 저장된 후 파기됩니다.
2)파기방법
종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
TOP
이용자 및 법정대리인의 권리와 그 행사방법
1)이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수 있습니다.
2)개인정보의 조회 수정을 위해서는 개인정보수정을, 탈퇴(동의 철회)를 위해서는 '회원탈퇴'를 클릭하여 본인확인 절차를 거친 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 확인 후 지체없이 조치하겠습니다
3)이용자의 개인정보의 오류에 대한 정정을 요청한 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.
4)회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 '개인정보의 보유 및 이용기간'에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다
TOP
개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항
회사는 이용자마다 특화된 서비스를 제공하기 위해 일부 서비스에서 '쿠키(cookie)'를 사용합니다. '쿠키'란 웹서버가 이용자 컴퓨터로 전송하는 아주 작은 텍스트 파일로서 이용자 컴퓨터의 메모리나 하드디스크에 저장되기 도 합니다. 회사가 제공하는 모든 서비스를 제대로 이용하기 위해서는 쿠키를 허용해야 하며, 쿠키를 허용하지 않았을 경우 에는 서비스가 정상적으로 제공되지 않을 수도 있습니다.

1)쿠키는 서비스를 방문하는 이용자 특성을 파악하기 위해 사용될 수 있으며, 타겟 광고, 이벤트 행사를 위해서도 사용될 수 있습니다.
2) 회사의 서비스 중 일부에서는 쿠키를 이용해 로그인을 대신하고 있으며, 이런 방식을 '쿠키인'이라고 합니다. 따라서 '쿠키인'을 필요로 하는 서비스를 이용하기 위해 서는 반드시 쿠키를 허용해야 합니다.
3)회사의 서비스 중 일부에서는 시스템의 관리와 광고주가 요구하는 통계를 위해 쿠키와 함께 이용자의 IP 주소를 모으기도 합니다 .
4)이용자는 쿠키 저장에 대한 선택권을 가지고 있습니다. 단, 쿠키 저장을 거부할 경우 일부 서비스가 정상적으로 제공되지 않을 수 있습니다.
- 쿠키 저장 허용 여부를 지정하는 방법은 아래와 같습니다. (Internet Explorer의 경우)
① [도구] 메뉴에서 [인터넷 옵션]을 선택합니다.
② [개인정보] 탭을 클릭합니다.
③ [개인정보설정] 슬라이더를 움직여 설정하시면 됩니다.
TOP
개인정보의 기술적, 관리적 보호 대책
회사는 이용자들의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적/관리적 대책을 강구하고 있습니다.

1)비밀번호 암호화
한겨레 회원 아이디(ID)의 비밀번호는 암호화되어 저장 및 관리되고 있습니다.

2) 해킹 등에 대비한 대책
회사는 해킹이나 컴퓨터 바이러스 등에 의해 회원의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다. 개인정보 훼손에 대비하여 자료를 수시로 백업하고 있으며 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 누출되거나 훼손되지 않도록 방지하고 있습니다. 그리고 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며, 기타 시스템적으로 보안성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.

3)개인정보 취급 직원의 최소화 및 교육
개인정보 취급 직원은 담당자에 한정시키고 수시 교육을 통해 소중한 개인정보가 보호될 수 있도록 노력하고 있습니다.

4)개인 아이디와 비밀번호 관리
이용자가 사용하는 아이디와 비밀번호는 이용자만이 사용하도록 되어 있습니다. 회사는 이용자 개인의 부주의로 아이디, 비밀번호, 주민등록번호 등의 개인정보가 유출되어 발생한 문제와 기본적인 인터넷의 위험성 때문에 일어나는 일에 대해 책임을 지지 않습니다. 비밀번호를 자주 변경하며 공용PC에서의 로그인시 개인정보가 유출되는 일이 없도록 각별히 주의를 기울여 주시기 바랍니다.

TOP
개인정보관리 책임자 및 담당자의 민원서비스
회사는 고객의 개인정보를 보호하고 개인정보와 관련한 민원을 처리하기 위하여 아래와 같이 개인정보 관리책임자와 개인 정보 관리담당자를 지정하고 있습니다. 이용자는 개인정보보호 관련 민원을 신고하실 수 있으며, 신고사항에 대해 신속하게 답변을 드릴 것입니다.

-개인정보 관리책임자 : 백기철 편집인
-전화 : 02-710-0714
-이메일 : privacy@hani.co.kr
-개인정보 관리담당자 : 디지털뉴스팀
-전화 : 02-710-0714
-이메일 : membership@hani.co.kr
기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.

-개인정보침해신고센터 www.118.or.kr/ 국번없이 118
-대검찰청 사이버범죄수사단 www.spo.go.kr 02-3480-2000
-경찰청 사이버테러대응센터 www.ctrc.go.kr 1566-0112                    
                </textarea>
            </li>
        </ul>
        <ul class="footBtwrap clearfix">
            <li><button onclick="location.href='index.jsp'" class="fpmgBt1">취소</button></li>
            <li><button onclick="fnc1()" class="fpmgBt2">회원가입</button></li>
        </ul>
    </div>

<script type="text/javascript">
	function fnc1(){
		var ck1 = document.getElementById("ck1");
		var ck2 = document.getElementById("ck2");
		if(ck1.checked && ck2.checked) {
			location.href = "join.jsp";
			return false;
		} else {
			alert("약관에 동의하지 않으셨습니다.");
			return false;
		}
	}
	
	function checkall(){
		var ck1 = document.getElementById("ck1");
		var ck2 = document.getElementById("ck2");
		var ck3 = document.getElementById("ck3");
		if (ck3.checked)
		{
		ck1.checked = true;
		ck2.checked = true;
		}else{
		ck1.checked = false;
		ck2.checked = false;
		}
	}
</script>
</div>
</div>
<footer id="ft">
<jsp:include page="../ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>