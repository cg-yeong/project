<<<<<<< HEAD
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>

</style>

<body>
	<%
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberDTO> list  = dao.select();
	%>
	<div class="cotainer">
	<table>
		
	
	</table>
	


</body>
=======
<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<title>Insert title here</title>
</head>
<body>
	
	
	
	<%ArrayList<MemberDTO> memberList = null; %>
	<%MemberDAO dao = new MemberDAO();%>
	<%memberList = dao.select();%>
	<%if(memberList != null){%>
		<table>
			<tr>
				<td>ȸ�� ���̵�</td>
				<td>ȸ�� �̸�</td>
				<td>ȸ�� �ּ�</td>
			</tr>
			
			<%for(int i = 0; i < memberList.size(); i++) {%>
				<tr>
					<td><%=memberList.get(i).getId() %></td>
					<td><%=memberList.get(i).getName() %> </td>
					<td><%=memberList.get(i).getAddr() %> </td>
				</tr>
			<%} %>
		</table>
	<%} %>
	
	
</body>
>>>>>>> branch 'master' of https://github.com/sincerity1129/project.git
</html>