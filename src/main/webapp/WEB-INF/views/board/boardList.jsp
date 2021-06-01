<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.dropdown:focus-within .dropdown-menu {
	opacity: 1;
	transform: translate(0) scale(1);
	visibility: visible;
}

#checked {
	width: 400px; /* 너비는 변경될수 있습니다. */
	text-overflow: ellipsis; /* 위에 설정한 100px 보다 길면 말줄임표처럼 표시합니다. */
	white-space: nowrap; /* 줄바꿈을 하지 않습니다. */
	overflow: hidden; /* 내용이 길면 감춤니다 */
	display: block; /* ie6이상 현재요소를 블럭처리합니다. */
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function() {
		$("#boardPaging").load("boardPaging.do?state=Action");

		$("#selec").change(function(){
			var selec = $("#selec").val();
			$.post("boardPagingPost.do", {"state": selec}, function(data){
			 	$("#boardPaging").html(data);
		 	});
		});
		
	});
</script>
</head>
<body>


	<!-- 최상단 이미지  -->
	<div
		class="container bg-grey-lightest mx-auto shadow rounded mt-8 pb-4 bg-cover"
		style="color: #606F7B; background-color: rgb(165, 182, 198); background-image: url('https://68.media.tumblr.com/f6a4004f3092b0d664daeabb95d5d195/tumblr_oduyciOJNb1uhjffgo1_500.gif');">
		<div class="mt-2 p-12 text-center">
			<span class="text-4xl font-thin text-indigo-600">Good Gamer</span> <span
				class="hidden sm:inline-block align-bottom text-xs text-indigo-700">(
				2021 )</span>
		</div>

	</div>

	<!-- 분류  -->
	<div
		class="flex justify-between mx-36 w-auto mt-10 border-b border-grey-light">
		<div class="flex">
			<button
				class="focus:outline-none py-2 px-6 bg-indigo-200 rounded-t-lg text-gray-500 bg-white font-bold">자유게시판</button>
			<button
				class="focus:outline-none py-2 px-6 hover:bg-indigo-200 rounded-t-lg text-gray-500 bg-white font-bold">이미지게시판</button>
		</div>
		<div class="mb-2">
			<select id="selec"
				class="focus:outline-none text-sm border-2 border-indigo-200 rounded py-2">
				<option value="Action">게임선택</option>
				<option value="Action" class=" text-right">Action</option>
				<option value="Action Rogue_like" class=" text-right">Action
					Rogue_like</option>
				<option value="Adventure RPG" class=" text-right">Adventure
					RPG</option>
				<option value="Arcade and Rhythm" class=" text-right">Arcade
					and Rhythm</option>
				<option value="Beat Em Up" class=" text-right">Beat Em Up</option>
				<option value="Card board" class=" text-right">Card board</option>
				<option value="City setlement" class=" text-right">City
					setlement</option>
				<option value="Life & Immersive Sims" class=" text-right">Life
					& Immersive Sims</option>
				<option value="Role-Playing" class=" text-right">Role-Playing</option>
				<option value="Strategy" class=" text-right">Strategy</option>
				<option value="sport" class=" text-right">sport</option>
			</select>
			<button
				class="border-2 py-2 px-6 bg-white hover:bg-indigo-300 focus:outline-none text-black text-1xl font-bold rounded-md"
				onclick="location.href='boardWrite.do'">글쓰기</button>
		</div>
	</div>
	<div id="boardPaging"></div>
	<!-- 글 리스트 -->
</body>
</html>
<%@ include file="../main/footer.jsp"%>

