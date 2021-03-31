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

.navbar-brand{
      font-size : 30px;
      font-weight : bold;
	  }
	  
	body{
	    margin: 0;
	    font-size: .9rem;
	    font-weight: 400;
	    line-height: 1.6;
	    color: #212529;
	    text-align: left;
	    background-color: #f5f8fa;
	}
   .green_window {
      display: inline-block;
      width: 500px; height: 40px;
      border: 3px solid #343A40;
      background: white;
   }
   .input_text {
      width: 480px; height: 20px;
      margin: 6px 0 0 9px;
      border: 0;
      line-height: 20px;
      font-size: 14px;
      outline: none;
      float : left;
   }
   .sch_smit {
      width: 100px; height: 40px;
      margin: 0; border: 0;
      vertical-align: top;
      background: #343A40;
      color: white;
      border-radius: 1px;
      cursor: pointer;
      
   }
   .SelectSearch{
      width: 120px; height: 40px;
      border: 3px solid #343A40;
      background: white;
      vertical-align: top;
   }
   
   #option div{
   	text-align:center;
   }
	
	.navbar-brand
{
      font-size : 30px;
      font-weight : bold;
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
   .sch_smit_2{
   	width: 100px; height: 40px;
      margin: 0; border: 0;
      vertical-align: top;
      background: #343A40;
      color: white;
      border-radius: 1px;
      cursor: pointer;
   	position: absolute; left: 1130px; bottom : 575px;
   }
</style>

<body>
	<!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
         <a class="navbar-brand" href="index_main.jsp">100�ٹ�</a>
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
                  if (info != null) {
                     /*���� �⺻���Ͱ� �ƴ� �������� �ÿ� �ʿ��� �κ� */
                  }%> 
                  
                  </li>
                  <%if (info != null) {%>
               
               <li class="nav-item">
                  <%if (info.getId().equals("admin")) {%>
                  <a class="nav-link" href="select.jsp">ȸ������ ����</a> 
                  <%}%>
               </li>
               <li class="nav-item"><a class="nav-link" href="index_main.jsp">����ȭ��</a></li>
 				           
            </ul>
         </div>
      </div>
   </nav>
	
	<!-- ���ø޴��� -->
	
	<br><br><br><br><br><br>
		<%FavoriteDAO dao = new FavoriteDAO(); %>
		
		 <!-- ��ü���� -->
		 <div id="option">
			
			<div> 
			 <!-- ���û��� -->	  
			 
			  <form method = "post">
			  <select class='SelectSearch'  name = "type">
	      		  	<option value = "maemae" selected="selected">�ŸŹ�ȣ</option>
	          	    <option value = "rent" >��������ȣ</option>
	          </select> 
	          <span class='green_window'>
					<input type="text" class='input_text' name="check" onkeydown="enterSearch()"
							placeholder="������ ��ȣ�� �Է����ּ���">
			  </span>
					<input type="submit" class="sch_smit" value ="����" onclick="javascript: form.action='DelOneService.do';"/>
				<input type="submit" class="sch_smit" value = "��ü ����" onclick="javascript: form.action='DelAllService.do';"/>
			</form>		
			
			
			  
			  <div> 
		  </div>
		<!-- ���ã�� ���̺� ��ȸ -->		
		<!-- �Ÿ����̺� ��ȸ -->
		 
	 	<%ArrayList<Main_filterDTO> MaeList = dao.Mae_view(info);
 		   if(MaeList != null) {%>
	  	<div id = "select">
		  	<br><br><br><br>
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
			<%for (int i = 0; i < MaeList.size(); i++) {%>
			<tr>
				<th><%=i + 1%></th>
				<td><%=MaeList.get(i).getMaemae_num()%></td>
				<td><%=MaeList.get(i).getApt_name()%></td>
				<td><%=MaeList.get(i).getDong()%></td>
				<td><%=MaeList.get(i).getPrice()%></td>
				<td><%=MaeList.get(i).getBuild_year()%></td>
				<td><%=MaeList.get(i).getYear()%></td>
				<td><%=MaeList.get(i).getMonth()%></td>
				<td><%=MaeList.get(i).getDay()%></td>
				<td><%=MaeList.get(i).getApt_size()%></td>
				<td><%=MaeList.get(i).getFloor()%></td>
			</tr>
			<%}%>
			</tbody>
			</table>
		<%}%>
		
		<!-- ���������̺� ��ȸ -->
		 
		 <%ArrayList<Rent_searchDTO> RentList = dao.Rent_view(info);
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
				</thead>
					<tbody>

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
						</tbody>
					</table>
					<%} %>
					</div>
					</div>
				<%} %>
		
</main>
	<script src="./js/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	

</body>
</html>