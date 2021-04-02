<%@page import="com.model.LibDTO"%>
<%@page import="com.model.FacilityDTO"%>
<%@page import="com.model.ParkDTO"%>
<%@page import="com.model.SchoolDTO"%>
<%@page import="com.model.ImdaeSearchDTO"%>
<%@page import="com.model.Rent_searchDTO"%>
<%@page import="com.model.Apt_name_searchDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Main_filterDAO"%>
<%@page import="com.model.Main_filterDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>���־���Ʈ���ݿ���</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
</head>

<style type="text/css">
.navbar-brand{
      font-size : 30px;
      font-weight : bold;
   }
   .my-4{
      font-weight : bold;
   }
   .green_window {
      display: inline-block;
      width: 500px; height: 40px;
      border: 3px solid #1b5ac2;
      background: white;
   }
   .input_text {
      width: 480; height: 20px;
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
      background: #1b5ac2;
      color: white;
      font-weight: bold;
      border-radius: 1px;
      cursor: pointer;
   }
   .SelectSearch{
      width: 120px; height: 40px;
      border: 3px solid #1b5ac2;
      background: white;
      vertical-align: top;
   }
   .unit{
      text-align: right;
      font-size : 12px;
   }
	
   table {
     border-collapse: separate;
     border-spacing: 1px;
     text-align: left;
     line-height: 1.5;
     border-top: 1px solid #ccc;
     margin : 20px 10px;
     white-space: nowrap;
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
   #junwall, #basic, #imdae {
      display: none;
}
</style>

</head>

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
                  Main_filterDAO dao = new Main_filterDAO();
                  ArrayList<Main_filterDTO> AptSearchList = null;
                  ArrayList<Main_filterDTO> DongSearchList = null;
                  ArrayList<Rent_searchDTO> RentSearchList = null;
                  ArrayList<Main_filterDTO> MatSearchList = null;
                  ArrayList<ImdaeSearchDTO> ImdaeSearchList = null;
                  ArrayList<SchoolDTO> SchoolList = null;
                  ArrayList<FacilityDTO> FacList = null;
                  ArrayList<ParkDTO> ParkList = null;
                  ArrayList<LibDTO> LibList = null;
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

   <!--���̵�޴�-->
   <div class="container">
      <div class="row">
         <div class="col-lg-3">
            <h4 class="my-4">�Ź�</h4>
            <div class="list-group">
               <a href="index_maemae.jsp" class="list-group-item" id="check1">�Ÿ�</a> 
               <a href="index_rent.jsp" class="list-group-item" id="check2">������</a>
            </div>
            <h4 class="my-4">����</h4>
            <div class="list-group">
               <a href="index_mat.jsp" class="list-group-item" id="check3">����</a>
               <%if(info != null){%>
               <a href="index_imdae.jsp" class="list-group-item">�Ӵ�</a>
               <%}else {%>
               <a href="" class="list-group-item" id="fake1">�Ӵ�</a>
               <%} %>               
            </div>
            <h4 class="my-4">����</h4>
            <div class="list-group">
               <%if(info != null){%>
               <a href="price.jsp" class="list-group-item">���� ����</a>
               <%}else {%>
                  <a href="" class="list-group-item" id="fake2">���� ����</a>
                  <%}%>
            </div>
         </div>

		<!-- �Ÿ� -->
        <div class="col-lg-9">
			<div id="basic" class="raw">
		      <br><br>
		      <h5>� �Ź��� ã�� ��ó���?</h5><br>
				<form action="SearchService.do" method="post">
				
         <!-- �ɼǼ��� -->
         <select class='SelectSearch' name="table">
            <option value='apt_name'>����Ʈ</option>
            <option value='dong'>������</option>
         </select>
         <span class='green_window'>
            <input type="text" class='input_text' name="search" onkeydown="enterSearch()"
                  placeholder="�˻�� �Է��ϼ���">
         </span>
            <button type="submit" class="sch_smit">�˻�</button>
         </form>
         
        

		<!-- ���ã�� -->  
          <%if(info !=null) {%>
          <form action="FavoriteService.do" method="post">
			<select class='SelectSearch' name="type">
				<option value='maemae' selected="selected">�ŸŹ�ȣ</option>
			</select>
			<span class='green_window'>
				<input type="text" class='input_text' name="num" onkeydown="enterSearch()"
						placeholder="�����ִ� �Ź��� �߰����ּ���!">
			</span>
				<button type="submit" class="sch_smit">�߰�</button>
			</form>
			<%} %>
			
			 <div class="unit"> (���� : �鸸��)</div>
		<!-- ������ ��ȸ -->
          <%DongSearchList = (ArrayList<Main_filterDTO>) session.getAttribute("DongSearchList");
          if (DongSearchList != null) {
             System.out.print("�� ����!!");
             System.out.print(DongSearchList.size());%>
             <table>
				<thead>
				<tr>
					<th>��ȣ</th>
					<th>�ŸŹ�ȣ</th>
					<th>����Ʈ��</th>
					<th>������</th>
					<th>�ǰŷ���</th>
					<th>����⵵</th>
					<th>�ŷ� ��</th>
					<th>��</th>
					<th>��</th>
					<th>���</th>
					<th>��</th>
				</tr>
			</thead>
                  <%for (int i = 0; i < 50; i++) {%>
                  <tr>
                     <th><%=i + 1%></th>
                     <td><%=DongSearchList.get(i).getMaemae_num()%></td>
                     <td><%=DongSearchList.get(i).getApt_name()%></td>
                     <td><%=DongSearchList.get(i).getDong()%></td>
                     <td><%=DongSearchList.get(i).getPrice()%></td>
                     <td><%=DongSearchList.get(i).getBuild_year()%></td>
                     <td><%=DongSearchList.get(i).getYear()%></td>
                     <td><%=DongSearchList.get(i).getMonth()%></td>
                     <td><%=DongSearchList.get(i).getDay()%></td>
                     <td><%=DongSearchList.get(i).getApt_size()%></td>
                     <td><%=DongSearchList.get(i).getFloor()%></td>
                  </tr>
                  <%}%>
               </table>
               <%}%>

			<!-- ����Ʈ�� ��ȸ�ϱ� -->
               <%AptSearchList = (ArrayList<Main_filterDTO>) session.getAttribute("AptSearchList");
               if (AptSearchList != null) {
                  System.out.print("����Ʈ ����!");%>
               <table>
                 <thead>
					<tr>
						<th>��ȣ</th>
						<th>�ŸŹ�ȣ</th>
						<th>����Ʈ��</th>
						<th>������</th>
						<th>�ǰŷ���</th>
						<th>����⵵</th>
						<th>�ŷ� ��</th>
						<th>��</th>
						<th>��</th>
						<th>���</th>
						<th>��</th>
					</tr>
				</thead>
                  <%for (int i = 0; i < AptSearchList.size(); i++) {%>
                  <tr>
                     <td><%=i + 1%></td>
                     <td><%=AptSearchList.get(i).getMaemae_num()%></td>
                     <td><%=AptSearchList.get(i).getApt_name()%></td>
                     <td><%=AptSearchList.get(i).getDong()%></td>
                     <td><%=AptSearchList.get(i).getPrice()%></td>
                     <td><%=AptSearchList.get(i).getBuild_year()%></td>
                     <td><%=AptSearchList.get(i).getYear()%></td>
                     <td><%=AptSearchList.get(i).getMonth()%></td>
                     <td><%=AptSearchList.get(i).getDay()%></td>
                     <td><%=AptSearchList.get(i).getApt_size()%></td>
                     <td><%=AptSearchList.get(i).getFloor()%></td>
                  </tr>
                  <%}%>
               </table>
               <%}%>
            </div>

          

            <!-- ���� -->
	<div id="mat" class="raw">
    <br><br>          
	<h5>���ϴ� ������ �����Ͽ��� ��ȸ�غ�����!</h5><br>
    <form action="MatSearchService.do" method="post">
    	<select class='SelectSearch' name="mat_select">
				<option value="crime">�������� ��</option>
				<option value="charge">������ ������</option>
				<option value="subway">����ö</option>
				<option value="coffee">��Ÿ����</option>
				<option value="movie">��ȭ��</option>
				<option value="school">�б�</option>
				<option value="fac">�ǳ��ü�</option>
				<option value="lib">������</option>
				<option value="park">����</option>
			</select>
			
			
			<%if(info == null) {%>
			<span class='green_window'>
					<input type="text" class='input_text' name="mat_search" onkeydown="enterSearch()" placeholder="������ �˻��ϼ���!">
			</span>
			<button id = "fake" class = "sch_smit">�˻�</button>
				
			<%} else {%>
				<span class='green_window'>
					<input type="text" class='input_text' name="mat_search" onkeydown="enterSearch()" placeholder="������ �˻��ϼ���!">
				</span>
					<button type="submit" class="sch_smit">�˻�</button>
					</form> 
             <%
				mat_select = (String) session.getAttribute("mat_select");
				if (mat_select != null) {
					System.out.print("���� : " + mat_select);

					if (mat_select.equals("school")) {
						SchoolList = (ArrayList<SchoolDTO>) session.getAttribute("mat_search");
					} else if (mat_select.equals("fac")) {
						FacList = (ArrayList<FacilityDTO>) session.getAttribute("mat_search");
					} else if (mat_select.equals("park")) {
						ParkList = (ArrayList<ParkDTO>) session.getAttribute("mat_search");
					} else if (mat_select.equals("lib")) {
						LibList = (ArrayList<LibDTO>) session.getAttribute("mat_search");
					} else {
						MatSearchList = (ArrayList<Main_filterDTO>) session.getAttribute("mat_search");
					}

					if (MatSearchList != null) {
				%>
			<table>
               <thead>
                  <tr>
                     <th>��ȣ</th>
                     <%if (mat_select.equals("crime")) {%>
                     <th>�������� ��</th>
                     <%}%>
                     <%if (mat_select.equals("charge")) {%>
                     <th>������ ������</th>
                     <%}%>
                     <%if (mat_select.equals("subway")) {%>
                     <th>����ö</th>
                     <%}%>
                     <%if (mat_select.equals("coffee")) {%>
                     <th>��Ÿ����</th>
                     <%}%>
                     <%if (mat_select.equals("movie")) {%>
                     <th>��ȭ��</th>
                     <%}%>
                     <th>�ŸŹ�ȣ</th>
					 <th>������</th>
					 <th>����Ʈ��</th>
					 <th>�ǰŷ���</th>
					 <th>����⵵</th>
					 <th>�ŷ� ��</th>
					 <th>��</th>
					 <th>��</th>
					 <th>���</th>
					 <th>��</th>
				</tr>
				<%}%>
				<%if(MatSearchList != null){ %>
				<%if (MatSearchList.size() == 0) {%>
				<tr>
					<td colspan=12>�Ź��� �����ϴ�.</td>
				</tr>
				<%}%>
				</thead>
				<tbody>
                  <%for (int i = 0; i < MatSearchList.size(); i++) {%>
                  <tr>
                     <th><%=i + 1%></th>
                     <%if (mat_select.equals("crime")) {%>
                     <td><%=MatSearchList.get(i).getCrime()%></td>
                     <%}%>
                     <%if (mat_select.equals("charge")) {%>
                     <td><%=MatSearchList.get(i).getCharge()%></td>
                     <%}%>
                     <%if (mat_select.equals("subway")) {%><td>
                     <%=MatSearchList.get(i).getSubway()%></td>
                     <%}%>
                     <%if (mat_select.equals("coffee")) {%>
                     <td><%=MatSearchList.get(i).getStarbucks()%></td>
                     <%}%>
                     <%if (mat_select.equals("movie")) {%>
                     <td><%=MatSearchList.get(i).getMovie()%></td>
                     <%}%>

                     <td><%=MatSearchList.get(i).getMaemae_num()%></td>
                     <td><%=MatSearchList.get(i).getDong()%></td>
                     <td><%=MatSearchList.get(i).getApt_name()%></td>
                     <td><%=MatSearchList.get(i).getPrice()%></td>
                     <td><%=MatSearchList.get(i).getBuild_year()%></td>
                     <td><%=MatSearchList.get(i).getYear()%></td>
                     <td><%=MatSearchList.get(i).getMonth()%></td>
                     <td><%=MatSearchList.get(i).getDay()%></td>
                     <td><%=MatSearchList.get(i).getApt_size()%></td>
                     <td><%=MatSearchList.get(i).getFloor()%></td>
                  </tr>
                  <%}%>
                  </tbody>
               </table>
               <%}%>
               <%}%>
			<!-- school -->
			<%if (SchoolList != null) {%>
			<table>
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>�б���</th>
					<th>�б��ּ�</th>
					<th>������</th>
					<th>�ǰŷ���</th>
					<th>����Ʈ��</th>
					<th>����⵵</th>
					<th>�ŷ� ��</th>
					<th>��</th>
					<th>��</th>
					<th>���</th>
					<th>��</th>
				</tr>
				<% if (SchoolList.size() == 0) { %>
				<tr>
					<td colspan=12>�Ź��� �����ϴ�.</td>
				</tr>
				<%} %>
			</thead>
			<tbody>
			<% for (int i = 0; i < SchoolList.size(); i++) { %>
			<tr>
				<th><%=i + 1%></th>
				<td><%=SchoolList.get(i).getSchool_name()%></td>
				<td><%=SchoolList.get(i).getScool_addr()%></td>
				<td><%=SchoolList.get(i).getDong()%></td>
				<td><%=SchoolList.get(i).getApt_name()%></td>
				<td><%=SchoolList.get(i).getPrice()%></td>
				<td><%=SchoolList.get(i).getBuild_year()%></td>
				<td><%=SchoolList.get(i).getYear()%></td>
				<td><%=SchoolList.get(i).getMonth()%></td>
				<td><%=SchoolList.get(i).getDay()%></td>
				<td><%=SchoolList.get(i).getApt_size()%></td>
				<td><%=SchoolList.get(i).getFloor()%></td>
			</tr>
			<%} %>
			</tbody>
			</table>
			<%} %>
			<!-- facility -->
			<% if (FacList != null) { %>
			<table>
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>����Ʈ��</th>
					<th>�ǳ��ü�</th>
					<th>������</th>
					<th>�ǰŷ���</th>
					<th>����⵵</th>
					<th>�ŷ� ��</th>
					<th>��</th>
					<th>��</th>
					<th>���</th>
					<th>��</th>
				</tr>
				<% if (FacList.size() == 0) { %>
				<tr>
					<td colspan=11>�Ź��� �����ϴ�.</td>
				</tr>
				<%} %>
				</thead>
				<tbody>
				<% for (int i = 0; i < FacList.size(); i++) { %>
				<tr>
					<th><%=i + 1%></th>
					<td><%=FacList.get(i).getApt_name()%></td>
					<td><%=FacList.get(i).getFacility()%></td>
					<td><%=FacList.get(i).getDong()%></td>
					<td><%=FacList.get(i).getPrice()%></td>
					<td><%=FacList.get(i).getBuild_year()%></td>
					<td><%=FacList.get(i).getYear()%></td>
					<td><%=FacList.get(i).getMonth()%></td>
					<td><%=FacList.get(i).getDay()%></td>
					<td><%=FacList.get(i).getApt_size()%></td>
					<td><%=FacList.get(i).getFloor()%></td>
				</tr>
				<%} %>
				</tbody>
				</table>
			<%} %>
			<!-- Park -->
			<% if (ParkList != null) { %>
			<table>
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>��������</th>
					<th>����ũ��</th>
					<th>����Ʈ��</th>
					<th>������</th>
					<th>�ǰŷ���</th>
					<th>����⵵</th>
					<th>�ŷ� ��</th>
					<th>��</th>
					<th>��</th>
					<th>���</th>
					<th>��</th>
				</tr>
				<% if (ParkList.size() == 0) { %>
				<tr>
					<td colspan=12>�Ź��� �����ϴ�.</td>
				</tr>
				<%} %>
				</thead>
				<tbody>
				<% for (int i = 0; i < ParkList.size(); i++) { %>
				<tr>
					<td><%=i + 1%></td>
					<td><%=ParkList.get(i).getPark_div()%></td>
					<td><%=ParkList.get(i).getPark_size()%></td>
					<td><%=ParkList.get(i).getApt_name()%></td>
					<td><%=ParkList.get(i).getDong()%></td>
					<td><%=ParkList.get(i).getPrice()%></td>
					<td><%=ParkList.get(i).getBuild_year()%></td>
					<td><%=ParkList.get(i).getYear()%></td>
					<td><%=ParkList.get(i).getMonth()%></td>
					<td><%=ParkList.get(i).getDay()%></td>
					<td><%=ParkList.get(i).getApt_size()%></td>
					<td><%=ParkList.get(i).getFloor()%></td>
				</tr>
				<%} %>
				</tbody>
				</table>
				<%} %>
			<!-- Lib -->
			<% if (LibList != null) { %>
			<table>
				<thead>
					<tr>
						<th>��ȣ</th>
						<th>��������</th>
						<th>�޹���</th>
						<th>����Ʈ��</th>
						<th>������</th>
						<th>�ǰŷ���</th>
						<th>����⵵</th>
						<th>�ŷ� ��</th>
						<th>��</th>
						<th>��</th>
						<th>���</th>
						<th>��</th>
					</tr>
					<% if (LibList.size() == 0) { %>
					<tr>
						<td colspan=12>�Ź��� �����ϴ�.</td>
					</tr>
					<%} %>
					</thead>
					<tbody>
					<%for (int i = 0; i < LibList.size(); i++) { %>
					<tr>
						<td><%=i + 1%></td>
						<td><%=LibList.get(i).getLib_name()%></td>
						<td><%=LibList.get(i).getClose()%></td>
						<td><%=LibList.get(i).getApt_name()%></td>
						<td><%=LibList.get(i).getDong()%></td>
						<td><%=LibList.get(i).getPrice()%></td>
						<td><%=LibList.get(i).getBuild_year()%></td>
						<td><%=LibList.get(i).getYear()%></td>
						<td><%=LibList.get(i).getMonth()%></td>
						<td><%=LibList.get(i).getDay()%></td>
						<td><%=LibList.get(i).getApt_size()%></td>
						<td><%=LibList.get(i).getFloor()%></td>
					</tr>
					<%} %>
					</tbody>
				</table>
		<%} %>
            </div>
	<%} %>
         </div>
         <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

   </div>
   <!-- /.container -->
   
   
   <br>
   <br>
   <br>

   <!-- Bootstrap core JavaScript -->
   <script src="vendor/jquery/jquery.min.js"></script>
   <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script src="./vendor/jquery/jquery-3.6.0.min.js"></script>
   <script type="text/javascript">
   	$('#fake').click(function(){
		alert('�α��������ּ���');
	});
	$('#fake1').click(function(){
		alert('�α��������ּ���');
	});
	$('#fake2').click(function(){
		alert('�α��������ּ���');
	});
   </script>

</body>

</html>