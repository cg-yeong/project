<%@page import="com.model.FavoriteDAO"%>
<%@page import="com.model.FavoriteDTO"%>
<%@page import="com.model.ImdaeSearchDTO"%>
<%@page import="com.model.Rent_searchDTO"%>
<%@page import="com.model.Main_filterDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Main_filterDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">

<link rel="icon" href="Favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<title>���ã��</title>
</head>
<style type="text/css">
	body{
	    margin: 0;
	    font-size: .9rem;
	    font-weight: 400;
	    line-height: 1.6;
	    color: #212529;
	    text-align: left;
	    background-color: #f5f8fa;
	}
	
	.navbar-brand{
      font-size : 30px;
      font-weight : bold;
	  }
	.navbar-brand 
	{	 
		box-shadow: 0 2px 4px rgba(0,0,0,.04);
	    font-weight : bold;
	    font-family: Raleway, sans-serif;
	}
	
	 table {
     border-collapse: separate;
     border-spacing: 1px;
     text-align: left;
     line-height: 1.5;
     margin : 20px 10px;
     white-space: nowrap;
     padding :40px;'
   }
   th {
     width: 150px;
     padding: 10px;
     font-weight: bold;
     vertical-align: top;
     border-bottom: 1px solid #ccc;
     white-space: nowrap;
   }
   td {
     width: 350px;
     padding: 10px;
     vertical-align: top;
     border-bottom: 1px solid #ccc;
     white-space: nowrap;
   }
</style>

<body>

	 <!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
         <a class="navbar-brand" href="#">Leader</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         
         
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item active">
                  <%
                  //���� ���� ������ֱ�.
                  MemberDTO info = (MemberDTO) session.getAttribute("info");
                  Main_filterDAO dao = new Main_filterDAO();
                  ArrayList<Main_filterDTO> AptSearchList = null;
                  ArrayList<Main_filterDTO> DongSearchList = null;
                  ArrayList<Rent_searchDTO> RentSearchList = null;
                  ArrayList<Main_filterDTO> MatSearchList = null;
                  ArrayList<ImdaeSearchDTO> ImdaeSearchList = null;
                  String mat_select = null;

                  if (info != null) {
                     /*���� �⺻���Ͱ� �ƴ� �������� �ÿ� �ʿ��� �κ� */
                  }%> 
                  
                  
                  <%if (info != null) {%>
               
               <li class="nav-item">
                  <%if (info.getId().equals("admin")) {%>
                  <a class="nav-link" href="select.jsp">ȸ������ ����</a> 
                  <%}%>
               </li>
               <li class="nav-item"><a class="nav-link" href="favorite.jsp">���ã��</a></li>
               <li class="nav-item"><a class="nav-link" href="mypage.jsp">����������</a></li>
               <li class="nav-item"><a class="nav-link"
                  href="LogoutService.do">�α׾ƿ�</a></li>
               <%} else {%>
               <li class="nav-item"><a class="nav-link" href="join.jsp">ȸ������</a></li>
               <li class="nav-item"><a class="nav-link" href="login.jsp">�α���</a></li>
               <%}%>
               </li>
            </ul>
         </div>
      </div>
   </nav>
   
	<!-- ��ܸ޴� ���� -->
		<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
			<div class="container">
				<a class="navbar-brand" href="#">Leader</a> 
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
	
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index_main.jsp">����ȭ��</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<br>
		
		<!-- ���ã�� ���̺� ��ȸ -->

	  	<%	
	  	FavoriteDAO dao = new FavoriteDAO();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	  	ArrayList<Main_filterDTO> MeaList = dao.Mea_view(info);					  				  						  	
		%>
		
		<!-- �Ÿ����̺� ��ȸ -->
	  	<%if(MeaList != null) {%>
	  	<h5><b>�Ÿ� ���ã��</b></h5><hr>
		<table>
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>�ŸŹ�ȣ</th>
					<th>����Ʈ��</th>
					<th>������</th>
					<th>�ǰŷ���</th>
					<th>���� �⵵</th>
					<th>�ŷ� �⵵</th>
					<th>��</th>
					<th>��</th>
					<th>���</th>
					<th>��</th>
				</tr>
			</thead>
			<tbody>
			<%for (int i = 0; i < MeaList.size(); i++) {%>
			<tr>
				<th><%=i + 1%></th>
				<td><%=MeaList.get(i).getMaemae_num()%></td>
				<td><%=MeaList.get(i).getApt_name()%></td>
				<td><%=MeaList.get(i).getDong()%></td>
				<td><%=MeaList.get(i).getPrice()%></td>
				<td><%=MeaList.get(i).getBuild_year()%></td>
				<td><%=MeaList.get(i).getYear()%></td>
				<td><%=MeaList.get(i).getMonth()%></td>
				<td><%=MeaList.get(i).getDay()%></td>
				<td><%=MeaList.get(i).getApt_size()%></td>
				<td><%=MeaList.get(i).getFloor()%></td>
			</tr>
			<%}%>
			</tbody>
			</table>
		<%}%>
		
		<!-- ���������̺� ��ȸ -->
		
		 <%
		 ArrayList<Rent_searchDTO> RentList = dao.Rent_view(info);
		 if (RentList != null) {%>
		 <br><br>
		 <h5><b>������ ���ã��</b></h5><hr>
		 <table>
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>������ȣ</th>
					<th>����Ʈ��</th>
					<th>������</th>
					<th>������</th>
					<th>����</th>
					<th>����⵵</th>
					<th>�ŷ���</th>
					<th>��</th>
					<th>��</th>
					<th>���</th>
					<th>��</th>
				</tr>

						<%for (int i = 0; i < RentList.size(); i++) {%>
						<tr>
							<th><%=i + 1%></th>
							<td><%=RentList.get(i).getRent_num()%></td>
							<td><%=RentList.get(i).getApt_name()%></td>
							<td><%=RentList.get(i).getDong()%></td>
							<td><%=RentList.get(i).getDeposit()%></td>
							<td><%=RentList.get(i).getLoyer()%></td>
							<td><%=RentList.get(i).getBuild_year()%></td>
							<td><%=RentList.get(i).getYear()%></td>
							<td><%=RentList.get(i).getMonth()%></td>
							<td><%=RentList.get(i).getDate()%></td>
							<td><%=RentList.get(i).getApt_size()%></td>
							<td><%=RentList.get(i).getFloor()%></td>
						</tr>
						<%}%>
					</table>
					<%}%>
</main>
	<script src="./js/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	

</body>
</html>