<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 테일윈드 CDN -->
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet">

<!-- 폰트어썸 CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body class="bg-gray-50"> 
<div>

<c:if test="${empty pwdOk}"> 
	<div class="flex justify-center"> 
		<div class="w-8/12 border-b border-grey-light mt-8">   		 
				<button class="focus:outline-none py-2 px-6 bg-indigo-200 rounded-t-lg text-gray-700 bg-white font-bold">비밀번호 찾기</button>				
		</div>
	</div>
	<div class="flex justify-center mt-5"> 
		<h2 class="text-lg font-gray-200 w-8/12">비밀번호를 찾기위해 아이디와 이름을 입력하세요.</h2>
	</div> 
	
	<div class="w-8/12 flex justify-center items-center my-8 ml-32"> 
		<form class="px-20 py-8 bg-indigo-50 rounded flex justify-center items-center flex-col shadow-md"
				method="post" action="pwdFindOk.do">
			<i class="far fa-envelope fa-5x text-gray-500 pb-5"></i>			
			<input type="text" class="mb-5 p-3 w-80 focus:border-purple-700 rounded border-2 outline-none" id="M_ID" name="M_ID" autocomplete="off" placeholder="아이디" required>
			<input type="text" class="mb-5 p-3 w-80 focus:border-purple-700 rounded border-2 outline-none" id="M_NAME" name="M_NAME" autocomplete="off" placeholder="이름" required>
			<button class="bg-purple-600 hover:bg-purple-900 text-white font-bold p-2 mt-5 rounded w-80" 
					id="login" type="submit"> 
				<span>비밀번호 찾기</span>
			</button>
		</form>
	</div>
</c:if>	

<c:if test="${!empty pwdOk}">
	<div class="flex justify-center"> 
		<div class="w-8/12 border-b border-grey-light mt-8">   		 
				<button class="focus:outline-none py-2 px-6 bg-indigo-200 rounded-t-lg text-gray-700 bg-white font-bold">비밀번호 찾기</button>				
		</div>
	</div>
	<div class="flex justify-center mt-5"> 
		<h2 class="text-lg font-gray-200 w-8/12">가입시 등록하신 Mail을 확인하세요.</h2>
	</div> 
	
	<div class="w-8/12 flex justify-center items-center my-8 ml-32"> 
		<form class="px-20 py-8 bg-indigo-50 rounded flex justify-center items-center flex-col shadow-md">
			<i class="far fa-envelope fa-5x text-gray-500 pb-5"></i>
			<div>${pwdOk}</div>					 
		</form>
	</div>
</c:if>
	
</div>	
			
</body>
</html>