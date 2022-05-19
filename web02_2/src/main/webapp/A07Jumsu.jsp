<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Sample</title>
<link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="panel-heading">
		<h3 align="center">Form</h3>
	</div>

	<div class="panel-body">
		<form method="post" action="">
			<table class="table">
				<tr>
					<td>이름:</td>
					<td><input type="text" name="name" size="30" maxlength="10"></td>
				</tr>
				<tr>
					<td>국어:</td>
					<td><input type="text" name="id" value="아이디 입력" size="50"></td>
				</tr>
				<tr>
					<td>수학:</td>
					<td><input type="password" name="password"></td>
				</tr>
								<tr>
					<td colspan="2">
						<input type="submit" value="전송"> 
				</tr>
			</table>

		</form>
	</div>


</body>
</html>



