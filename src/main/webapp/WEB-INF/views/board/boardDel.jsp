<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div class="flex justify-center"> 
	</div>  
	
	<div class="w-8/12 flex justify-center items-center my-8 ml-32">  
		<form method="post" action="boardDel.do?state=${state}" enctype="multipart/form-data"
			class="px-20 py-8 bg-indigo-50 rounded flex justify-center items-center flex-col shadow-md">
		<input type="hidden" name="B_NUM" value="${bcont.getB_NUM()}" />
		<input type="hidden" name="page" value="${page}" />
			<i class="fab fa-battle-net fa-5x pb-5"></i> 
			<div class="flex justify-center mb-5 p-3 w-80 focus:border-purple-700 text-2xl font-thin">정말 삭제 하시겠어요?</div>
			<button class="bg-purple-600 hover:bg-purple-900 text-white font-bold p-2 mt-5 rounded w-80" id="login" type="submit"
			 ><span>삭제하기</span>  				
			</button>
		</form>
	</div> 
	
	
	
			
</body>
</html>