<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.dropdown:focus-within .dropdown-menu {
	  opacity:1;
	  transform: translate(0) scale(1);
	  visibility: visible;
	}

#checked{ 
  width        : 400px;     /* 너비는 변경될수 있습니다. */
  text-overflow: ellipsis;  /* 위에 설정한 100px 보다 길면 말줄임표처럼 표시합니다. */
  white-space  : nowrap;    /* 줄바꿈을 하지 않습니다. */
  overflow     : hidden;    /* 내용이 길면 감춤니다 */
  display      : block;     /* ie6이상 현재요소를 블럭처리합니다. */
}
</style> 


</head>
<body>
<!-- 최상단 이미지  -->
	<div class="container bg-grey-lightest mx-auto shadow rounded mt-8 pb-4 bg-cover" style="color:#606F7B;background-color: rgb(165, 182, 198); background-image:url('https://68.media.tumblr.com/f6a4004f3092b0d664daeabb95d5d195/tumblr_oduyciOJNb1uhjffgo1_500.gif');">
		<div class="mt-2 p-12 text-center">
			<span class="text-4xl font-thin text-indigo-600">Good Gamer</span>
			<span class="hidden sm:inline-block align-bottom text-xs text-indigo-700">( 2021 )</span>
		</div>
		
	</div>
	
<!-- 분류  -->
	<div class="flex justify-between mx-36 w-auto mt-10 border-b border-grey-light">   
		<div class="flex"> 
			<button class="focus:outline-none py-2 px-6 bg-indigo-200 rounded-t-lg text-gray-500 bg-white font-bold">자유게시판</button>
			<button class="focus:outline-none py-2 px-6 hover:bg-indigo-200 rounded-t-lg text-gray-500 bg-white font-bold">이미지게시판</button>
		</div>
		<div class="mb-2">  
			<select class="focus:outline-none text-sm pr-4"> 
				<option>게임선택</option>
				<option class=" text-right">롤</option> 
				<option class=" text-right">배틀그라운드</option>
				<option class=" text-right">오버워치</option>
			</select>					    
			<button class="py-2 px-6 bg-white hover:bg-indigo-300 focus:outline-none text-black text-1xl font-bold rounded-md"
					onclick="location.href='boardWrite.do'">글쓰기 
			</button>
		</div>
	</div>
			
	
	
	
	<!-- 테이블 -->  
	
   <article class="bg-white mb-20"> 
    <div class="bg-white flex w-11/12  h-full mx-auto"> 
        <div id="Left_board" class="w-9/12 h-96 ml-10">
				<div id="table" class="pt-10 w-11/12 mx-auto">

					<div class="mb-8">
						<h2 class="text-4xl font-bold text-gray-600 px-4 py-4">자유게시판</h2>
					</div>

					<!-- 준표형 테이블 -->
					<div>
						<div class="mt-3 mb-5 flex ml-12">
							<table class=" w-11/12">
								<thead>
									<tr class="bg-indigo-200 fong-bold">
										<th class="w-1/12 py-2 text-indigo-700">번호</th>
										<th class="w-6/12 py-2 w- text-indigo-700">제목</th>
										<th class="w-2/12 py-2 text-indigo-700">작성자</th>
										<th class="w-1/12 py-2 text-indigo-700">작성일</th>
										<th class="w-1/12 py-2 text-indigo-700">추천</th>
										<th class="w-1/12 py-2 text-indigo-700">조회</th>
									</tr>
								</thead>
								<tbody>
									<tr class="border-b text-center">
										<td class="w-1/12 py-2">1</td>
										<td id="checked" class="w-6/12 py-2 font-thin text-sm"><a
											href="boardView.do">자바스프링 강철맛 와우 아이셔 좋아좋아</a></td>
										<td class="w-2/12 py-2 font-thin text-sm">너이름</td>
										<td class="w-1/12 py-2 font-thin text-sm">21.05.18</td>
										<td class="w-1/12 py-2 font-thin text-sm">55</td>
										<td class="w-1/12 py-2 font-thin text-sm">13</td>
									</tr>
									<tr class="border-b text-center">
										<td class="w-1/12 py-2">1</td>
										<td id="checked" class="w-6/12 py-2 font-thin text-sm"><a
											href="boardView.do">자바스프링 강철맛 와우 아이셔 좋아좋아</a></td>
										<td class="w-2/12 py-2 font-thin text-sm">너이름</td>
										<td class="w-1/12 py-2 font-thin text-sm">21.05.18</td>
										<td class="w-1/12 py-2 font-thin text-sm">55</td>
										<td class="w-1/12 py-2 font-thin text-sm">13</td>
									</tr>
									<tr class="border-b text-center">
										<td class="w-1/12 py-2">1</td>
										<td id="checked" class="w-6/12 py-2 font-thin text-sm"><a
											href="boardView.do">자바스프링 강철맛 와우 아이셔 좋아좋아</a></td>
										<td class="w-2/12 py-2 font-thin text-sm">너이름</td>
										<td class="w-1/12 py-2 font-thin text-sm">21.05.18</td>
										<td class="w-1/12 py-2 font-thin text-sm">55</td>
										<td class="w-1/12 py-2 font-thin text-sm">13</td>
									</tr>
									<tr class="border-b text-center">
										<td class="w-1/12 py-2">1</td>
										<td id="checked" class="w-6/12 py-2 font-thin text-sm"><a
											href="boardView.do">자바스프링 강철맛 와우 아이셔 좋아좋아</a></td>
										<td class="w-2/12 py-2 font-thin text-sm">너이름</td>
										<td class="w-1/12 py-2 font-thin text-sm">21.05.18</td>
										<td class="w-1/12 py-2 font-thin text-sm">55</td>
										<td class="w-1/12 py-2 font-thin text-sm">13</td>
									</tr>
									<tr class="border-b text-center">
										<td class="w-1/12 py-2">1</td>
										<td id="checked" class="w-6/12 py-2 font-thin text-sm"><a
											href="boardView.do">자바스프링 강철맛 와우 아이셔 좋아좋아</a></td>
										<td class="w-2/12 py-2 font-thin text-sm">너이름</td>
										<td class="w-1/12 py-2 font-thin text-sm">21.05.18</td>
										<td class="w-1/12 py-2 font-thin text-sm">55</td>
										<td class="w-1/12 py-2 font-thin text-sm">13</td>
									</tr>
									<tr class="border-b text-center">
										<td class="w-1/12 py-2">1</td>
										<td id="checked" class="w-6/12 py-2 font-thin text-sm"><a
											href="boardView.do">자바스프링 강철맛 와우 아이셔 좋아좋아</a></td>
										<td class="w-2/12 py-2 font-thin text-sm">너이름</td>
										<td class="w-1/12 py-2 font-thin text-sm">21.05.18</td>
										<td class="w-1/12 py-2 font-thin text-sm">55</td>
										<td class="w-1/12 py-2 font-thin text-sm">13</td>
									</tr>
									<tr class="border-b text-center">
										<td class="w-1/12 py-2">1</td>
										<td id="checked" class="w-6/12 py-2 font-thin text-sm"><a
											href="board_view.jsp">자바스프링 강철맛 와우 아이셔 좋아좋아</a></td>
										<td class="w-2/12 py-2 font-thin text-sm">너이름</td>
										<td class="w-1/12 py-2 font-thin text-sm">21.05.18</td>
										<td class="w-1/12 py-2 font-thin text-sm">55</td>
										<td class="w-1/12 py-2 font-thin text-sm">13</td>
									</tr>
									<tr class="border-b text-center">
										<td class="w-1/12 py-2">1</td>
										<td id="checked" class="w-6/12 py-2 font-thin text-sm"><a
											href="boardView.do">자바스프링 강철맛 와우 아이셔 좋아좋아</a></td>
										<td class="w-2/12 py-2 font-thin text-sm">너이름</td>
										<td class="w-1/12 py-2 font-thin text-sm">21.05.18</td>
										<td class="w-1/12 py-2 font-thin text-sm">55</td>
										<td class="w-1/12 py-2 font-thin text-sm">13</td>
									</tr>
									<tr class="border-b text-center">
										<td class="w-1/12 py-2">1</td>
										<td id="checked" class="w-6/12 py-2 font-thin text-sm"><a
											href="boardView.do">자바스프링 강철맛 와우 아이셔 좋아좋아</a></td>
										<td class="w-2/12 py-2 font-thin text-sm">너이름</td>
										<td class="w-1/12 py-2 font-thin text-sm">21.05.18</td>
										<td class="w-1/12 py-2 font-thin text-sm">55</td>
										<td class="w-1/12 py-2 font-thin text-sm">13</td>
									</tr>
									<tr class="border-b text-center">
										<td class="w-1/12 py-2">1</td>
										<td id="checked" class="w-6/12 py-2 font-thin text-sm"><a
											href="boardView.do">자바스프링 강철맛 와우 아이셔 좋아좋아</a></td>
										<td class="w-2/12 py-2 font-thin text-sm">너이름</td>
										<td class="w-1/12 py-2 font-thin text-sm">21.05.18</td>
										<td class="w-1/12 py-2 font-thin text-sm">55</td>
										<td class="w-1/12 py-2 font-thin text-sm">13</td>
									</tr>
								</tbody>
							</table>
						</div>



					</div>

					<!-- 글 리스트 -->

				</div>
			</div>
        <div id="right_side" class="mt-24 w-52"> 
            <div id="myinfo NoneSession" class="border-2 border-indigo-400">
                <div class="p-2">로그인</div>
                <div class="flex justify-center">
                    <div class="ml-3">
                        <input class="p-1 bg-gray-100 font-thin" size="21" type="text" placeholder="아이디">
                        <input class="p-1 bg-gray-100 font-thin  mt-1 mb-2" size="21" type="password" placeholder="비밀번호">
                        <button
                            class="focus:outline-none bg-indigo-500 rounded text-xs w-44 py-1 hover:bg-indigo-400 text-white">Login</button>
                    </div>
                </div>
                <div class="my-1">
                    <ul class="text-xs flex justify-center text-gray-400">
                        <li><a href="#">회원가입</a></li>
                        <li class="ml-1"><a href="#">아이디/비번찾기</a></li>
                    </ul>
                </div>
            </div> 
            <div id="latest_views" class="mt-5 h-64 mb-5 border-2">
                <div class="p-2">최근 읽은 글</div>
                <div class="ml-2">
                <div class="flex items-center">
                    <button class="font-thin focus:outline-none px-1 mb-1">x</button>
                    <div id="checked" class="font-thin text-gray-600 text-sm focus:outline-none"><a href="#"> 메이플스토리하기 좋은 날씨다</a></div>
                </div>
                <div class="flex items-center">
                    <button class="font-thin focus:outline-none px-1 mb-1">x</button>
                    <div id="checked" class="font-thin text-gray-600 text-sm focus:outline-none"><a href="#"> 농구하기 좋은 날씨다</a></div>
                </div>
                <div class="flex items-center">
                    <button class="font-thin focus:outline-none px-1 mb-1">x</button>
                    <div id="checked" class="font-thin text-gray-600 text-sm focus:outline-none"><a href="#"> 의적질하기 좋은 날씨다</a></div>
                </div>
                <div class="flex items-center">
                    <button class="font-thin focus:outline-none px-1 mb-1">x</button>
                    <div id="checked" class="font-thin text-gray-600 text-sm focus:outline-none"><a href="#"> 자전거타고 학원가기 좋은 날씨다</a></div>
                </div>
            </div> 
     </div>       
	</div>
    </div> 
    
</article>

<!-- 페이지번호 -->
	<div class="flex justify-center mb-16">   
		<a href="#" class="px-3"> 이전 </a>	
		<a href="#" class="px-3"> 1 </a>	
		<a href="#" class="px-3"> 2 </a>	
		<a href="#" class="px-3"> 3 </a>	
		<a href="#" class="px-3"> 다음 </a>	
	</div>


</body>
</html>
<%@ include file="../main/footer.jsp"%>

