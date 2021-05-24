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
    <title>로그인</title>
    
<script>
/* 	 function check(){
		 if($.trim($("#M_ID").val())==""){
			 alert("로그인 아이디를 입력하세요!");
			 $("#M_ID").val("").focus();
			 return false;
		 }
		 if($.trim($("#M_PASSWD").val())==""){
			 alert("비밀번호를 입력하세요!");
			 $("#M_PASSWD").val("").focus();
			 return false;
		 }
	}  */  

    /*비번찾기 공지창*/
    function pwdFind(){
   		window.open("pwdFind.do","비번찾기","width=650,height=600");
    } 
</script>
</head>

<body> 
<form method="post" action="memberLogin.do" onsubmit="check()">   
<div class="bg-grey-lighter min-h-screen flex flex-col"
     style="background-image: url('img/joinFormBack.png')">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-2">
                <div class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
                    <h1 class="mb-8 text-3xl text-center">로그인</h1>
                    <input 
                        type="text"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_ID" id="M_ID"
                        placeholder="아이디" required="required"/>

                    <input 
                        type="password"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_PASSWD" id="M_PASSWD"
                        placeholder="패스워드" required="required"/> 
       
                    <button
                        type="submit"
                        class="w-full text-center py-3 rounded bg-indigo-600 text-white focus:outline-none my-1"
                    >로그인</button>
                    <div class="flex items-center mt-2">
	                    <button
	                        type="button" onClick="pwdFind()" 
	                        class="w-full py-3 mr-3 rounded border-2 hover:bg-indigo-200 border-indigo-600 text-indigo-500 focus:outline-none"
	                    >비밀번호 찾기</button>
	                    <button
	                        type="button" onClick="location.href='signUp.do'"
	                        class="w-full py-3 ml-3 rounded border-2 hover:bg-indigo-200 border-indigo-600 text-indigo-500 focus:outline-none"
	                    >회원가입</button>
                    </div>

                </div>
            </div>
        </div>
</form>        
</body>
</html>
<%@ include file="../main/footer.jsp" %>