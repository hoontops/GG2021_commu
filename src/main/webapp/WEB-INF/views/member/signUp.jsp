<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://unpkg.com/tailwindcss@0.3.0/dist/tailwind.min.css" rel="stylesheet">
    <title>회원가입</title>
    <meta name = "google-signin-client_id"content = "824407773279-3jft4dof7ml52ldtjdmkncku0mm07j6k.apps.googleusercontent.com">
  	<script src="https://apis.google.com/js/platform.js" async defer></script>
</head>

<body>
<form method="post" action="memberJoin.do">
<div class="bg-grey-lighter min-h-screen flex flex-col"
	 style="background-image: url('img/joinFormBack.png')">
            <div class="container mx-auto flex-1 flex flex-col items-center justify-center px-2 w-4/12">
                <div class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
                    <h1 class="mb-8 text-3xl text-center">회원가입</h1>
                    <input 
                        type="text"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_ID" id="M_ID" 
                        placeholder="아이디" />
                        <input 
                        type="text"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_NAME" id="M_NAME" 
                        placeholder="이름" /> 

                    <input 
                        type="text"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_EMAIL" id="M_EMAIL"
                        placeholder="이메일" />

                    <input 
                        type="password"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_PASSWD" id="M_PASSWD"
                        placeholder="패스워드" />
                    <input 
                        type="password"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_PASSWD_Confirm" id="M_PASSWD_Confirm"
                        placeholder="패스워드 확인" />
					<div class="g-signin2" data-onsuccess="onSignIn"></div>
                    <button
                        type="submit"
                        class="w-full text-center py-3 rounded bg-indigo-600 text-white focus:outline-none my-1"
                        
                    >계정생성</button>

                    <div class="text-center text-sm text-grey-dark mt-4">
                        회원가입이 되면 
                        <a class="no-underline border-b border-grey-dark text-grey-dark" href="#">
                           서비스약관과 개인정보활용에 동의한 것으로 간주됩니다.
                        </a> 
                    </div>
                </div>

                <div class="text-white mt-6">
                    이미 계정이 있으신가요? 
                    <a class="no-underline border-b border-blue text-white" href="../login/">
                        로그인
                    </a>
                </div>
            </div>
        </div>
</form>        
</body>
</html>
<%@ include file="../main/footer.jsp" %>