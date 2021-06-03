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


   <!-- 테이블 -->

   <article class="bg-white mb-20">
      <div class="bg-white flex w-full  h-full mx-auto">
         <div id="Left_board" class="w-11/12 h-96 ml-10">
            <div id="table" class="pt-10 w-11/12 mx-auto">

               <!-- 검색결과 테이블 -->
               <div>
                  <div class="mt-3 mb-5 flex ml-12 py-5">
                     <table class=" w-full">
                        <thead>
                           <tr class="bg-indigo-200 fong-bold">
                              <th class="w-1/12 py-2 text-indigo-700">번호</th>
                              <th class="w-3/12 py-2 text-indigo-700">장르</th>
                              <th class="w-5/12 py-2 text-indigo-700">게임명</th>
                              <th class="w-2/12 py-2 text-indigo-700">출시일</th>
                              <th class="w-1/12 py-2 text-indigo-700">가격</th>
                           </tr>
                        </thead>
                        <!-- 화면 출력 번호 -->
                        <c:set var="num" value="${listcount-(page-1)*10}" />
                        <tbody>
                           <!-- 반복문 시작 -->
                           <c:forEach var="b" items="${boardlist}">
                              <tr class="border-b text-center">
                                 <td onclick="location.href='boardDetailPage.do'" class="w-1/12 py-2"><c:out value="${num}" /> <c:set
                                       var="num" value="${num-1}" /> <%-- <span>${b.GO_TYPE}</span>  --%>
                                 </td>
                                 <td id="checked" class="w-5/12 py-2 font-thin text-sm">
                                    <a
                                    href="boardView.do?BO_NUM=${b.getG_NAME()}&page=${page}&state=cont">${b.getG_TYPE()}</a>
                                 </td>
                                 <td class="w-2/12 py-2 font-thin text-sm"><a href="javascript:void(0)" onclick="return moveUrl(${b.getG_URL()})">${b.getG_NAME()}</a></td>
                                 <td class="w-2/12 py-2 font-thin text-sm"><fmt:formatDate
                                       value="${b.getG_DATE() }" pattern="yyyy-MM-dd" /></td>
                                 <td class="w-1/12 py-2 font-thin text-sm">${b.getG_PRICE()}</td>
                              </tr>
                           </c:forEach>
                        </tbody>
                     </table>
                  </div>
               </div>

               <!-- 글 리스트 -->

            </div>
         </div>

      </div>

   </article>
</body>
</html>
<%@ include file="../main/footer.jsp"%> 