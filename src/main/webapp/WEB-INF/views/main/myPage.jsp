<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div
	class="container bg-grey-lightest mx-auto shadow rounded mt-8 bg-cover"
	style="color: #606F7B; background-color: rgb(165, 182, 198); background-image: url('https://68.media.tumblr.com/f6a4004f3092b0d664daeabb95d5d195/tumblr_oduyciOJNb1uhjffgo1_500.gif');">
	<div class="mt-2 p-12 text-center">
		<span class="text-4xl font-thin text-indigo-600">Good Gamer</span> <span
			class="hidden sm:inline-block align-bottom text-xs text-indigo-700">(
			2021 )</span>
	</div>
	</div>

	<div class="container bg-grey-lightest mx-auto shadow rounded mt-8 pb-4 bg-cover">
		<div class="flex mx-auto bg-gray-50 justify-center items-center border-2 shadow p-10 rounded-lg w-7/12 h-96">
			<div class="bg-indigo-300 w-40 h-40 rounded-full overflow-hidden flex items-center">
				<img class="w-full h-full" src="img/battle.jpg">
			</div>
			<div class="ml-10">
				<div class="flex items-center pb-5">
					<div class="text-4xl font-thin">${member.M_ID }hth9876</div>
					<div class="ml-5">
						<button class="bg-indigo-400 px-3 py-2 rounded-full text-white font-bold" onclick="location.href='memberModify.do'">정보수정</button>
					</div>
				</div>
				<div class="flex justify-between leading-10 pb-2">
					<div>이메일:<span class="font-bold ml-1">${member.M_EMAIL}hth4324@gmail.com</span></div>
					<div class="ml-5">가입일:<span class="font-bold ml-1">${member.M_SUBSCRIPTION_DATE}2021.05.20</span></div>
				</div>
				<div class="flex justify-between leading-10">
					<div>작성한 글 수:<span class="font-bold ml-1">${boardcount}5</span></div>
					<div>작성한 댓글 수:<span class="font-bold ml-1">${commentcount}20</span></div>
					<div>포인트:<span class="font-bold ml-1">${member.M_POINT}119</span></div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="../main/footer.jsp"%>