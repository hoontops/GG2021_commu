<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
		function check(mid){
			var check  = confirm("삭제하시겠습니까?");
			if(check){
				location.href="adminMemberDel.do?M_ID="+mid
				alert("삭제하였습니다.");
			}else{
				alert("취소하였습니다.");
				return false;
			}
		}
	</script>

</head>
<body>
	<%@ include file="adminCase.jsp"%>
	<h3 class="text-gray-700 text-3xl font-medium">회원관리</h3>

	<div class="mt-4">
		<div class="flex flex-wrap -mx-6">
			<div class="w-full px-6 sm:w-1/2 xl:w-1/3">
				<div 
					class="flex items-center px-5 py-6 shadow-sm rounded-md bg-white">
					<div class="p-3 rounded-full bg-indigo-600 bg-opacity-75">
						<i class="fas fa-users text-white text-2xl"></i>
					</div>

					<div class="mx-5">
						<h4 class="text-2xl font-semibold text-gray-700">${memberCount }</h4>
						<div class="text-gray-500  w-20">회원 수</div>
					</div>
				</div>
			</div>

			<div class="w-full mt-6 px-6 sm:w-1/2 xl:w-1/3 sm:mt-0">
				<div class="flex items-center px-5 py-6  rounded-md bg-gray-200">
					<div class="p-3 rounded-full bg-gray-200 bg-opacity-75">
						<i class="far fa-list-alt text-gray-200 text-3xl"></i>
					</div>

					<div class="mx-5">
						<h4 class="text-2xl font-semibold text-gray-200">200,521</h4>
						<div class="text-gray-200 w-24">게시글 수</div>
					</div>
				</div>
			</div>

			<div class="w-full mt-6 px-6 sm:w-1/2 xl:w-1/3 xl:mt-0">
				<div class="flex items-center px-5 py-6  rounded-md bg-gray-200">
					<div class="p-3 rounded-full bg-gray-200 bg-opacity-75">
						<i class="fas fa-comments text-gray-200 text-3xl"></i>
					</div>

					<div class="mx-5">
						<h4 class="text-2xl font-semibold text-gray-200">215,542</h4>
						<div class="text-gray-200 w-10">댓글 수</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="mt-8"></div>
	<!-- 유저 테이블 시작 -->
	<div class="flex flex-col mt-8">
		<div
			class="-my-2 py-2 overflow-x-auto sm:-mx-6 sm:px-6 lg:-mx-8 lg:px-8">
			<div
				class="align-middle inline-block min-w-full shadow overflow-hidden sm:rounded-lg border-b border-gray-200">
				<table class="min-w-full">
					<thead>
						<tr>
							<th
								class="px-6 py-3 border-b border-gray-200 bg-gray-50 text-center text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
								아이디/이름</th>
							<th
								class="px-6 py-3 border-b border-gray-200 bg-gray-50 text-center text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
								이메일/비밀번호</th>
							<th
								class="px-6 py-3 border-b border-gray-200 bg-gray-50 text-center text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
								포인트</th>
							<th
								class="px-6 py-3 border-b border-gray-200 bg-gray-50 text-center text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
								가입일</th>
							<th class="px-6 py-3 border-b border-gray-200 bg-gray-50"></th>
						</tr>
					</thead>

					<tbody class="bg-white">
						<c:set var="num" value="${memberCount-(page-1)*10}" />

						<c:forEach items="${memberList}" var="member">
							<c:set var="mid" value="${member.getM_NAME() }" />
							<tr>
								<td
									class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
									<div class="flex items-center">
										<div class="flex-shrink-0 h-10 w-10">
											<!-- 번호 출력 부분 -->
											<c:out value="${num}" />
											<c:set var="num" value="${num-1}" />
										</div>

										<div class="ml-4">
											<div class="text-sm leading-5 font-medium text-gray-900">${member.getM_ID() }</div>
											<div class="text-sm leading-5 text-gray-500">${member.getM_NAME() }</div>
										</div>
									</div>
								</td>

								<td
									class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
									<div class="text-center text-sm leading-5 text-gray-900">${member.getM_EMAIL()}</div>
									<div class="text-center leading-5 text-gray-500">${member.getM_PASSWD()}</div>
								</td>

								<td
									class="text-center px-6 py-4 whitespace-no-wrap border-b border-gray-200">
									<span
									class="text-center px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">${member.getM_POINT() }</span>
								</td>

								<td
									class="text-center px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">
									<fmt:formatDate value="${member.getM_SUBSCRIPTION_DATE() }"
										pattern="yyy-MM-dd HH:mm:ss" />
								</td>

								<td
									class="px-6 py-4 whitespace-no-wrap text-right border-b border-gray-200 text-sm leading-5 font-medium">
									<a href="adminMemberModify.do?M_ID=${member.getM_ID() }"><i
										class="fas fa-edit text-indigo-500 pr-2"></i></a> <a
									href="javascript:check('${member.getM_ID()}')"><i
										class="far fa-trash-alt text-red-600"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div id="pagging" class="flex justify-center text-indigo-500">
					<c:if test="${page <=1 }">
				[이전]&nbsp;
			</c:if>

					<c:if test="${page > 1 }">
						<a href="adminMemeberCon.do?page=${page-1}">[이전]</a>&nbsp;
			</c:if>

					<c:forEach var="a" begin="${startPage}" end="${endPage}">
						<c:if test="${a == page }">
					<span class="font-bold text-indigo-600 px-1">[${a}]</span>
				</c:if>
						<c:if test="${a != page }">
							<a href="adminMemeberCon.do?page=${a}">[${a}]</a>&nbsp;
				</c:if>
					</c:forEach>

					<c:if test="${page >= maxPage }">
				[다음] 
			</c:if>
					<c:if test="${page < maxPage }">
						<a href="adminMemeberCon.do?page=${page+1}">[다음]</a>
					</c:if>
				</div>
			</div>
		</div>
</body>
</html>