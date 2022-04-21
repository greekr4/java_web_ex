<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String Fmenu[] = {"개인정보처리방침","회사소개","온라인문의","오시는 길","이메일 무단 수집거부","테스트용추가"};
	String Flnk[] = {"fmenu1.html","fmenu1.html","fmenu1.html","fmenu1.html","fmenu1.html","테스트"};
%>	

        <div class="ft_wrap">
                <nav class="fnb">
                
                <% for (int i=0;i<Fmenu.length;i++){
                	%>
            
                    <a href=<%=Flnk[i] %>><%=Fmenu[i] %></a>
                    <%
                    }
                    %>
                </nav>
                
                <nav class="sub">
                    <ul>
                        <li><a href="" class="xi-instagram" title="인스타"></a></li>
                        <li><a href="" class="xi-youtube-play" title="유튜브"></a></li>
                    </ul>
                </nav>
                <p class="copyright">Copyrights © 2021 KUMHO ELECTRIC,INC., LTD. ALL RIGHT RESERVED.</p>
        </div>