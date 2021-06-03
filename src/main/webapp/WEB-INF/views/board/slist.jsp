<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   

<c:set var="path" value="${pageContext.request.contextPath }" />
  
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8"> 

<!-- 파비콘.ico-->
<link rel="shortcut icon" href="img/GG_Logo.ico">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- 테일윈드 CDN -->
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet">

<!-- 폰트어썸 CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">

<script src="http://code.jquery.com/jquery-latest.js"></script>

<title>Insert title here</title>

<script type="text/javascript">

	$(function() {
		$('.edit').click(function() {
			
			var id = $(this).attr('id');
			console.log(id);
			var txt = $('#div_'+id).text(); 			
			$('#span_'+id).html("<textarea class='resize-none mr-2' rows='3' cols='70' id='tt_"+id+"'>"+txt+"</textarea>"); 
			$('#btn_'+id).html( 
					"<div class='flex'><input type='button' class='px-2 py-1 m-2 bg-indigo-100 rounded cursor-pointer' value='수정' onclick='up("+id+")'>"
				   +"<input type='button' class='px-2 py-1 m-2 bg-indigo-100 rounded cursor-pointer' value='취소' onclick='can()'></div>");
			$('#btn_'+id).removeClass("far fa-edit");
			$('#delt').hide();  
		});
			
	}); 
	
	function up(id) {
//		alert(id);
		var c_CONTENT = $('#tt_'+id).val();  
//		alert(c_CONTENT);
//		alert(${board.getB_NUM()});    
//		var formData = "C_NUM="+id+'&C_CONTENT='+c_CONTENT 
		var formData = "C_NUM="+id+'&C_CONTENT='+c_CONTENT+"&B_NUM=${board.getB_NUM()}"
		$.post("${path}/cmUpdate.do", formData, function(data) {
			$('#slist').html(data);  
		});
	}
	
	function can() {
		$('#slist').load('slist.do?B_NUM=${board.getB_NUM()}');
	}
	

	function del(c_NUM,b_NUM) {
			var result = confirm('정말 삭제하시겠습니까?');
			 if(result) {
				var formData="c_NUM="+c_NUM+"&b_NUM="+b_NUM;
				$.post("cmDelete.do", formData, function(data) {			
					$("#slist").html(data);	
				});  
			} else {
					return false; 
			}	 
	}
	
</script>

</head>
<body>

		<div class="flex mx-36 w-auto mt-10 border-b">
			<div
				class="focus:outline-none py-2 px-6 bg-indigo-200 rounded-t-lg text-black text-xl font-bold">최신순</div>
		</div>
		<div class="mx-36 bg-indigo-50 mb-3">
		
		<c:forEach var="cs" items="${slist}"> 
			<div id="댓글"
				class="flex justify-between border-b border-gray-500 pl-12 pr-8 py-4">
				<div>
					<div class="font-bold  text-indigo-600">${cs.c_ID}</div>  
					<div class="font-thin pt-3" id="span_${cs.c_NUM}">   
						<span class="focus:outline-none" id="div_${cs.c_NUM}">${cs.c_CONTENT}</span>  
					</div>
				</div>
				<div class="flex items-center mt-10">  
					<div id="date" class="text-gray-500 text-sm">
						<fmt:formatDate value="${cs.c_DATE }" pattern="yyyy-MM-dd HH:mm:ss"/>	
					</div>
					 
						<c:if test="${cs.c_ID == id or id == 'hth9876'}"> 	 					
							<div id="수정삭제" class="flex">
								<button
									class="ml-8 mr-5 text-indigo-600 font-bold rounded focus:outline-none edit">
									<div class="edit" id="${cs.c_NUM}"> 
										<i class="far fa-edit" id="btn_${cs.c_NUM}"></i> 
									</div>
								</button>						
								<button
									class="text-indigo-600 font-bold rounded focus:outline-none">
									<div class="del" id="delt" onclick="del(${cs.c_NUM},${cs.b_NUM})">
										<i class="far fa-window-close"></i> 
									</div>
								</button>						
							</div>
						</c:if> 					
						<c:if test="${cs.c_ID != id}">	 					
							
						</c:if>		
												
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

		</div> 
		
	<%-- 		<!-- 페이지번호 -->
	<div class="flex justify-center mb-16">    
		<c:if test="${page <=1 }">  
				이전&nbsp;
			</c:if>
			
			<c:if test="${page > 1 }">
				<a href="slist.do?page=${page-1}">이전</a> 
			</c:if>			

			<c:forEach var="a" begin="${startPage}" end="${endPage}">
				<c:if test="${a == page }">
					${a}
				</c:if>
				<c:if test="${a != page }">   
					<a href="slist.do?page=${a}">[${a}]</a>&nbsp;
				</c:if> 
			</c:forEach>			
			
			<c:if test="${page >= maxPage }">
				다음 
			</c:if>
			<c:if test="${page < maxPage }"> 
				<a href="slist.do?page=${page+1}">다음</a>
			</c:if>
	</div> --%>


</body>
</html>
