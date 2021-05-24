<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	/*비번찾기 공지창*/
	function memberDel() {
		window.open("memberDel.do", "회원탈퇴", "width=680,height=630");
	}
</script>
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

	<div
		class="container bg-grey-lightest mx-auto shadow rounded mt-8 pb-4 bg-cover">
		<div
			class="flex mx-auto bg-gray-50 justify-center items-center border-2 shadow p-10 rounded-lg w-7/12 h-96">
			<div
				class="hover:bg-indigo-100 bg-indigo-200 w-40 h-40 rounded-full overflow-hidden flex items-center">

			  <!-- 프로필  -->
 			  <c:if test="${empty M_IMG}">
			        <div> 
 			  		<a href="memberModify.do">
				        <span class="ml-9 w-full h-full">
					   	   <i class="fas fa-user-plus fa-5x"></i>
					    </span>   
			  		</a>
			        </div>
		       </c:if>
		       <c:if test="${!empty M_IMG}">
			       <img src="<%=request.getContextPath() %>/upload/${M_IMG}" class="w-full f-full container bg-cover" />  
		       </c:if>
			</div>

			<div class="ml-10">
				<div class="flex items-center pb-5">
					<div class="text-4xl font-thin">${id}</div>
					<div class="ml-5">
						<button
							class="bg-indigo-400 px-3 py-2 rounded-full text-white font-bold focus:outline-none"
							onclick="location.href='memberModify.do'">정보수정</button>
						<button
							class="bg-indigo-400 px-3 py-2 ml-3 rounded-full text-white font-bold focus:outline-none"
							onclick="memberDel()">회원탈퇴</button>
					</div>
				</div>
				<div class="flex justify-between leading-10 pb-2">
					<div>
						이메일:<span class="font-bold ml-1">${email}</span>
					</div>
					<div class="ml-5">
						가입일:<span class="font-bold ml-1"> <fmt:formatDate
								value="${subDate}" pattern="yyyy-MM-dd" /></span> 
					</div>
				</div>
				<div class="flex justify-between leading-10">
					<div>
						작성한 글 수:<span class="font-bold ml-1 mr-3">5</span>
					</div>
					<div>
						작성한 댓글 수:<span class="font-bold ml-1 mr-3">20</span>
					</div>
					<div>
						포인트:<span class="font-bold ml-1">${point}</span>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="../main/footer.jsp"%>