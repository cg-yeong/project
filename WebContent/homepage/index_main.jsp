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
	}
	th {
	  width: 150px;
	  padding: 10px;
	  font-weight: bold;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc;
	}
	td {
	  width: 350px;
	  padding: 10px;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc;
	}
	
	#basic, #junwall, #mat, #imdae {
		display: none;
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
	<!-- 메인페이지 -->
	<!-- 매매 -->
	<div class="col-lg-9">
		<div id="basic" class="raw">
		<br><br>
			<h5>어떤 매물을 찾고 계시나요?</h5><br>
			<form action="SearchService.do" method="post">
			<!-- 옵션선택 -->
			<select class='SelectSearch' name="table">
				<option value='dong'>법정동</option>
				<option value='apt_name'>아파트</option>
			</select>
			<span class='green_window'>
				<input type="text" class='input_text' name="search" onkeydown="enterSearch()"
						placeholder="검색어를 입력하세요">
			</span>
				<button type="submit" class="sch_smit">검색</button>
			</form>
			
			<div class="unit"> (단위 : 백만원)</div>
					
			<!-- 동으로 조회하기 -->
			<%DongSearchList = (ArrayList<Main_filterDTO>) session.getAttribute("DongSearchList");
			if (DongSearchList != null) {
				System.out.print("동 성공!!");%>
			<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>매매번호</th>
					<th>아파트명</th>
					<th>법정동</th>
					<th>실거래가</th>
					<th>건축년도</th>
					<th>거래 년</th>
					<th>월</th>
					<th>일</th>
					<th>평수</th>
					<th>층</th>
				</tr>
			</thead>
			<tbody>
				<%for (int i = 0; i < DongSearchList.size(); i++) {%>
					<tr>
						<th scope='row' class="even"><%=i + 1%></th>
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
			</tbody>
			</table>
			<%}%>

		<!-- 아파트로 조회하기 -->
			<%AptSearchList = (ArrayList<Main_filterDTO>) session.getAttribute("AptSearchList");
			if (AptSearchList != null) {
				System.out.print("아파트 성공!");%>
			<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>매매번호</th>
					<th>아파트명</th>
					<th>법정동</th>
					<th>실거래가</th>
					<th>건축년도</th>
					<th>거래 년</th>
					<th>월</th>
					<th>일</th>
					<th>평수</th>
					<th>층</th>
				</tr>
			</thead>
			<tbody>
				<% for (int i = 0; i < AptSearchList.size(); i++) {%>
				<tr>
					<th scope='row' class="even"><%=i + 1%></th>
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
			</tbody>
			</table>
		<%}%>
	</div> <!-- 매매 문닫기 -->

	<!-- 전 월세 -->
	<div id="junwall" class="raw">
			<h5>찾으시는 전세/월세집이 있으시나요?</h5><br>
			<form action="RentSearchService.do" method="post">
		<!-- 옵션선택 -->
		<select class='SelectSearch' name="table">
			<option value='dong'>법정동</option>
			<option value='apt_name'>아파트</option>
		</select>
			<span class='green_window'>
				<input type="text" class='input_text' name="search" onkeydown="enterSearch()"
						placeholder="검색어를 입력하세요">
			</span>
				<button type="submit" class="sch_smit">검색</button>
			</form>
						
		<div class="unit"> (단위 : 백만원)</div>
					
			<%RentSearchList = (ArrayList<Rent_searchDTO>) session.getAttribute("RentSearchList");
			if (RentSearchList != null) {%>
			<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>렌트번호</th>
					<th>법정동</th>
					<th>건축년도</th>
					<th>보증금</th>
					<th>월세</th>
					<th>아파트이름</th>
					<th>거래 년</th>
					<th>월</th>
					<th>일</th>
					<th>평수</th>
					<th>층</th>
				</tr>
				</thead>
				<tbody>
				<%for (int i = 0; i < RentSearchList.size(); i++) {%>
				<tr>
					<td><input type="checkbox" value=""></td>
					<td><%=i + 1%></td>
					<td><%=RentSearchList.get(i).getRent_num()%></td>
					<td><%=RentSearchList.get(i).getDong()%></td>
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
				</tbody>
			</table>
			<%}%>
		</div> <!-- 전 월세문닫기 -->

		<!-- 맞춤필터 -->
		<div id="mat" class="raw">
			<br><br>
			<h5>원하는 조건을 선택하여서 조회해보세요!</h5><br>
			<form action="MatSearchService.do" method="post">
				<select class='SelectSearch' name="mat_select">
					<option value="crime">범죄자 수</option>
					<option value="charge">전기차 충전소</option>
					<option value="subway">지하철</option>
					<option value="coffee">스타벅스</option>
					<option value="movie">영화관</option>
					<option value="school">학교</option>
					<option value="fac">실내시설</option>
					<option value="lib">도서관</option>
					<option value="park">공원</option>
				</select>
			<%if(info != null){%>
				alert("로그인해주세요!");
			<%}else{%> 
				<span class='green_window'>
					<input type="text" class='input_text' name="search" onkeydown="enterSearch()"
							placeholder="동으로 검색하세요!">
				</span>
					<button type="submit" class="sch_smit">검색</button>
					
				</form>

		<!-- 맞춤옵션 -->
			<%
			mat_select = (String) session.getAttribute("mat_select");
			if(mat_select != null){
			System.out.print("선택 : "+mat_select);
			
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
			<thead>
				<tr>
					<th>번호</th>
					<%if (mat_select.equals("crime")) {%>
					<th>범죄자수</th>
					<%}%>
					<%if (mat_select.equals("charge")) {%>
					<th>전기차충전소</th>
					<%}%>
					<%if (mat_select.equals("subway")) {%>
					<th>지하철</th>
					<%}%>
					<%if (mat_select.equals("coffee")) {%>
					<th>스타벅스</th>
					<%}%>
					<%if (mat_select.equals("movie")) {%>
					<th>영화관</th>
					<%}%>
					<th>매매번호</th>
					<th>법정동</th>
					<th>아파트명</th>
					<th>실거래가</th>
					<th>건축년도</th>
					<th>거래 년</th>
					<th>월</th>
					<th>일</th>
					<th>평수</th>
					<th>층</th>
				</tr>
				<%}%>
				<%if(MatSearchList.size() == 0){%>
				<tr>
					<td colspan = 12>매물이 없습니다.</td>
				</tr>
				<%} %>
				</thead>
					<tbody>
						<%for (int i = 0; i < MatSearchList.size(); i++) {%>
						<tr>
							<th scope='row' class="even"><%=i + 1%></th>
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
			<!--school-->
			<%if (SchoolList != null) {%>
			<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>학교명</th>
					<th>학교주소</th>
					<th>법정동</th>
					<th>실거래가</th>
					<th>아파트명</th>
					<th>건축년도</th>
					<th>거래 년</th>
					<th>월</th>
					<th>일</th>
					<th>평수</th>
					<th>층</th>
				</tr>
					<%if(SchoolList.size() == 0){%>
				<tr>
					<td colspan = 12>매물이 없습니다.</td>
				</tr>
					<%} %>
			</thead>
			<tbody>
			<%for (int i = 0; i < SchoolList.size(); i++) {%>
				<tr>
					<th scope='row' class="even"><%=i + 1%></th>
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
			</tbody>
			</table>
			<%}%>
		<!-- facility -->
			<%if (FacList != null) {%>
				<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>아파트명</th>
						<th>실내시설</th>
						<th>법정동</th>
						<th>실거래가</th>
						<th>건축년도</th>
						<th>거래 년</th>
						<th>월</th>
						<th>일</th>
						<th>평수</th>
						<th>층</th>
					</tr>
			<%if(FacList.size() == 0){%>
			<tr>
				<td colspan = 11>매물이 없습니다.</td>
			</tr>
			<%} %>
			</thead>
			<tbody>
			<%for (int i = 0; i < FacList.size(); i++) {%>
				<tr>
					<th scope='row' class="even"><%=i + 1%></th>
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
			</tbody>
			</table>
			<%}%>
			<!-- Park -->
			<%if (ParkList != null) {%>	
			<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>공원정보</th>
					<th>공원크기</th>
					<th>아파트명</th>
					<th>법정동</th>
					<th>실거래가</th>
					<th>건축년도</th>
					<th>거래 년</th>
					<th>월</th>
					<th>일</th>
					<th>평수</th>
					<th>층</th>
				</tr>
			<%if(ParkList.size() == 0){%>
				<tr>
					<td colspan = 12>매물이 없습니다.</td>
				</tr>
			<%} %>
			</thead>
			<tbody>
			<%for (int i = 0; i < ParkList.size(); i++) {%>
				<tr>
					<th scope='row' class="even"><%=i + 1%></th>
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
			</tbody>
			</table>
			<%}%>
		
			<!-- Lib -->
			<%if (LibList != null) {%>
			<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>도서관명</th>
					<th>휴무일</th>
					<th>아파트명</th>
					<th>법정동</th>
					<th>실거래가</th>
					<th>건축년도</th>
					<th>거래 년</th>
					<th>월</th>
					<th>일</th>
					<th>평수</th>
					<th>층</th>
				</tr>
			<%if(LibList.size() == 0){%>
				<tr>
					<td colspan = 12>매물이 없습니다.</td>
				</tr>
			<%} %>
			</thead>
			<tbody>
			<%for (int i = 0; i < LibList.size(); i++) {%>
				<tr>
					<th scope='row' class="even"><%=i + 1%></th>
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
			</tbody>
			</table>
			<%} %>
			
		</div>

		<!-- 임대아파트 조회-->
		<div id="imdae" class="raw">
		<br><br>
			<h5>임대아파트를 조회해보세요!</h5><br>
			<form action="ImdaeSearchService.do" method="post">
			
			<!-- 옵션선택 -->
			<select class='SelectSearch' name="table">
				<option value='dong'>법정동</option>
			</select>
			<span class='green_window'>
				<input type="text" class='input_text' name="search" onkeydown="enterSearch()"
						placeholder="검색어를 입력하세요">
			</span>
				<button type="submit" class="sch_smit">검색</button>
			</form>
			
			<!-- 동으로 조회하기 -->
			<%ImdaeSearchList = (ArrayList<ImdaeSearchDTO>) session.getAttribute("ImdaeSearchList");
			if (ImdaeSearchList != null) {
			%>
			<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>임대번호</th>
					<th>지역구</th>
					<th>법정동</th>
					<th>아파트명</th>
					<th>임대크기</th>
					<th>보증금</th>
					<th>월세</th>
					<th>총 세대수</th>
					<th>세대수</th>
					<th>임대정보</th>
					<th>공급유형</th>
					<th>최초입주</th>
				</tr>
			</thead>
			<tbody>
				<%for (int i = 0; i < ImdaeSearchList.size(); i++) {%>
				<tr>
					<th scope='row' class="even"><%=i + 1%></th>
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
				</tbody>
				</table>
			<%}%>
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
