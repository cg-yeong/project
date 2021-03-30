<%@page import="com.model.SchoolDTO"%>
<%@page import="com.model.ParkDTO"%>
<%@page import="com.model.LibDTO"%>
<%@page import="com.model.FacilityDTO"%>
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

<title>Shop Homepage - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
<style type="text/css">
table, td {
	border: 1px solid black;
}

table {
	width: 60%;
	height: 100px;
	margin: auto;
	text-align: center;
}

#basic, #junwall,#imdae {
	display: none;
	
}
</style>

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">�� �̸�</a>
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
						ArrayList<ParkDTO> ParkList = null;
						ArrayList<LibDTO> LibList = null;
						ArrayList<FacilityDTO> FacList = null;
						
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
					<li class="nav-item"><a class="nav-link" href="mypage.jsp">����������</a></li>
					<li class="nav-item"><a class="nav-link"
						href="LogoutService.do">�α׾ƿ�</a></li>

					<%} else {%>
					<li class="nav-item"><a class="nav-link" href="join.html">ȸ������</a></li>
					<li class="nav-item"><a class="nav-link" href="login.html">�α���</a></li>
					<%}%>
					<!-- �α��� �� Logout.jsp�� �̵��� �� �ִ�'�α׾ƿ�'��ũ�� '������������'��ũ�� ����Ͻÿ�. -->
					</li>

				</ul>
			</div>
		</div>
	</nav>



	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">

				<h1 class="my-4">�Ź�</h1>
				<div class="list-group">
					<a href="index_maemae.jsp" class="list-group-item" id="check1">�Ź�</a> 
					<a href="index_rent.jsp" class="list-group-item" id="check2">�� ����</a>
				</div>
				
				<h1 class="my-4">Ư�� ����</h1>
				<div class="list-group">
					<a href="index_mat.jsp" class="list-group-item" id="check3">����</a>
					<%if(info != null){ %>
					<a href="index_imdae.jsp" class="list-group-item" id="check4">�Ӵ�</a>
					<%}else {%>
						<a href="" class="list-group-item" id="check4">�Ӵ�</a>
						<%}%>
					
				</div>
				<h1 class="my-4">���� ����</h1>
				<div class="list-group">
					<%if(info != null){ %>
					<a href="price.jsp" class="list-group-item" id="check2">���� ����</a>
					<%}else {%>
						<a href="" class="list-group-item" id="check2">���� ����</a>
						<%}%>
				</div>

			</div>
			<!-- /.col-lg-3 -->
			<!-- �Ÿ� -->
			<div class="col-lg-9">

				
				<!-- ���� -->
				<!--  �⺻ ���� ���� -->
				<div id="mat">
					<h1>����</h1>

					<form action="MatSearchService.do" method="post">
						<select name="mat_select">
							<option value="crime">������ ��</option>
							<option value="charge">������ ������</option>
							<option value="subway">����ö</option>
							<option value="coffee">��Ÿ����</option>
							<option value="movie">��ȭ��</option>
							<option value="school">�б�</option>
							<option value="fac">�ǳ��ü�</option>
							<option value="lib">������</option>
							<option value="park">����</option>
						</select> ������ �˻� : <input type="text" name="mat_search"> 
							<%if(info != null){%>
						<input type="submit" value="�˻�">
						<%}else{%>
							�α����Ͽ� �˻���� �������.
						<%}%>
						
					</form>

					<!--  <img class="d-block img-fluid" src="./img/white-img.jpg" alt="First slide"> �̹��� ���� �ִ� ��-->

					<%
					mat_select = (String) session.getAttribute("mat_select");
					if(mat_select != null){
					System.out.print("���� : "+mat_select);
					
					if(mat_select.equals("school")){
						SchoolList = (ArrayList<SchoolDTO>) session.getAttribute("mat_search");
					}
					else if(mat_select.equals("fac")){
						FacList = (ArrayList<FacilityDTO>) session.getAttribute("mat_search");
					}
					else if(mat_select.equals("park")){
						ParkList = (ArrayList<ParkDTO>) session.getAttribute("mat_search");
					}
					else if(mat_select.equals("lib")){
						LibList = (ArrayList<LibDTO>) session.getAttribute("mat_search");
					}
					else{
					MatSearchList = (ArrayList<Main_filterDTO>) session.getAttribute("mat_search");
					}
					
					
					if (MatSearchList != null) {%>
					<table>
						<tr>
							<td>���ã��</td>
							<td>��ȣ</td>
							<%if (mat_select.equals("crime")) {%>
							<td>������ ��</td>
							<%}%>
							<%if (mat_select.equals("charge")) {%>
							<td>������ ������</td>
							<%}%>
							<%if (mat_select.equals("subway")) {%>
							<td>����ö</td>
							<%}%>
							<%if (mat_select.equals("coffee")) {%>
							<td>��Ÿ����</td>
							<%}%>

							<td>�Ÿ� ��ȣ</td>
							<td>��</td>
							<td>����</td>
							<td>����⵵</td>
							<td>�̸�</td>
							<td>�ŷ� �⵵</td>
							<td>��</td>
							<td>��</td>
							<td>�� ��</td>
							<td>��</td>
						</tr>
						<%for (int i = 0; i < MatSearchList.size(); i++) {%>
						<tr>
							<td><input type="checkbox" value=""></td>
							<td><%=i + 1%></td>
							<%if (mat_select.equals("crime")) {%>
							<td><%=MatSearchList.get(i).getCrime()%></td>
							<%}%>
							<%if (mat_select.equals("charge")) {%>
							<td><%=MatSearchList.get(i).getCharge()%></td>
							<%}%>
							<%if (mat_select.equals("subway")) {%>
							<td><%=MatSearchList.get(i).getSubway()%></td>
							<%}%>
							<%if (mat_select.equals("coffee")) {%>
							<td><%=MatSearchList.get(i).getStarbucks()%></td>
							<%}%>
							<%if (mat_select.equals("movie")) {%>
							<td><%=MatSearchList.get(i).getMovie()%></td>
							<%}%>
							<td><%=MatSearchList.get(i).getMaemae_num()%></td>
							<td><%=MatSearchList.get(i).getDong()%></td>
							<td><%=MatSearchList.get(i).getPrice()%></td>
							<td><%=MatSearchList.get(i).getBuild_year()%></td>
							<td><%=MatSearchList.get(i).getApt_name()%></td>
							<td><%=MatSearchList.get(i).getYear()%></td>
							<td><%=MatSearchList.get(i).getMonth()%></td>
							<td><%=MatSearchList.get(i).getDay()%></td>
							<td><%=MatSearchList.get(i).getApt_size()%></td>
							<td><%=MatSearchList.get(i).getFloor()%></td>
						</tr>

						<%}%>
					</table>
					<%}%>

				</div>
				
				
				<!-- school -->
				<%if (SchoolList != null) {%>
					<table>
						<tr>
							<td>�б� �̸�</td>
							<td>�б� �ּ�</td>
							<td>��</td>
							<td>����</td>
							<td>�̸�</td>
							<td>����⵵</td>
							<td>�ŷ� �⵵</td>
							<td>��</td>
							<td>��</td>
							<td>�� ��</td>
							<td>��</td>
						</tr>
						<%for (int i = 0; i < SchoolList.size(); i++) {%>
						<tr>
							<td><%=i + 1%></td>
							<td><%=SchoolList.get(i).getSchool_name()%></td>
							<td><%=SchoolList.get(i).getScool_addr()%></td>
							<td><%=SchoolList.get(i).getDong()%></td>
							<td><%=SchoolList.get(i).getPrice()%></td>
							<td><%=SchoolList.get(i).getBuild_year()%></td>
							<td><%=SchoolList.get(i).getApt_name()%></td>
							<td><%=SchoolList.get(i).getYear()%></td>
							<td><%=SchoolList.get(i).getMonth()%></td>
							<td><%=SchoolList.get(i).getDay()%></td>
							<td><%=SchoolList.get(i).getApt_size()%></td>
							<td><%=SchoolList.get(i).getFloor()%></td>
						</tr>

						<%}%>
					</table>
					<%}%>
					
					
					
					<!-- facility -->
				<%if (FacList != null) {%>
					<table>
						<tr>
							<td>��ȣ</td>
							<td>����Ʈ �̸�</td>
							<td>�ǳ� �ü�</td>
							<td>��</td>
							<td>����</td>
							<td>����⵵</td>
							<td>�ŷ� �⵵</td>
							<td>��</td>
							<td>��</td>
							<td>�� ��</td>
							<td>��</td>
						</tr>
						<%for (int i = 0; i < FacList.size(); i++) {%>
						<tr>
							<td><%=i + 1%></td>
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

						<%}%>
					</table>
					<%}%>
					
					<!-- Park -->
				<%if (ParkList != null) {%>
					<table>
						<tr>
							<td>��ȣ</td>
							<td>���� ����</td>
							<td>���� ũ��</td>
							<td>����Ʈ �̸�</td>
							<td>��</td>
							<td>����</td>
							<td>����⵵</td>
							<td>�ŷ� �⵵</td>
							<td>��</td>
							<td>��</td>
							<td>�� ��</td>
							<td>��</td>
						</tr>
						<%for (int i = 0; i < ParkList.size(); i++) {%>
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

						<%}%>
					</table>
					<%}%>
					
					
					<!-- Lib -->
				<%if (LibList != null) {%>
					<table>
						<tr>
							<td>��ȣ</td>
							<td>������ �̸�</td>
							<td>�޹���</td>
							<td>����Ʈ �̸�</td>
							<td>��</td>
							<td>����</td>
							<td>����⵵</td>
							<td>�ŷ� �⵵</td>
							<td>��</td>
							<td>��</td>
							<td>�� ��</td>
							<td>��</td>
						</tr>
						<%for (int i = 0; i < LibList.size(); i++) {%>
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

						<%}%>
					</table>
					<%}%>

				</div>
				<%} %>

				<!-- ���� -->
				
				


				<!-- �Ӵ� -->
				<div id="imdae">

					<h1>�Ӵ�</h1>
					<form action="ImdaeSearchService.do" method="post">

						<!-- radio�� �� -->
						��<input type="radio" name="search_type" value="region"> ��<input
							type="radio" name="search_type" value="dong"> �˻� : <input
							type="text" name="imdae_search"> <input type="submit"
							value="�˻�">
					</form>




				</div>

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->
	
	
	<br>
	<br>
	<br>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2020</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="./vendor/jquery/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
	</script>

</body>

</html>
