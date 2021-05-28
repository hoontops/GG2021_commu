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
		window.open("boardView.do?BO_NUM=${bcont.BO_NUM}&page=${page}&state=del","게시글 삭제","width=660,height=380");
	}

	/* $(function() { 
		$('.edit').click(function() {
			var id  = $(this).attr('id');  // rno
			var txt = $('#div_'+id).text(); // replytext
			$('#div_'+id).html("<textarea rows='3' cols='30' class='focus:outline-none m-3' style='resize: none;'
					id='div_" +id+ "'>" 
					+txt+"</textarea>");
			$('#btn_'+id).html(
			   "<input type='button' value='확인' onclick='up("+id+")'> "
			  +"<input type='button' value='취소' onclick='lst()'>");
		});
	});
	function up(id) {
		var replytext = $('#tt_'+id).val();
		var formData = "rno="+id+'&replytext='+replytext
			+"&bno=${board.num}";
		$.post('${path}/repUpdate',formData, function(data) {
			$('#slist').html(data);
		});
	}
	function lst() {
		$('#slist').load('${path}/slist/num/${board.num}');
	}
	function del(rno,bno) {
		var formData="rno="+rno+"&bno="+bno;
		$.post("${path}/repDelete",formData, function(data) {
			$('#slist').html(data);
		});
	} */
		
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
					class="focus:outline-none py-2 px-6 bg-indigo-200 rounded-t-lg text-gray-500 bg-white font-bold">자유게시판</button>
			</div>
			<div class="mb-2">
				<button
					class="py-2 px-6 bg-white hover:bg-indigo-300 focus:outline-none text-black text-1xl font-bold rounded-md"
					onclick="location.href='boardList.do'">목록 
				</button>
			</div>
		</div>

		<div class="mt-12 mx-36 border-b-4 border-indigo-300"> 
			<div id="title" class="flex justify-between">
				<h1 class="font-bold text-2xl text-gray-800">${bcont.BO_TITLE }</h1> 
				
			<!-- 작성자 클릭시 수정 삭제 버튼 -->	
			<c:if test="${sessionScope.id == bcont.MO_ID }">        	   
				<div class="">
				<button Onclick="location='boardView.do?BO_NUM=${bcont.BO_NUM}&page=${page}&state=edit'"  
						class="focus:outline-none bg-indigo-600 hover:bg-white hover:text-indigo-500  text-white text-xs py-1 px-3 rounded border border-solid border-indigo-600 hover:border-indigo-700 transition-colors duration-300">
						수정
				</button> 
				<button onclick="boardDelete()"     
						class="focus:outline-none bg-indigo-600 hover:bg-white hover:text-indigo-500  text-white text-xs py-1 px-3 rounded border border-solid border-indigo-600 hover:border-indigo-700 transition-colors duration-300">
						삭제
				</button>
				</div>
			</c:if>	
			
			<!-- 비로그인자 클릭시 -->	
			<c:if test="${sessionScope.id == null }">	
				 
			</c:if>
			
			</div> 
			<div id="under" class="flex items-center justify-between px-4"> 
				<div class="nick & date flex items-center">
					<div class="font-thin mr-3 text-gray-400 border-r pr-3">${bcont.MO_ID}</div>
					<div class="font-thin text-gray-400"> 
						<fmt:formatDate value="${bcont.BO_DATE }" pattern="yyyy-MM-dd HH:mm:ss"/>
					</div>
				</div>
				<div id="view" class="font-semibold text-indigo-700">
					<i class="far fa-eye pr-2"></i>${bcont.BO_VIEW } 
				</div>
			</div>
		</div>

		<!-- 내용 -->
		<div class="w-11/12 mx-auto py-8 pl-28">
			<p class="text-base">${bcont.BO_CONTENT }</p>     
		</div>

		
		<!-- 댓글 -->
		<div
			class="w-9/12 flex pb-20 mx-auto mt-10 mb-24 border-b-2 border-indigo-600">
			<c:if test="${sessionScope.id == null }">	
			<textarea rows="3" cols="100" style="resize: none;" readonly="readonly"
				class="bg-indigo-50 focus:outline-none p-5"
				placeholder="로그인 후 글쓰기 가능"></textarea>
				<button onclick="chk()"
				class="bg-indigo-200 w-32 focus:outline-none text-indigo-800 font-bold hover:bg-indigo-400"
				value="등록">등록</button>	 
			</c:if>
			<c:if test="${sessionScope.id != null }">	
				<textarea rows="3" cols="100" style="resize: none;"
				class="bg-indigo-50 focus:outline-none p-5"
				placeholder="댓글을 입력하세요"></textarea> 
			<button onclick="chk()"
				class="bg-indigo-200 w-32 focus:outline-none text-indigo-800 font-bold hover:bg-indigo-400"
				value="등록">등록</button>
			</c:if>
			
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
							class="ml-8 mr-5 text-indigo-600 font-bold rounded focus:outline-none edit">
								<div class="edit"><i class="far fa-edit"></i></div>  
						</button>
						<button
							class="text-indigo-600 font-bold rounded focus:outline-none">
							<i class="far fa-window-close"></i>
						</button>
					</div>
				</div>
			</div>
			<!-- <div id="대댓글"class="border-2 border-indigo-600 flex items-end  pl-10">
				<div class="">
					<textarea rows="3" cols="90" class="focus:outline-none m-3" style="resize: none;"></textarea>
				</div>
				<div class="">
					<button class="bg-indigo-600 rounded text-white px-3 py-1 mb-5">등록</button>
				</div>

			</div> -->
			
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