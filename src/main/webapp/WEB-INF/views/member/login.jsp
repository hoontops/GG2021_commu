<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://unpkg.com/tailwindcss@0.3.0/dist/tailwind.min.css" rel="stylesheet">
    <title>로그인</title>
</head>

</head>
<body>
<form method="post" action="memberLogin.do">
<div class="bg-grey-lighter min-h-screen flex flex-col"
     style="background-image: url('img/joinFormBack.png')">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-2">
                <div class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
                    <h1 class="mb-8 text-3xl text-center">로그인</h1>
                    <input 
                        type="text"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="fullname"
                        placeholder="이름" />

                    <input 
                        type="password"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="password"
                        placeholder="패스워드" />
       
                    <button
                        type="submit"
                        class="w-full text-center py-3 rounded bg-indigo-600 text-white focus:outline-none my-1"
                    >로그인</button>

                </div>
            </div>
        </div>
</form>        
</body>
</html>
<%@ include file="../main/footer.jsp" %>