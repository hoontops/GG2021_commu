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
    <title>정보수정</title>
    <meta name = "google-signin-client_id"content = "824407773279-3jft4dof7ml52ldtjdmkncku0mm07j6k.apps.googleusercontent.com">
  	<script src="https://apis.google.com/js/platform.js" async defer></script>
</head>

<body>
<form method="post" action="memberModify.do">
<div class="bg-grey-lighter min-h-screen flex flex-col"
	 style="background-image: url('img/joinFormBack.png')">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-2">
                <div class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
                    <h1 class="mb-8 text-3xl text-center">회원정보수정</h1>
                    <div 
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_ID" id="M_ID"
                         >${member.M_ID }</div>
                        <input 
                        type="text"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_NAME" id="M_NAME" value="${member.M_NAME}" 
                        placeholder="이름"/> 

                    <input 
                        type="text"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_EMAIL" id="M_EMAIL" value="${member.M_EMAIL}"
                        placeholder="이메일" />

                    <intput 
                        type="password"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_PASSWD" id="M_PASSWD" value="${member.M_PASSWD}"  
                        placeholder="패스워드"/>
                    
					<div class="g-signin2" data-onsuccess="onSignIn"></div>
                    <button
                        type="submit"
                        class="w-full text-center py-3 rounded bg-indigo-600 text-white focus:outline-none my-1"
                     >정보수정</button>
                </div>
            </div>
        </div>
</form>        
</body>
</html>