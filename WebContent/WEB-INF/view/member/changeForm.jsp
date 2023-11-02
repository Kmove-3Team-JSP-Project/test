<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員情報の修正</title>
<style>
body {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
	margin: 0;
}

.logo {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 20px;
}

.login-form {
	text-align: center;
	background-color: #f4f4f4;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.input-group {
	margin: 10px 0;
}

.input-group label {
	display: block;
}

.input-group input {
	width: 100%;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.button-group {
	margin-top: 20px;
}

.button-group button {
	padding: 10px 20px;
	border: none;
	background-color: #0073e6;
	color: white;
	border-radius: 5px;
	cursor: pointer;
}

.button-group a {
	text-decoration: none;
	margin-left: 10px;
}
</style>
</head>
<body>
	<div class="login-form">
		<h1>会員情報の修正</h1>
		<form action="로그인처리페이지URL" method="post">
			<div class="input-group">
				<label for="name">氏名</label> <input type="text" id="name"
					name="name">
			</div>

			<div class="input-group">
				<label for="memberId">社員番号(ID)</label> <input type="text" id="id"
					name="id">
			</div>

			<div class="input-group">
				<label for="password">パスワード</label> <input type="password"
					id="password" name="password">
			</div>

			<div class="input-group">
				<label for="confirmPassword">パスワード確認</label> <input type="text"
					id="confirmPassword" name="confirmPassword">
			</div>

			<div class="input-group">
				<label for="mail">メール</label> <input type="text" id="mail"
					name="mail">
			</div>

			<div class="input-group">
				<label for="position">役職</label> <input type="text" id="position"
					name="position">
			</div>

			<div class="button-group">
				<button type="submit">会員登録</button>
			</div>
		</form>
	</div>
</body>
</html>