<%@page import="com.model.LibDTO"%>
<%@page import="com.model.ParkDTO"%>
<%@page import="com.model.FacilityDTO"%>
<%@page import="com.model.SchoolDTO"%>
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
   .my-4{
      font-weight : bold;
   }
   .green_window {
      display: inline-block;
      width: 500px; height: 55px;
      border: 3px solid transparent;
      background: white;
   }
   .input_text {
      width: 450px; height: 40px;
      margin: 6px 0 0 9px;
      border: 0;
      line-height: 30px;
      font-size: 16px;
      outline: none;
      float : left;
   }
   .sch_smit {
      width: 150px; height: 55px;
      margin: 0; border: 0;
      vertical-align: top;
      background: white;
      color: black;
      font-weight: bold;
      border-radius: 1px;
      cursor: pointer;
   }
   .SelectSearch{
      width: 130px; height: 55px;
      border : 3px solid transparent;
      background: white;
      vertical-align: top;
   }

.img{
   background-image: url("./maemae.jpg");
   background-repeat: no-repeat;
   background-size : 950px;
   position : relative;
   width: 100%;
   height: 100%;
   left:100px;
}
.img2_1 {
   background-image: url("./filter.jpg");
   background-repeat: no-repeat;
   background-size : 820px;
   position : relative;
   width: 100%;
   height: 100%;
   left: 56%;
   bottom : 860px;
}
.img2_2 {
   background-image: url("./filter.jpg");
   background-repeat: no-repeat;
   background-size : 820px;
   position : relative;
   width: 100%;
   height: 100%;
   left: 56%;
   bottom : 860px;
}
.img3_1 {
   background-image: url("./pre.jpg");
   background-repeat: no-repeat;
   background-size : 820px;
   position : relative;
   width: 100%;
   height: 300px;
   left: 56%;
   bottom : 1450px;
}
.img3_2 {
   background-image: url("./pre.jpg");
   background-repeat: no-repeat;
   background-size : 820px;
   position : relative;
   width: 100%;
   height: 300%;
   left: 56%;
   bottom : 1450px;
}
.search1{
   position: absolute;
   top:650px;
   left :150px;
}
.welcome{
   position: relative;
   left:130px;
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
                  }%> <%if (info != null) {%>
               
               <li class="nav-item">
                  <%if (info.getId().equals("admin")) {%> <a class="nav-link"
                  href="select.jsp">ȸ������ ����</a> <%}%>
               </li>
               <li class="nav-item"><a class="nav-link" href="favorite.jsp">���ã��</a></li>
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
   
         <br><br>
         <div class="welcome">
        <h1><b>100�ٹ濡 ���Ű� ȯ���մϴ�!</b></h1><hr>
        <h3>�����־��� ����Ʈ �Ź��ü��� �˾ƺ�����</h3><br>
      </div>
      
      <div class = "img">
      </div>
      <div class = "search1">
            <form action="SearchService.do" method="post">
               <select class='SelectSearch' name = "table">
                  <option value = "dong">������</option>
                  <option value = "apt_name">����Ʈ</option>
               </select>
            <span class='green_window'>
            <input type="text" class='input_text' name="search" onkeydown="enterSearch()"
                  placeholder="� ������ ����������?">
            </span>
             <button type="submit" class="sch_smit">�˻�</button>
            </form>
         </div>
      
      
      
      <%if (info == null){ %>
      <div class = "img2_1" >
      </div>
      <%} else {%>
      <div class = "img2_2">
      </div>
      <%} %>
      
      <%if (info == null){ %>
      <div class = "img3_1" >
      </div>
      <%} else {%>
      <div class = "img3_2">
      </div>
      <%} %>

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
      $('.img').click(function(){
         location.href = 'index_maemae.jsp'
      });
      $('.img2_1').click(function(){
         location.href = 'index_mat.jsp'
      });
      $('.img2_2').click(function(){
         location.href = 'index_mat.jsp'
      });
      $('.img3_1').click(function(){
         alert('�α����� ���ּ���');
      });
      $('.img3_2').click(function(){
         location.href = 'price.jsp'
      });
   </script>
<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">����Ʈ���簳�߿� 2��������Ʈ Leader</p>
    </div>
    <!-- /.container -->
</footer>
</body>

</html>