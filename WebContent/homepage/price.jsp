<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

<title>Insert title here</title>
<!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
  <link href="./main.css" rel="stylesheet">

</head>
<body>
	<h1>���� ���� �ý���</h1>
	
	<li font = "bold">���</li>
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