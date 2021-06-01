<%@ include file="..//main/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        $(function () {
        	$("#writeBoard").submit(function(){
        		var selec = $("#selec").val();
        		alert(selec);
        		location.href="boardWriteOk.do?state="+selec;
        	});
        	
            $('#cancle').click(function () {
                var result = confirm('작성을 취소하겠습니까?');
                if (result) { //yes 
                    history.go(-1);
                } else {
                    //no 
                }


            });
        });
    </script>
    
	<c:if test="${sessionScope.id == null}">
		<script>    
			alert("로그인 후 글쓰기 이용 가능합니다!");
			history.go(-1);
		</script>
	</c:if>
</head>
<body>
<article class="">
        <div id="frame" class="bg-white flex w-9/12  h-full mx-auto">
            <!-- 시작 -->
            <!-- component -->
            <div class="mx-auto mt-10 w-10/12">
                <div class=" max-w-6xl mx-auto sm:px-6 lg:px-8">
                    <div class=" overflow-hidden sm:rounded-lg">
                        <div class="">
                            <form id="writeBoard" method="POST" action="boardWriteOk.do?state=${ state}" enctype="multipart/form-data"> 
                                <div class="mb-5 border-b-4 border-indigo-400"> 
                                <input type="hidden" name="M_ID" id="M_ID" value="${id }">
                                    <span>작성자:</span>
                                    <span>${id}</span>  
                                </div>     
                                  
                                <div class="mb-4 text-white font-samibold"><span class="text-black mr-2">게임 종류</span>
                                	<select id="selec" name="state" class="py-1 px-4 rounded border bg-indigo-400 focus:outline-none"> 
                                		<option value="Action">게임선택</option> 
										<option value="Action" class=" text-right">Action</option> 
										<option value="Beat_Em_Up" class=" text-right">Beat_Em_Up</option> 					
										<option value="City_setlement" class=" text-right">City_setlement</option>					
										<option value="Role-Playing" class=" text-right">Role-Playing</option>					
										<option value="Action_Rogue_like" class=" text-right">Action_Rogue_like</option>
										<option value="Card_board" class=" text-right">Card_board</option>
										<option value="Strategy" class=" text-right">Strategy</option> 				
										<option value="sport" class=" text-right">sport</option>					
										<option value="Arcade_and_Rhythm" class=" text-right">Arcade_and_Rhythm</option>
										<option value="Life_Immersive_Sims" class=" text-right">Life_Immersive_Sims</option>
										<option value="Adventure_RPG" class=" text-right">Adventure_RPG</option> 
                                	</select>
                                </div>                         
                                
                                <div class="mb-4">
                                    <label class="text-xl text-gray-600">제목 <span
                                            class="text-red-500">*</span></label></br>
                                    <input type="text" placeholder="제목을 입력해 주세요"
                                        class="border-2 border-gray-300 p-2 w-full" name="B_TITLE" id="B_TITLE" value=""
                                        required></input>
                                        
                                </div>
                                <div class="mb-4">   
                                    <textarea name="B_CONTENT" id="B_CONTENT" rows="6" cols="117" style="resize:none"class="p-7 border border-indigo-600 rounded my-3 focus:outline-none"></textarea> 
                                    		               	 
                                     
                                    <input type="file"  class="p-1 mt-1 text-white bg-indigo-400 w-full" id="B_IMG02" name="B_IMG02" required="required"> 
                                </div>
                                <div class="flex justify-end mb-10"> 
                                    <button class="bg-gray-100 px-3 py-1 rounded border-2 hover:bg-white" id="cancle">취소</button>
                                    <button id="writeBoard" value=${state }class="bg-blue-500 px-3 py-1 rounded border-2  ml-2 text-white hover:bg-blue-400"
                                        >등록</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>

            <script>
                CKEDITOR.replace('content');
            </script>
            <!-- 끝 -->
    </article>
</body>
</html>
<%@ include file="../main/footer.jsp" %>