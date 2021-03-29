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
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>APT Homepage</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
<link href="./main.css" rel="stylesheet">

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

#basic, #junwall, #mat, #imdae {
	display : none;
}
div{
	
}
</style>

</head>

<body>


	<%
	//���� ���� ������ֱ�.
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	Main_filterDAO dao = new Main_filterDAO();
	ArrayList<Main_filterDTO> AptSearchList = null;
	ArrayList<Main_filterDTO> DongSearchList = null;
	ArrayList<Rent_searchDTO> RentSearchList = null;
	ArrayList<Main_filterDTO> MatSearchList = null;
	ArrayList<ImdaeSearchDTO> ImdaeSearchList = null;

	if (info != null) {
		/*���� �⺻���Ͱ� �ƴ� �������� �ÿ� �ʿ��� �κ� */
	}
	%>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Leader</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- ȸ������ �� ���������� -->
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">����
							<span class="sr-only">(current)</span>
					</a></li>
					<%if (info != null) {%>
						<li class="nav-item">
						<%if (info.getId().equals("admin")) {%> 
							<a class="nav-link" href="select.jsp">ȸ������ ����</a></li>
						<%}%>
							<li class="nav-item"><a class="nav-link" href="mypage.jsp">����������</a></li>
							<li class="nav-item"><a class="nav-link" href="LogoutService.do">�α׾ƿ�</a></li>
						<%} else {%>
							<li class="nav-item"><a class="nav-link" href="join.html">ȸ������</a></li>
							<li class="nav-item"><a class="nav-link" href="login.html">�α���</a></li>
						<%}%>
				</ul>
			</div>
		</div>
	</nav>


	<!-- �޴������� -->
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
					<a href="index_imdae.jsp" class="list-group-item" id="check4">�Ӵ�</a>
				</div>
				<h1 class="my-4">���� ����</h1>
				<div class="list-group">
					<a href="price.jsp" class="list-group-item" id="check2">���� ����</a>
				</div>
			</div>
		</div>
	</div>

	<!-- �Ÿ� -->
	<div id="basic" class = "raw">
		<h1>�Ź�</h1>
		<form action="SearchService.do" method="post">
			<!-- radio�� �� -->
			����Ʈ<input type="radio" name="table" value="apt_name"> 
			��<input	type="radio" name="table" value="dong"> 
			�˻� : <input type="text" name="search"> 
			<input type="submit" value="�˻�">
		</form>
	</div>
	

	<div id="basic">
		<%DongSearchList = (ArrayList<Main_filterDTO>) session.getAttribute("DongSearchList");
			if (DongSearchList != null) {
				System.out.print("�� ����!!");
				System.out.print(DongSearchList.size());%>
		<table>
			<tr>
				<td>���ã��</td>
				<td>��ȣ</td>
				<td>�Ÿ� ��ȣ</td>
				<td>����Ʈ �̸�</td>
				<td>�� �̸�</td>
				<td>����</td>
				<td>���� �⵵</td>
				<td>�ŷ� �⵵</td>
				<td>��</td>
				<td>��</td>
				<td>���</td>
				<td>��</td>
			</tr>

			<%for (int i = 0; i < DongSearchList.size(); i++) {%>
			<tr>
				<td><input type="checkbox" value=""></td>
				<td><%=i + 1%></td>
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

		<%AptSearchList = (ArrayList<Main_filterDTO>) session.getAttribute("AptSearchList");
			if (AptSearchList != null) {
				System.out.print("����Ʈ ����!");%>
		<table>
			<tr>
				<td>���ã��</td>
				<td>��ȣ</td>
				<td>�Ÿ� ��ȣ</td>
				<td>����Ʈ �̸�</td>
				<td>�� �̸�</td>
				<td>����</td>
				<td>���� �⵵</td>
				<td>�ŷ� �⵵</td>
				<td>��</td>
				<td>��</td>
				<td>���</td>
				<td>��</td>
			</tr>

			<%for (int i = 0; i < AptSearchList.size(); i++) {%>
			<tr>
				<td><input type="checkbox" value="1"></td>
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

	<!-- �� ���� -->
	<div id="junwall">
		<h1>�� ����</h1>
		<form action="RentSearchService.do" method="post">
			<!-- radio�� �� -->
			����Ʈ<input type="radio" name="table" value="apt_name"> 
			��<input	type="radio" name="table" value="dong"> 
			�˻� : <input type="text" name="rent_search"> 
			<input type="submit" value="�˻�">
		</form>

		<!--  <img class="d-block img-fluid" src="./img/white-img.jpg" alt="First slide"> �̹��� ���� �ִ� ��-->


		<div id="row">
			<%RentSearchList = (ArrayList<Rent_searchDTO>) session.getAttribute("RentSearchList");
			if (RentSearchList != null) {%>
			<table>
				<tr>
					<td>���ã��</td>
					<td>��ȣ</td>
					<td>��</td>
					<td>���� ��ȣ</td>
					<td>������</td>
					<td>����</td>
					<td>����Ʈ �̸�</td>
					<td>���� �⵵</td>
					<td>�ŷ� �⵵</td>
					<td>��</td>
					<td>��</td>
					<td>�� ��</td>
					<td>��</td>
				</tr>
				<%for (int i = 0; i < RentSearchList.size(); i++) {%>
				<tr>
					<td><input type="checkbox" value=""></td>
					<td><%=i + 1%></td>
					<td><%=RentSearchList.get(i).getDong()%></td>
					<td><%=RentSearchList.get(i).getBuild_year()%></td>
					<td><%=RentSearchList.get(i).getDeposit()%></td>
					<td><%=RentSearchList.get(i).getLoyer()%></td>
					<td><%=RentSearchList.get(i).getApt_name()%></td>
					<td><%=RentSearchList.get(i).getBuild_year()%></td>
					<td><%=RentSearchList.get(i).getYear()%></td>
					<td><%=RentSearchList.get(i).getMonth()%></td>
					<td><%=RentSearchList.get(i).getDate()%></td>
					<td><%=RentSearchList.get(i).getApt_size()%></td>
					<td><%=RentSearchList.get(i).getFloor()%></td>
				</tr>

				<%}%>
			</table>
			<%}%>
		</div>
	</div>
	
	<!-- ���� -->
	<div id="mat">
		<h1>����</h1>
		<select name="mat_select">
			<option value="crime">������</option>
			<option value="charge">������ ������</option>
			<option value="subway">����ö</option>
			<option value="coffee">��Ÿ����</option>
			<option value="movie">��ȭ��</option>
		</select>

		<form action="MatSearchService.do" method="post">
			������ �˻� : <input type="text" name="mat_search"> 
			<input type="submit" value="�˻�">
		</form>

		<!--  <img class="d-block img-fluid" src="./img/white-img.jpg" alt="First slide"> �̹��� ���� �ִ� ��-->

		<%MatSearchList = (ArrayList<Main_filterDTO>) session.getAttribute("mat_search");
			if (MatSearchList != null) {%>
		<table>
			<tr>
				<td>���ã��</td>
				<td>��ȣ</td>
				<td>���� ����</td>
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
				<td></td>
				<%if (false) {%>
				<td><%=MatSearchList.get(i).getCrime()%></td>
				<td><%=MatSearchList.get(i).getCharge()%></td>
				<td><%=MatSearchList.get(i).getStarbucks()%></td>
				<td><%=MatSearchList.get(i).getSubway()%></td>
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

	<!-- ���� -->


	<!-- �Ӵ� -->
	<div id="imdae">
		<h1>�Ӵ�</h1>
		<form action="ImdaeSearchService.do" method="post">
			<!-- radio�� �� -->
			����Ʈ<input type="radio" name="search_type" value="apt_name"> 
			��<input	type="radio" name="search_type" value="dong"> 
			�˻� : <input type="text" name="imdae_search"> 
			<input type="submit" value="�˻�">
		</form>


		<%ImdaeSearchList = (ArrayList<ImdaeSearchDTO>) session.getAttribute("ImdaeSearchList");
			if (ImdaeSearchList != null) {%>
		<table>
			<tr>
				<td>���ã��</td>
				<td>��ȣ</td>
				<td>�Ӵ� ��ȣ</td>
				<td>�� �̸�</td>
				<td>����Ʈ �̸�</td>
				<td>�Ӵ� ũ��</td>
				<td>������</td>
				<td>����</td>
				<td>�� �����</td>
				<td>�����</td>
				<td>�Ӵ� ����</td>
				<td>���� ����</td>
				<td>���� ����</td>
			</tr>

			<%for (int i = 0; i < ImdaeSearchList.size(); i++) {%>
			<tr>
				<td><input type="checkbox" value=""></td>
				<td><%=i + 1%></td>
				<td><%=ImdaeSearchList.get(i).getImdae_num()%></td>
				<td><%=ImdaeSearchList.get(i).getRegion()%></td>
				<td><%=ImdaeSearchList.get(i).getDong()%></td>
				<td><%=ImdaeSearchList.get(i).getImdae_name()%></td>
				<td><%=ImdaeSearchList.get(i).getImdae_size()%></td>
				<td><%=ImdaeSearchList.get(i).getDeposit()%></td>
				<td><%=ImdaeSearchList.get(i).getMonth_pay()%></td>
				<td><%=ImdaeSearchList.get(i).getTotal_cnt()%></td>
				<td><%=ImdaeSearchList.get(i).getCnt()%></td>
				<td><%=ImdaeSearchList.get(i).getImdae_div()%></td>
				<td><%=ImdaeSearchList.get(i).getMove_into_date()%></td>
			</tr>

			<%}%>
		</table>
		<%}%>
	</div>


	<!-- �Ӵ� -->





	<!-- Footer -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<footer class="py-5 bg-dark">

		<div class="container">
			<p class="m-0 text-center text-white">Copyright & copy;
				YourWebsite 2020</p>
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
