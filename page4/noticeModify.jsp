<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.text.*" %>
    <% request.setCharacterEncoding("utf-8"); %> 
    <%@ page import="dao.bean.ndao" %>
    <%@ page import="dao.bean.notDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
        .main {
            text-align : center;
            margin : 0 auto;
        }
		header {
        	height : 150px;
        	border : 3px solid #3e8996;
        	margin : 10px;
        	border-radius : 30px;
        }
        .board {
            width:800px;
            margin-left : 100px;
            margin-right : 100px;
        }
        .t1 {
            width : 100%;
            border : 1px solid #909090;
            font-size : 17px;
            height : 30px;
        }
        .t2 {
            width : 100%;
            border : 1px solid #909090;
            font-size : 13px;
        }
        .t3 {
            width : 100%;
        }
        .t4 {
            float : right;
        }
</style>
</head>
<body>
<div class="main">
    <header onclick="location.href='../main/main.jsp'">
    <img class="titleimage" src="logo.png"/>
    </header>
</div>
<%
int id;
String content="";


id=Integer.parseInt(request.getParameter("id"));
ndao bbs=new notDAO().showPage(id,"n");



%>

<div class="board">
<form action="notice-modify-db.jsp?id=<%=id %>" method="post">
<table>
<tr><td>글 제 목</td></tr>
<tr><td><input class="t1" type="text" name="title" value="<%=bbs.getTitle()%>"/></td></tr>
<tr>
<td>말머리</td></tr>
<tr>
<td>
<select name="type">
<option value="e" selected>행사</option>
<option value="h">의료</option>
<option value="w">복지</option>
</select></td></tr>
<tr><td>글 내 용</td></tr>
<tr><td><textarea class="t2" cols="100" rows="20" name="content"><%=bbs.getContent().replace("<br>","\n") %></textarea></td></tr>
</table>
    <div class="t3">
        <input class="t4" type="submit" value="수정하기"/>
    </div>
</form>
</div>
</body>



</body>
</html>