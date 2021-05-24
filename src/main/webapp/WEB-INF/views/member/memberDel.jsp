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
<script>
/* function winClose()
 {
   self.close();
   alert("회원탈퇴 성공");
   //opener.location.reload();
   opener.location.href="main.do";   
}   */
</script>
</head>
<body class="bg-gray-50">
	<div class="flex justify-center"> 
		<div class="w-8/12 border-b border-grey-light mt-8">   		 
				<button class="focus:outline-none py-2 px-6 bg-indigo-200 rounded-t-lg text-gray-700 bg-white font-bold">회원탈퇴</button>				
		</div>
	</div>
	<div class="flex justify-center mt-5"> 
		<div class="font-bold text-2xl text-red-400 w-8/12">주의!<span class="text-gray-900 text-lg pl-2 font-thin">다시 한번 확인하세요.</span></div>
	</div> 
	
	<div class="w-8/12 flex justify-center items-center my-8 ml-32"> 
		<form class="px-20 py-8 bg-indigo-50 rounded flex justify-center items-center flex-col shadow-md"  
			action="memberDelOk.do" method="post" enctype="multipart/form-data">  
			<i class="fab fa-battle-net fa-5x pb-5"></i> 
			<input type="text" class="mb-5 p-3 w-80 rounded border-2 outline-none bg-gray-100" autocomplete="off" placeholder="${id}" disabled="disabled"> 
			<input type="text" class="mb-5 p-3 w-80 rounded border-2 outline-none bg-gray-100" autocomplete="off" placeholder="${name}" disabled="disabled"> 
			<input type="password" class="mb-5 p-3 w-80 focus:border-purple-700 rounded border-2 outline-none" autocomplete="off" id="M_PASSWD" name="M_PASSWD" placeholder="비밀번호" required>
			<button type="submit" class="bg-purple-600 hover:bg-purple-900 text-white font-bold p-2 mt-5 rounded w-80" id="login">
				<span>탈퇴하기</span>
			</button>
		</form>
	</div>
				
</body>
</html>