<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	/* 글 삭제 창 */
	function boardDelete() {
		window.open(
				"boardView.do?B_NUM=${bcont.getB_NUM()}&page=${page}&state=del", 
				"게시글 삭제", "width=660,height=380");
	} 
	
	$(function() {
		$('#slist').load('slist.do?B_NUM=${bcont.getB_NUM()}');
		$('#repInsert').click(function() {
			if(!frm.C_CONTENT.value) {
				alert('댓글 입력후에 클릭 하세요.');
				frm.C_CONTENT.focus();
				return false;
			}
			var frmData = $('form').serialize();
			$.post('sInsert.do', frmData, function(data) {
				$('#slist').html(data);
/* 				frm.C_CONTENT.value = '';
 */			});
		});
	});
	
	$(function() {
		$("#up").click(function() {
			var thumbsUp = $("#up").val();
			$.post("boardThumbsUp.do?B_NUM=${bcont.getB_NUM()}", {"like" : thumbsUp}, function(data) {
				$("#thumbsUp").html(data);
			});
		});
		$("#down").click(function() {
			var thumbsDown = $("#down").val(); 
			$.post("boardThumbsDown.do?B_NUM=${bcont.getB_NUM()}", {"dislike" : thumbsDown}, function(data) {
				$("#thumbsDown").html(data);
			});
		});
	});
	
	
	
</script>

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
					class="focus:outline-none py-2 px-6 bg-indigo-200 rounded-t-lg text-gray-500 bg-white font-bold">자유게시판
					</button>
			</div>
			<div class="mb-2">
				
				<button
					class="py-2 px-6 border-2 bg-white hover:bg-indigo-300 focus:outline-none text-black text-1xl font-bold rounded-md"
					onclick="location.href='boardList.do?state=${state}'">목록</button>
			</div>
		</div>

		<div class="mt-12 mx-36 border-b-4 border-indigo-300">
			<div id="title" class="flex justify-between"> 
				<h1 class="font-bold text-2xl text-gray-800">${bcont.getB_TITLE() }</h1>

				<!-- 작성자 클릭시 수정 삭제 버튼 -->  
				<c:if test="${sessionScope.id == bcont.getM_ID() or sessionScope.id == 'hth9876' }">
					<div class="">
						<button
							Onclick="location='boardView.do?B_NUM=${bcont.getB_NUM()}&page=${page}&state=edit'"
							class="focus:outline-none bg-indigo-600 hover:bg-white hover:text-indigo-500  text-white text-xs py-1 px-3 rounded border border-solid border-indigo-600 hover:border-indigo-700 transition-colors duration-300">
							수정</button>
						<button onclick="boardDelete()"
							class="focus:outline-none bg-indigo-600 hover:bg-white hover:text-indigo-500  text-white text-xs py-1 px-3 rounded border border-solid border-indigo-600 hover:border-indigo-700 transition-colors duration-300">
							삭제</button>
					</div>
				</c:if>

			</div>
			<div id="under" class="flex items-center justify-between px-4">
				<div class="nick & date flex items-center">
					<div class="font-thin mr-3 text-gray-400 border-r pr-3">${bcont.getM_ID()}</div>
					<div class="font-thin text-gray-400">
						<fmt:formatDate value="${bcont.getB_DATE() }"
							pattern="yyyy-MM-dd HH:mm:ss" />
					</div>
				</div>
				<div id="view" class="font-semibold text-indigo-700">
					<i class="far fa-eye pr-2"></i>${bcont.getB_VIEW() }
				</div>
			</div>
		</div>   
		
		<!-- 내용 -->  
		<div class="w-11/12 mx-auto py-10 pl-28">
			<c:if test="${empty bcont.getB_IMG()}">
	       		&nbsp;
	       </c:if> 
	       <c:if test="${!empty bcont.getB_IMG()}">
	       		<img src="<%=request.getContextPath() %>/upload/${bcont.getB_IMG()}" height="250" width="250" />
	       </c:if>		
			<p class="text-base mt-8">${bcont.getB_CONTENT() }</p>
		</div>

		<!-- 추천비추천 -->
		<div>
			<div class="flex justify-center mt-16">
				<div class="border-b-2 p-6">
					<span class="font-semibold" id="thumbsUp">${bcont.getB_GOOD() }</span>
					<button id="up" value="${bcont.getB_GOOD() }"
						class="hover:border-indigo-200 mx-2 p-3 rounded-full bg-white focus:outline-none border-2 border-indigo-600"
						style="width: 52px;">
						<i class="far fa-thumbs-up"></i>
					</button>
					<button id="down" value="${bcont.getB_BAD() }"
						class="hover:border-indigo-200 mx-2 p-3 rounded-full bg-white focus:outline-none border-2 border-indigo-600"
						style="width: 52px;">
						<i class="far fa-thumbs-down"></i>
					</button>
					<span class="font-semibold" id="thumbsDown">${bcont.getB_BAD() }</span>
				</div>
			</div>
		</div>


		<!-- 댓글 --><%--  <c:if test=""> --%>
		<form name="frm" id="frm"> 
		<input type="hidden" name="C_ID" value="${id}">   
		<input type="hidden" name="B_NUM" value="${bcont.getB_NUM()}"> 
		<input type="hidden" name="page" value="${page}">  
		<input type="hidden" name="state" value="${cont}">   
			<div
				class="w-9/12 flex pb-20 mx-auto mt-10 mb-12 border-b-2 border-indigo-600">
				<c:if test="${sessionScope.id == null }">
					<textarea rows="3" cols="100" style="resize: none;" 
						readonly="readonly" class="bg-indigo-50 focus:outline-none p-5"
						placeholder="로그인 후 글쓰기 가능"></textarea>
					<button 
						class="bg-indigo-200 w-32 focus:outline-none text-indigo-800 font-bold hover:bg-indigo-400"
						value="등록">등록</button>
				</c:if>
				<c:if test="${sessionScope.id != null }">
					<textarea rows="3" cols="100" style="resize: none;" name="C_CONTENT"
						class="bg-indigo-50 focus:outline-none p-5" placeholder="댓글을 입력하세요"></textarea>
					<button id="repInsert"
						class="bg-indigo-200 w-32 focus:outline-none text-indigo-800 font-bold hover:bg-indigo-400"
						value="등록">등록</button>
				</c:if>
			</div>
		</form>	
		
		<!-- 댓글 보여지는 곳 -->
		<div id="slist"></div> 

<%-- 		<div class="flex mx-36 w-auto mt-10 border-b">
			<div
				class="focus:outline-none py-2 px-6 bg-indigo-200 rounded-t-lg text-black text-xl font-bold">최신순</div>
		</div>
		<div class="mx-36 bg-indigo-50 mb-3">
		
		<c:forEach var="rb" items="${slist}">
			<div id="댓글"
				class="flex justify-between border-b border-gray-500 pl-12 pr-8 py-4">
				<div>
					<div class="font-bold  text-indigo-600">${rb.C_ID}</div>
					<div class="font-thin pt-3">
						<button id="reply" class="focus:outline-none">${rb.C_CONTENT }</button>
					</div>
				</div>
				<div class="flex items-center mt-10"> 
					<div id="date" class="text-gray-500 text-sm">${rb.C_DATE }</div>
					<div id="수정삭제" class="flex">
						<button
							class="ml-8 mr-5 text-indigo-600 font-bold rounded focus:outline-none edit">
							<div class="edit">
								<i class="far fa-edit"></i>
							</div>
						</button>
						<button
							class="text-indigo-600 font-bold rounded focus:outline-none">
							<i class="far fa-window-close"></i>
						</button>
					</div>
				</div>
			</div>
		</c:forEach>	
			<!-- <div id="대댓글"class="border-2 border-indigo-600 flex items-end  pl-10">
				<div class="">
					<textarea rows="3" cols="90" class="focus:outline-none m-3" style="resize: none;"></textarea>
				</div>
				<div class="">
					<button class="bg-indigo-600 rounded text-white px-3 py-1 mb-5">등록</button>
				</div>

			</div> -->
		</div> --%>

		<!-- 	페이징 
		<div class="flex justify-center mb-16 mt-20">
			<a href="#" class="px-3"> 이전 </a> <a href="#" class="px-3"> 1 </a> <a
				href="#" class="px-3"> 2 </a> <a href="#" class="px-3"> 3 </a> <a
				href="#" class="px-3"> 다음 </a>
		</div> -->

		<!-- 이전글,다음글 -->
		<div class="mx-36 mb-10">
			<div class="border-b-4 py-3 border-indigo-100">
				<c:if test="${after != null }"> 
					<a
						href="boardView.do?B_NUM=${bcont.getB_NUM() +1 }&page=${startPage}&state=cont"><span><i
							class="fas fa-chevron-up px-3"></i> <i class="pr-4">다음글</i>
							${after.getB_TITLE() } </span></a>
				</c:if>
				<c:if test="${after == null }">
					<span><i
							class="fas fa-chevron-up px-3"></i> <i class="pr-4">다음글</i>
							해당 글이 없습니다 </span>
				</c:if> 
			</div>
			<div class="border-t-4 border-b border-indigo-100 py-3">

				<!-- 이전글이 있으면? -->
				<c:if test="${ before != null}">
					<a
						href="boardView.do?B_NUM=${bcont.getB_NUM() -1 }&page=${startPage}&state=cont"><span><i
							class="fas fa-chevron-down px-3"></i> <i class="pr-4">이전글</i>
							${before.getB_TITLE() } </span></a>
				</c:if>
				<!-- 이전글이 없으면?-->
				<c:if test="${ before == null}">
					<span><i class="fas fa-chevron-down px-3"></i> <i class="pr-4">이전글</i> 해당
							글이 없습니다</span>
				</c:if>


			</div>

		</div>

		<!-- 뷰페이지끝 게시판 다시 시작 -->



	</div>
</body>
</html>
<%@ include file="../main/footer.jsp"%>