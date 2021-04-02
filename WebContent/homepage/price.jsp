<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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

<title>ȸ����������</title>
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
   
   #option{
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
	 border: 1px solid transparent;
     border-collapse: separate;
     border-spacing: 1px;
     text-align: left;
     line-height: 1.5;
     margin-left:auto; 
     margin-right:auto;
     white-space: nowrap;
     padding :40px;'
     border-top: 1px solid #ccc;
     font-size: 16px;
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
   .field{
   	border-style: solid;
   }
   
   legend{
   display: inline-block;
   	background-color:#343A40;
   	color : #fff;
   	padding : 3px;
   	font-size: 28px;
   }
   .ck{
   	font-size: 22px;
   	vertical-align:float;
	vertical-align: text-top;
   }
   
   input[type="checkbox"]{
	width: 25px; /*Desired width*/
	height: 25px; /*Desired height*/
	margin : auto;
	}

	p{
	font-size: 18px;
	font-weight : bold;
	text-align: center;
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
               <li class="nav-item active"></li>
               <li class="nav-item"><a class="nav-link" href="index_main.jsp">����ȭ��</a></li>
            </ul>
         </div>
      </div>
   </nav>
   
   <!-- ���� ���� �ý��� -->
   <br><br><br><br><br><br><br><br>
   <div id="option">
	<div class="checks">
		<h3><b>������ �����Ͽ� ����Ʈ ������ �����غ�����!</b></h3><br>
		<form action="http://121.147.185.66:9000/train" method="post">
		<!-- üũ�ڽ� -->
			<fieldset>
				<legend>���Ǽ���</legend>
				<br>
				<div class = "ck_item">
					<table>
					<tr><td>
					<label class="ck"><input type = "checkbox" name="check" value="price"> �ŷ��ݾ�</label></td></tr>
					<tr><td>
					<label class="ck"><input type = "checkbox" name="check" value="arch"> ����⵵</label></td></tr>
					<tr><td>
					<label class="ck"><input type = "checkbox" name="check" value="apt_size"> ���</label></td></tr>
					<tr><td>
					<label class="ck"><input type = "checkbox" name="check" value="floor"> ��</label></td></tr>
					<tr><td>
					<label class="ck"><input type = "checkbox" name="check" value="crime"> �����ڼ�</label></td></tr>
					<tr><td>
					<label class="ck"><input type = "checkbox" name="check" value="star"> ��Ÿ����</label></td></tr>
					<tr><td>
					<label class="ck"><input type = "checkbox" name="check" value="subway"> ����ö</label></td></tr>
					<tr><td>
					<label class="ck"><input type = "checkbox" name="check" value="movie"> ��ȭ��</label></td></tr>
					<tr><td>
					<label class="ck"><input type = "checkbox" name="check" value="charge"> ������ ������</label></td></tr>
					<tr><td>					
					<p>
					<button type="submit" class="sch_smit" >���ݿ���</button>
					<button type="reset" class="sch_smit">�ʱ�ȭ</button>
					</p></td></tr>
					</table>
			</fieldset>
		</form>
		</div>
	</div>
	
	
		
	
</body>
</html>