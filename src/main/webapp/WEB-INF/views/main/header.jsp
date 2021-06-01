<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>GoodGamers</title>
<!-- 파비콘.ico-->
<link rel="shortcut icon" href="img/GG_Logo.ico">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- 테일윈드 CDN -->
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet">

<!-- 폰트어썸 CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>

.hover-trigger .hover-target {
    display: none;
}

.hover-trigger:hover .hover-target {
    display: block;
}
input[type="submit"] {
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	background-color: white;
}

.carousel-open:checked+.carousel-item {
	position: static;
	opacity: 100;
}

.carousel-item {
	-webkit-transition: opacity 0.6s ease-out;
	transition: opacity 0.6s ease-out;
}

#carousel-1:checked ~.control-1, #carousel-2:checked ~.control-2,
	#carousel-3:checked ~.control-3 {
	display: block;
}

.carousel-indicators {
	list-style: none;
	margin: 0;
	padding: 0;
	position: absolute;
	bottom: 2%;
	left: 0;
	right: 0;
	text-align: center;
	z-index: 10;
}

#carousel-1:checked ~.control-1 ~.carousel-indicators li:nth-child(1) .carousel-bullet,
	#carousel-2:checked ~.control-2 ~.carousel-indicators li:nth-child(2) .carousel-bullet,
	#carousel-3:checked ~.control-3 ~.carousel-indicators li:nth-child(3) .carousel-bullet
	{
	color: #2b6cb0;
}

::-webkit-scrollbar {
	display: none;
}

#main_body {
	-ms-overflow-style: none;
}

#main_nav ul li {
	padding-left: 10px;
	padding-right: 10px;
}

</style>
</head>
<body>
	<header class="px-6 bg-white flex flex-wrap items-center">
		<div class="flex-1 flex justify-between items-center mt-2">
			<a href="main.do">
				<div id="logo" class="flex items-center">
					<img src="img/GG_Logo.png" alt="GG_Logo" class="w-15 h-7"> <span
						class="text-l font-bold ml-1">GoodGamers</span>
				</div>
			</a>
			<c:if test="${sessionScope.id == 'hth9876' && sessionScope.id !=null}" >
				<div id="searchBar" class="mt-5 ml-32">
					<form method="POST" action="#">
						<input type="text"
							class="bg-gray-100 text-gray-800 font-bold rounded  px-10 py-1 focus:outline-none shadow-lg"
							size="30" placeholder="search" autofocus> <input
							type="submit" value="&#xf002;" class="cursor-pointer">

					</form>
				</div>
			</c:if>
			<c:if test="${sessionScope.id != 'hth9876'}" >
				<div id="searchBar" class="mt-5 ml-5">
					<form method="POST" action="#">
						<input type="text"
							class="bg-gray-100 text-gray-800 font-bold rounded  px-10 py-1 focus:outline-none shadow-lg"
							size="30" placeholder="search" autofocus> <input
							type="submit" value="&#xf002;" class="cursor-pointer">

					</form>
				</div>
			</c:if>
			<div id="login/signUp">
			<c:if test="${sessionScope.id == null }"> 			
					<button Onclick="location.href='login.do'" 
						class="focus:outline-none bg-white bg-transparent  text-indigo-500 hover:text-white hover:bg-indigo-500 text-xs  py-1 px-3 rounded border border-solid border-indigo-500 mr-2 transition-colors duration-300">
						로그인</button>  
					<button Onclick="location.href='signUp.do'"  
						class="focus:outline-none bg-indigo-600 hover:bg-white hover:text-indigo-500  text-white text-xs py-1 px-3 rounded border border-solid border-indigo-600 hover:border-indigo-700 transition-colors duration-300">
						회원가입</button>
					<!-- <a href="#" class="text-indigo-500 hover:text-blue-800 font-bold">LogIn</a>
	                    &nbsp;
	                    <a href="#" class="text-yellow-600 hover:text-red-600 font-bold">SIgnUp</a> -->
			</c:if>
			<c:if test="${sessionScope.id == 'hth9876' && sessionScope.id !=null}">
					<button Onclick="location.href='adminMain.do'" 
						class="focus:outline-none bg-indigo-600 hover:bg-white hover:text-indigo-500  text-white text-xs py-1 px-3 rounded border border-solid border-indigo-600 hover:border-indigo-700 transition-colors duration-300">
						관리자페이지</button>
			</c:if>
			<c:if test="${sessionScope.id != null }">
				<button Onclick="location.href='myPage.do'"
					class="focus:outline-none bg-white bg-transparent  text-indigo-500 hover:text-white hover:bg-indigo-500 text-xs  py-1 px-3 rounded border border-solid border-indigo-500 mr-2 transition-colors duration-300">
					마이페이지</button>
				<button Onclick="location.href='logout.do'"
					class="focus:outline-none bg-indigo-600 hover:bg-white hover:text-indigo-500  text-white text-xs py-1 px-3 rounded border border-solid border-indigo-600 hover:border-indigo-700 transition-colors duration-300">
					로그아웃</button>
				<!-- <a href="#" class="text-indigo-500 hover:text-blue-800 font-bold">LogIn</a>
                    &nbsp;
                    <a href="#" class="text-yellow-600 hover:text-red-600 font-bold">SIgnUp</a> -->
			</c:if>
			
			
		</div>
	</header>
	<nav id="main_nav" class="p-2 border-b border-gray-100 pb-5">
		<ul class="flex items-center justify-center pb-2">
			<li><a href="main.do"
				class=" text-xs p-1 border-b-2 hover:border-indigo-600">HOME</a></li>
			<li><a href="boardInfo.do"
				class="text-xs p-1 border-b-2 hover:border-indigo-600">NEWS</a></li>
			<li><a
				href="http://prod.danawa.com/list/?cate=112758&15main_11_02"
				class="text-xs p-1 border-b-2 hover:border-indigo-600">RECOMMEND</a></li>
			<li> <div class="relative z-10 hover-trigger mt-1 border-b-2 hover:border-indigo-600">
                    <a href="boardList.do" class="text-xs pb-1 ">COMMNUNITY</a>
                    <div class="absolute w-28 h-6 p-3 hover-target">
                        <div class="bg-gray-100 text-xs  p-1 border-b-2 hover:border-indigo-600 hover:bg-indigo-100"><a href="#" class="">자유게시판</a></div>
                        <div class="bg-gray-100 text-xs  p-1 border-b-2 hover:border-indigo-600 hover:bg-indigo-100"><a href="#">이미지게시판</a></div>
                    </div>
                  </div></li>
		
			<li><a href="event.do"
				class="text-xs  p-1 border-b-2 hover:border-indigo-600">EVENT</a></li>
			<li><a href="#"
				class="text-xs text-red-600 p-1 border-b-2 hover:border-indigo-600">Q&A</a></li>
		</ul>
	</nav>
</body>
</html>