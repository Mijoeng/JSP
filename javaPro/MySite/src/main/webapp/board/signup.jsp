<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="loginform.css">


<meta charset="UTF-8">
<title>Insert title here</title>
<script>
const signUpBtn = document.getElementById("signUp");
const signInBtn = document.getElementById("signIn");
const container = document.querySelector(".container");

signUpBtn.addEventListener("click", () => {
  container.classList.add("right-panel-active");
});
signInBtn.addEventListener("click", () => {
  container.classList.remove("right-panel-active");
});
</script>
</head>
<body>
	<h1>회원가입</h1>
		<h1>로그인</h1>
	
	<form method="post" action="GetLogin.jsp">
	<input type="text" id="ID" name="ID" placeholder="아이디를 입력하세요" required="required">
	<input type="password" id="PW" name="PW" placeholder="비밀번호를 입력하세요" required="required">
	
	
	<button type="submit" >
		로그인
	</button>
<form method="post" action="makeaccount.jsp">
	<input type="text" id="ID" name="ID" placeholder="아이디를 입력하세요" required="required">
	<input type="password" id="PW" name="PW" placeholder="비밀번호를 입력하세요" required="required">
	<input type="text" id="NAME" name="NAME" placeholder="이름을 입력하세요" required="required">
	<input type="email" id="E-MAIL" name="E-MAIL" placeholder="이메일을 입력하세요" required="required">
	<input type="text" id="ADDRESS" name="ADDRESS" placeholder="주소를 입력하세요" required="required">
	<input type="text" id="AGE" name="AGE" placeholder="생년 월일을 입력하세요 (yyyy-mm-dd)" required="required">
	
	<button type="submit" >
		회원가입
	</button>
	<div class="wrapper">
  <div class="container">
    <div class="sign-up-container">
      <form>
        <h1>Create Account</h1>
        <div class="social-links">
          <div>
            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
          </div>
        </div>
        <span>or use your email for registration</span>
        <input type="text" placeholder="Name">
        <input type="email" placeholder="Email">
        <input type="password" placeholder="Password">
        <button class="form_btn">Sign Up</button>
      </form>
    </div>
    <div class="sign-in-container">
      <form>
        <h1>Sign In</h1>
        <div class="social-links">
          <div>
            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
          </div>
          <div>
            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
          </div>
        </div>
        <span>or use your account</span>
        <input type="email" placeholder="Email">
        <input type="password" placeholder="Password">
        <button class="form_btn">Sign In</button>
      </form>
    </div>
    <div class="overlay-container">
      <div class="overlay-left">
        <h1>Welcome Back</h1>
        <p>To keep connected with us please login with your personal info</p>
        <button id="signIn" class="overlay_btn">Sign In</button>
      </div>
      <div class="overlay-right">
        <h1>Hello, Friend</h1>
        <p>Enter your personal details and start journey with us</p>
        <button id="signUp" class="overlay_btn">Sign Up</button>
      </div>
    </div>
  </div>
</div>
</form>
</body>
</html>