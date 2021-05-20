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
		class="container bg-grey-lightest mx-auto shadow rounded mt-8 pb-4 bg-cover"
		style="color: #606F7B; background-color: rgb(165, 182, 198); background-image: url('https://68.media.tumblr.com/f6a4004f3092b0d664daeabb95d5d195/tumblr_oduyciOJNb1uhjffgo1_500.gif');">
		<div class="mt-2 p-12 text-center">
			<span class="text-4xl font-thin text-indigo-600">Good Gamer</span> <span
				class="hidden sm:inline-block align-bottom text-xs text-indigo-700">(
				2021 )</span>
		</div>
	</div>
	<!-- 글 상세 -->
	<div class="w-9/12 mx-auto">

		<div
			class="flex justify-between mx-36 w-auto mt-10 border-b border-grey-light">
			<div class="flex">
				<button
					class="focus:outline-none py-2 px-6 bg-indigo-200 rounded-t-lg text-gray-500 bg-white font-bold">자유게시판</button>
			</div>
			<div class="mb-2">
				<button
					class="py-2 px-6 bg-white hover:bg-indigo-300 focus:outline-none text-black text-1xl font-bold rounded-md"
					onclick="location.href='boardlist.do'">목록</button>
			</div>
		</div>

		<div class="mt-12 mx-36 border-b-4 border-indigo-300">
			<div id="title" class="">
				<h1 class="font-bold text-2xl text-gray-800">자바스프링테일윈드마우스</h1>
			</div>
			<div id="under" class="flex items-center justify-between px-4">
				<div class="nick & date flex items-center">
					<div class="font-thin mr-3 text-gray-400 border-r pr-3">z1존건무법1사1</div>
					<div class="font-thin text-gray-400">2021.05.19</div>
				</div>
				<div id="view" class="font-semibold text-indigo-700">
					<i class="far fa-eye pr-2"></i>115
				</div>
			</div>
		</div>

		<!-- 내용 -->
		<div class="w-11/12 mx-auto py-8 pl-28">
			<p class="text-base">제목인가요를 눌르면 내용이 나오는거에요 뭘까요</p>
		</div>

		<!-- 추천 비추천 -->
		<div>
			<div class="flex justify-center mt-32">
				<div class="border-b-2 p-6">
					<span class="font-semibold">51</span>
					<button
						class="mx-2 p-3 rounded-full bg-white focus:outline-none border-2 border-indigo-600"
						style="width: 52px;">
						<i class="far fa-thumbs-up"></i>
					</button>
					<button
						class="mx-2 p-3 rounded-full bg-white focus:outline-none border-2 border-indigo-600"
						style="width: 52px;">
						<i class="far fa-thumbs-down"></i>
					</button>
					<span class="font-semibold">11</span>
				</div>
			</div>
		</div>

		<!-- 댓글 -->
		<div
			class="w-9/12 flex pb-20 mx-auto mt-10 mb-24 border-b-2 border-indigo-600">
			<textarea rows="3" cols="100" style="resize: none;"
				class="bg-indigo-50 focus:outline-none p-5"
				placeholder="로그인 후 글쓰기 가능"></textarea>
			<button
				class="bg-indigo-200 w-32 focus:outline-none text-indigo-800 font-bold hover:bg-indigo-400"
				value="등록">등록</button>
		</div>

		<div class="flex mx-36 w-auto mt-10 border-b">
				<div
					class="focus:outline-none py-2 px-6 bg-indigo-200 rounded-t-lg text-black text-xl font-bold">최신순</div>
		</div>
		<div class="mx-36 bg-indigo-50 mb-3">
			<div id="댓글"
				class="flex justify-between border-b border-gray-500 pl-12 pr-8 py-4">
				<div>
					<div class="font-bold  text-indigo-600">아이디 님</div>
					<div class="font-thin pt-3">
						<button id="reply" class="focus:outline-none">햄버거 먹고싶다
							롯데리아 사각새우 버거에요~~~</button>
					</div>
				</div>
				<div class="flex items-center mt-10">
					<div id="date" class="text-gray-500 text-sm">21.05.18</div>
					<div id="수정삭제" class="flex">
						<button
							class="px-3 text-indigo-600 font-bold rounded focus:outline-none">
							<i class="far fa-window-close"></i>
						</button>
					</div>
				</div>
			</div>
			<div id="대댓글"class="border-2 border-indigo-600 flex items-end  pl-10">
				<div class="">
					<textarea rows="3" cols="90" class="focus:outline-none m-3" style="resize: none;"></textarea>
				</div>
				<div class="">
					<button class="bg-indigo-600 rounded text-white px-3 py-1 mb-5">등록</button>
				</div>

			</div>
			
		<!-- 페이징  -->
		</div>
		<div class="flex justify-center mb-16 mt-20"> 
			<a href="#" class="px-3"> 이전 </a> <a href="#" class="px-3"> 1 </a> <a
				href="#" class="px-3"> 2 </a> <a href="#" class="px-3"> 3 </a> <a
				href="#" class="px-3"> 다음 </a>
		</div>

		<!-- 이전글,다음글 -->
		<div class="mx-36 mb-10">
			<div class="border-t-4 border-b border-indigo-100 py-3">
				<a href="#"><span><i class="fas fa-chevron-up px-3"></i>
						<i class="pr-4">이전글</i> 제목인가요 </span></a>
			</div>
			<div class="border-b-4 py-3 border-indigo-100">
				<a href="#"><span><i class="fas fa-chevron-down px-3"></i>
						<i class="pr-4">다음글</i> 목제인가요 </span></a>
			</div>
		</div>

		<!-- 뷰페이지끝 게시판 다시 시작 -->

		

	</div>
</body>
</html>
<%@ include file="../main/footer.jsp"%>