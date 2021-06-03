<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<!-- 테이블 -->

	<article class="bg-white mb-20">
		<div class="bg-white flex w-11/12  h-full mx-auto">
			<div id="Left_board" class="w-9/12 h-96 ml-10">
				<div id="table" class="pt-10 w-11/12 mx-auto">

					<div class="mb-8">
						<h2 class="text-4xl font-bold text-gray-600 px-2">${state} <sapn class="text-2xl">게시판</sapn></h2>  
					</div>


					<!-- 준표형 테이블 -->
					<div>
						<div class="mt-3 mb-5 flex ml-12 py-5">
							<table class=" w-11/12">
								<thead>
									<tr class="bg-indigo-200 fong-bold">
										<th class="w-1/12 py-2 text-indigo-700">번호</th>
										<th class="w-5/12 py-2 text-indigo-700">제목</th>
										<th class="w-2/12 py-2 text-indigo-700">작성자</th>
										<th class="w-2/12 py-2 text-indigo-700">작성일</th>
										<th class="w-1/12 py-2 text-indigo-700">추천</th>
										<th class="w-1/12 py-2 text-indigo-700">조회수</th>
									</tr>
								</thead>
								<!-- 화면 출력 번호 -->
								<c:set var="num" value="${listcount-(page-1)*10}" />
								<tbody>
									<!-- 반복문 시작 -->
									<c:forEach var="b" items="${boardlist}"> 
										<tr class="border-b text-center">
											<td class="w-1/12 py-2"><c:out value="${num}" /> <c:set
													var="num" value="${num-1}" /></td>
											<td id="checked" class="w-5/12 py-2 font-thin text-sm">
												<a
												href="boardView.do?B_NUM=${b.getB_NUM()}&page=${page}&state=cont">${b.getB_TITLE() }</a>
											</td>
											<td class="w-2/12 py-2 font-thin text-sm">${b.getM_ID()}</td>
											<td class="w-2/12 py-2 font-thin text-sm"><fmt:formatDate
													value="${b.getB_DATE() }" pattern="yyyy-MM-dd" /></td>
											<td class="w-1/12 py-2 font-thin text-sm">${b.getB_GOOD() }</td>
											<td class="w-1/12 py-2 font-thin text-sm">${b.getB_VIEW() }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 페이지번호 -->
					<div>
						<div class="flex justify-center mb-16">
							<c:if test="${page <=1 }">  
				이전&nbsp; 
			</c:if>

							<c:if test="${page > 1 }">
								<a href="boardPaging.do?page=${page-1}">이전</a>
							</c:if>

							<c:forEach var="a" begin="${startPage}" end="${endPage}">
								<c:if test="${a == page }">
					${a}
				</c:if>
								<c:if test="${a != page }">
									<a href="boardPaging.do?page=${a}">[${a}]</a>&nbsp;
				</c:if>
							</c:forEach>

							<c:if test="${page >= maxPage }">
				다음 
			</c:if>
							<c:if test="${page < maxPage }">
								<a href="boardPaging.do?page=${page+1}">다음</a> 
							</c:if>
						</div>
					</div>
				</div>
			</div>
			<div id="right_side" class="mt-24 w-52">
				<!-- 아이디 값 존재할떄 사이드 로그인페이지  -->
				<c:if test="${sessionScope.id == null}">
					<form method="post" action="memberLogin.do">
						<div id="myinfo NoneSession" class="border-2 border-indigo-400">
							<div class="p-2">로그인</div>
							<div class="flex justify-center">
								<div class="ml-3">
									<input class="p-1 bg-gray-100 font-thin" size="21" type="text"
										name="M_ID" id="M_ID" required="required" placeholder="아이디">
									<input class="p-1 bg-gray-100 font-thin  mt-1 mb-2" size="21"
										name="M_PASSWD" id="M_PASSWD" type="password"
										required="required" placeholder="비밀번호">
									<button
										class="focus:outline-none bg-indigo-500 rounded text-xs w-44 py-1 hover:bg-indigo-400 text-white"
										type="submit">Login</button>
								</div>
							</div>
							<div class="my-1"> 
								<ul class="text-xs flex justify-center text-gray-400">
									<li><a href="myPage.do">마이페이지</a></li> 
									<li class="ml-1"><a href="#">아이디/비번찾기</a></li>
								</ul>
							</div>
						</div>
					</form>
				</c:if>

				<c:if test="${sessionScope.id != null}">
					<div id="myinfo NoneSession" class="border-2 border-indigo-400">
						<div id="logo" class="flex justify-center">
							<img src="img/GG_Logo.png" alt="GG_Logo"
								class="flex justify-center w-15 h-8 mb-3 mt-2">
						</div>

						<div
							class="p-2 flex justify-center text-lg font-bold text-indigo-600 border-indigo-300 border-t-2">${id}님</div>
						<div class="text-indigo-800 text-lg flex justify-center">
							환영합니다!!</div>
						<div class="flex justify-center text-indigo-800 text-sm mb-3">
							즐거운 시간 보내세요.</div>
						<div class="flex justify-center">
							<div class="ml-3 mb-2">
								<button class="focus:outline-none bg-indigo-500 rounded text-xs w-44 py-1 hover:bg-indigo-400 text-white"
										onclick="location.href='myPage.do'">마이페이지 
								</button>
								
							</div>
						</div>
					</div>
				</c:if>

				<!-- <div id="latest_views" class="mt-5 h-64 mb-5 border-2">
					<div class="p-2">최근 읽은 글</div>
					<div class="ml-2">
						<div class="flex items-center">
							<button class="font-thin focus:outline-none px-1 mb-1">x</button>
							<div id="checked"
								class="font-thin text-gray-600 text-sm focus:outline-none">
								<a href="#"> 메이플스토리하기 좋은 날씨다</a>
							</div>
						</div>
						<div class="flex items-center">
							<button class="font-thin focus:outline-none px-1 mb-1">x</button>
							<div id="checked"
								class="font-thin text-gray-600 text-sm focus:outline-none">
								<a href="#"> 농구하기 좋은 날씨다</a>
							</div>
						</div>
						<div class="flex items-center">
							<button class="font-thin focus:outline-none px-1 mb-1">x</button>
							<div id="checked"
								class="font-thin text-gray-600 text-sm focus:outline-none">
								<a href="#"> 의적질하기 좋은 날씨다</a>
							</div>
						</div>
						<div class="flex items-center">
							<button class="font-thin focus:outline-none px-1 mb-1">x</button>
							<div id="checked"
								class="font-thin text-gray-600 text-sm focus:outline-none">
								<a href="#"> 자전거타고 학원가기 좋은 날씨다</a>
							</div>
						</div>
					</div>
				</div> -->
			</div>
		</div>
	</article> 
	<div class="p-40"></div> 
	
 
	
</body>  
</html>
<%@ include file="../main/footer.jsp"%>