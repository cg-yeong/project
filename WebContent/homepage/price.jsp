<%@page import="com.model.ImdaeSearchDTO"%>
<%@page import="com.model.Rent_searchDTO"%>
<%@page import="com.model.Apt_name_searchDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Main_filterDAO"%>
<%@page import="com.model.Main_filterDTO"%>
<%@page import="com.model.MemberDTO"%>.
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

#mat,#junwall,#imdae,#mat , .col-lg-3{
	display : none;
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
						}%> <%if (info != null) {%>
					
					<li class="nav-item">
						<%if (info.getId().equals("admin")) {%> <a class="nav-link"
						href="select.jsp">ȸ������ ����</a> <%}%>
					</li>
					<li class="nav-item"><a class="nav-link" href="mypage.jsp">����������</a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutService.do">�α׾ƿ�</a></li>
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
				<br>
				<h4 class="my-4">�Ź�</h4>
				<div class="list-group">
					<a href="index_maemae.jsp" class="list-group-item" id="check1">�Ÿ�</a> 
					<a href="index_rent.jsp" class="list-group-item" id="check2">�� ����</a>
				</div>
				<h4 class="my-4">����</h4>
				<div class="list-group">
					<a href="index_mat.jsp" class="list-group-item" id="check3">����</a>
					<%if(info != null){%>
					<a href="index_imdae.jsp" class="list-group-item" id="check4">�Ӵ�</a>
					<%}else {%>
					<a href="" class="list-group-item" id="check4">�Ӵ�</a>
					<%}%>
				</div>
				<h4 class="my-4">����</h4>
				<div class="list-group">
					<%if(info != null){ %>
					<a href="price.jsp" class="list-group-item" id="check2">���� ����</a>

					<%}else {%>
					<a href="" class="list-group-item" id="check2">���� ����</a>
					<%}%>
				</div>
			</div>
		</div>
	</div>
	
	<!-- ���� ���� �ý��� -->
	<h5>������ �����Ͽ� ����Ʈ ������ �����غ�����!</h5><br>
	<div class="cotainer">
		<form action="http://localhost:9000/train" method="post">
		<label><input type = "checkbox" name="check" value="price"> �ŷ��ݾ�</label>
		<label><input type = "checkbox" name="check" value="arch"> ����⵵</label>
		<label><input type = "checkbox" name="check" value="apt_size"> ���</label>
		<label><input type = "checkbox" name="check" value="floor"> ��</label><br>
		<label><input type = "checkbox" name="check" value="crime"> �����ڼ�</label>
		<label><input type = "checkbox" name="check" value="star"> ��Ÿ����</label>
		<label><input type = "checkbox" name="check" value="subway"> ����ö</label>
		<label><input type = "checkbox" name="check" value="movie"> ��ȭ��</label>
		<label><input type = "checkbox" name="check" value="charge"> ������ ������</label>
		<p><input type="submit"> <input type="reset"></p>
		</form>
	</div>
		<!-- footer �ڸ� ���߱� �뵵 -->
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>
	

</body>
</html>