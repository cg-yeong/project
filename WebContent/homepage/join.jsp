<%@page import="com.model.MemberDAO"%>
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

<title>ȸ������</title>
</head>
<style>
body{
    margin: 0;
    font-size: .9rem;
    font-weight: 400;
    line-height: 1.6;
    color: #212529;
    text-align: left;
    background-color: #f5f8fa;
}

.navbar-laravel
{
    box-shadow: 0 2px 4px rgba(0,0,0,.04);
}

.navbar-brand , .nav-link, .my-form, .login-form
{
    font-weight : bold;
    font-family: Raleway, sans-serif;
}

.my-form
{
    padding-top: 1.5rem;
    padding-bottom: 1.5rem;
}

.my-form .row
{
    margin-left: 0;
    margin-right: 0;
}

.login-form
{
    padding-top: 1.5rem;
    padding-bottom: 1.5rem;
}

.login-form .row
{
    margin-left: 0;
    margin-right: 0;
}
</style>
<body>
		<script src="./js/jquery-3.6.0.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

	<!-- ��ܸ޴� ���� -->
	<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
		<div class="container">
			<a class="navbar-brand" href="#">���־���Ʈ����</a> 
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="login.jsp">�α���</a></li>
					<li class="nav-item"><a class="nav-link" href="index_main.jsp">����ȭ��</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<br>
	
	<!-- ȸ������ �Է�â -->
	<main class="my-form">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card">
						<div class="card-header">ȸ������</div>
						<div class="card-body">
							<form name="my-form" onsubmit="return validform()" action="JoinService.do" method="post">
								
								<div class="form-group row">
									<label for="full_name"
										class="col-md-4 col-form-label text-md-right">���̵�</label>									
									<div class="col-md-6">
										<input type="text" id="id" class="form-control" name="id">								 										
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right">��й�ȣ</label>
									<div class="col-md-6">
										<input type="password" id = "pw1" class="form-control" class="form-control" name="pw" required/>
									</div>				
								</div>
								
								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right">��й�ȣȮ��</label>
									<div class="col-md-6">
									
									<input type="password" id = "pw2" class="form-control" class="form-control" name="rePw" required/>									
									<h7 class="alert-success" id = "alert-success">��й�ȣ�� ��ġ�մϴ�.</h7>
									<h7 class="alert-danger" id = "alert-danger">��й�ȣ�� ��ġ���� �ʽ��ϴ�.</h7>
									</div>
								</div>
								<script src="./js/jquery-3.6.0.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
								<script type="text/javascript">
								$(function(){
								$("#alert-success").hide();
								$("#alert-danger").hide();
								$(".form-control").keyup(function(){
									var pw1 =$("#pw1").val();
									var pw2 =$("#pw2").val();
									
									if(pw1 != "" || pw2 != ""){
										if(pw1 != pw2){
											$("#alert-success").hide();
											$("#alert-danger").show();								
										}else{
											$("#alert-success").show();
											$("#alert-danger").hide();											
										}
									}
								});
								});
								</script>

								<div class="form-group row">
									<label for="user_name"
										class="col-md-4 col-form-label text-md-right">�̸�</label>
									<div class="col-md-6">
										<input type="text" id="name" class="form-control" name="name">
									</div>
								</div>

								<div class="form-group row">
									<label for="phone_number"
										class="col-md-4 col-form-label text-md-right">�ڵ�����ȣ</label>
									<div class="col-md-6">
										<input type="text" id="tel" class="form-control" name="tel">
									</div>
								</div>

								<div class="form-group row">
									<label for="permanent_address"
										class="col-md-4 col-form-label text-md-right">�������</label>
									<div class="col-md-6">
										<input type="text" id="birth" class="form-control"
											name="birth">
									</div>
								</div>

								<div class="form-group row">
									<label for="present_address"
										class="col-md-4 col-form-label text-md-right">�ּ�(��)</label>
									<div class="col-md-6">
										<input type="text" id="addr" class="form-control" name="addr">
									</div>
								</div>

								<div class="col-md-6 offset-md-4">
									<button type="submit" class="btn btn-primary" name="submit">Sign up</button>
										
								</div>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</div>

	</main>
	<script src="./js/jquery-3.6.0.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script>

function validform() {

    var a = document.forms["my-form"]["id"].value;
    var b = document.forms["my-form"]["pw"].value;
    var c = document.forms["my-form"]["name"].value;
    var d = document.forms["my-form"]["tel"].value;
    var e = document.forms["my-form"]["birth"].value;
    var f = document.forms["my-form"]["addr"].value;

    if (a==null || a=="")
    {
        alert("���̵� �Է����ּ���!");
        return false;
    }else if (b==null || b=="")
    {
        alert("��й�ȣ�� �Է����ּ���!");
        return false;
    }else if (c==null || c=="")
    {
        alert("�̸��� �Է����ּ���!");
        return false;
    }else if (d==null || d=="")
    {
        alert("��ȭ��ȣ�� �Է����ּ���!");
        return false;
    }else if (e==null || e=="")
    {
        alert("��������� �Է����ּ���!");
        return false;
    }else if (f==null || f=="")
    {
        alert("�ּ�(��)�� �Է����ּ���!");
        return false;
    }

}
</script>

<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">����Ʈ���簳�߿� 2��������Ʈ Leader</p>
    </div>
    <!-- /.container -->
 </footer>
</body>
</html>