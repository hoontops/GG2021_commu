<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="adminCase.jsp"%>
	<h3 class="text-gray-700 text-3xl font-medium">메인보드</h3>
	
	<div class="mt-4 px-5">
		<div class="flex flex-wrap	">
			<div class="w-full px-4 sm:w-1/2 xl:w-1/3">
				<div
					class="flex items-center px-5 py-6 shadow-sm rounded-md bg-white">
					<div class="p-3 rounded-full bg-indigo-600 bg-opacity-75">
						<i class="fas fa-users text-white text-2xl"></i>
					</div>

					<div class="mx-3">
						<h4 class="text-2xl font-semibold text-gray-700">${memberCount }</h4>
						<div class="text-gray-500 w-24">회원 수</div>
					</div>
				</div>
			</div>

			<div class="w-full mt-6 px-3 sm:w-1/2 xl:w-1/3 sm:mt-0">
				<div
					class="flex items-center px-5 py-6 shadow-sm rounded-md bg-white">
					<div class="p-3 rounded-full bg-orange-600 bg-opacity-75">
						<i class="far fa-list-alt text-white text-3xl"></i>
					</div>

					<div class="mx-3">
						<h4 class="text-2xl font-semibold text-gray-700">${boardCount }</h4>
						<div class="text-gray-500 w-24">게시글 수</div>
					</div>
				</div>
			</div>

			<div class="w-full mt-6 px-6 sm:w-1/2 xl:w-1/3 xl:mt-0">
				<div
					class="flex items-center px-5 py-6 shadow-sm rounded-md bg-white">
					<div class="p-3 rounded-full bg-pink-600 bg-opacity-75">
						<i class="fas fa-comments text-white text-3xl"></i>
					</div>

					<div class="mx-3">
						<h4 class="text-2xl font-semibold text-gray-700">${commentsCount }</h4>
						<div class="text-gray-500 w-24">댓글 수</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="mt-8"></div>
	<!-- 작성시작 -->
	<div>
		<h2 class="text-gray-700 text-3xl font-medium">메인페이지 유튜브 변경</h2>
		<div class="mt-5 px-8">
			<form action="insertLink.do" onsubmit="return confirm('변경하시겠습니까?')"
				method="post">
				<input type="text" name="link" class="rounded outline-none py-2"
					size="50"> <input type="submit" value="확인"
					class="cursor-pointer hover:bg-indigo-400 bg-indigo-600 text-white px-3 py-2 rounded outline-none">
			</form>
			<div class="mt-5">
				<h3 class="">현재 공유되는 유튜브 링크</h3>
				<div>
					<span class="text-gray-500"><a href="${link }"
						class="hover:text-indigo-600">${link }</a></span>
				</div>
			</div>
		</div>
	</div>


	<!-- 작성 끝 -->
</body>
</html>