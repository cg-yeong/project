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

<title>광주아파트가격예측</title>
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
   #junwall, #mat, #imdae {
      display: none;
}
	.col-lg-9{
		display:flex;'
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
						//전역 변수 만들어주기.
						MemberDTO info = (MemberDTO) session.getAttribute("info");
						Main_filterDAO dao = new Main_filterDAO();
						ArrayList<Main_filterDTO> AptSearchList = null;
						ArrayList<Main_filterDTO> DongSearchList = null;
						ArrayList<Rent_searchDTO> RentSearchList = null;
						ArrayList<Main_filterDTO> MatSearchList = null;
						ArrayList<ImdaeSearchDTO> ImdaeSearchList = null;
						String mat_select = null;

						if (info != null) {
							/*여긴 기본필터가 아닌 맞춤필터 시에 필요한 부분 */
						}%> <%if (info != null) {%>
					
					<li class="nav-item">
						<%if (info.getId().equals("admin")) {%> <a class="nav-link"
						href="select.jsp">회원정보 관리</a> <%}%>
					</li>
					<li class="nav-item"><a class="nav-link" href="mypage.jsp">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutService.do">로그아웃</a></li>
					<%} else {%>
					<li class="nav-item"><a class="nav-link" href="join.jsp">회원가입</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">로그인</a></li>
					<%}%>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!--사이드메뉴-->
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<br>
				<h4 class="my-4">매물</h4>
				<div class="list-group">
					<a href="index_maemae.jsp" class="list-group-item" id="check1">매매</a> 
					<a href="index_rent.jsp" class="list-group-item" id="check2">전 월세</a>
				</div>
				<h4 class="my-4">필터</h4>
				<div class="list-group">
					<a href="index_mat.jsp" class="list-group-item" id="check3">맞춤</a>
					<%if(info != null){%>
					<a href="index_imdae.jsp" class="list-group-item" id="check4">임대</a>
					<%}else {%>
					<a href="" class="list-group-item" id="check4">임대</a>
					<%}%>
				</div>
				<h4 class="my-4">예측</h4>
				<div class="list-group">
					<%if(info != null){ %>
					<a href="price.jsp" class="list-group-item" id="check2">가격 예측</a>

					<%}else {%>
					<a href="" class="list-group-item" id="check2">가격 예측</a>
					<%}%>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 가격 예측 -->
	<div class="col-lg-9">
		<div id="price" class="raw">
		<h5>조건을 선택하여 아파트 가격을 예측해보세요!</h5><br>
		<form action="http://localhost:9000/train" method="post">
		<!-- 체크박스 -->
			<fieldset>
				<legend>조건선택</legend>
					<input type ="checkbox" class="btn-check" id="btn-check" autocomplete ="off">
					<label class="btn-btn-primary" for ="btn-check">거래금액</label>
				
				
				
				
				<label><input type = "checkbox" name="check" value="price"> 거래금액</label>
				<label><input type = "checkbox" name="check" value="arch"> 건축년도</label>
				<label><input type = "checkbox" name="check" value="apt_size"> 평수</label>
				<label><input type = "checkbox" name="check" value="floor"> 층</label><br>
				<label><input type = "checkbox" name="check" value="crime"> 범죄자수</label>
				<label><input type = "checkbox" name="check" value="star"> 스타벅스</label>
				<label><input type = "checkbox" name="check" value="subway"> 지하철</label>
				<label><input type = "checkbox" name="check" value="movie"> 영화관</label>
				<label><input type = "checkbox" name="check" value="charge"> 전기차 충전소</label>
				<p><input type="submit"> <input type="reset"></p>
			</fieldset>
		</form>
		</div>
	</div>
	
	

</body>
</html>