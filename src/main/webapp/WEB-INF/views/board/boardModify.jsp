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
            $('#cancle').click(function () {
                var result = confirm('수정을 취소하겠습니까?');
                if (result) { //yes 
                    history.go(-1);
                } else {
                    //no 
                }


            });
        });
    </script>
    
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
                            <form method="POST" action="boardModify.do" enctype="multipart/form-data">
                            <input type="hidden" name="B_NUM" value="${bcont.getB_NUM()}" />
  							<input type="hidden" name="page" value="${page}" />  
                                <div class="mb-5 border-b-4 border-indigo-400">
                                    <span>작성자:</span>
                                    <span>${bcont.getM_ID()}</span>  
                                </div> 
                                    
                                    
                                <div class="mb-4"> 
                                    <label class="text-xl text-gray-600">제목 <span 
                                            class="text-red-500">*</span></label></br> 
                                    <input type="text"  name="B_TITLE" id="B_TITLE" 
                                        class="border-2 border-gray-300 p-2 w-full" value="${bcont.getB_TITLE() }"
                                        required></input>
                                </div>
                                <div class="mb-4">   
                                    <pre><textarea name="B_CONTENT" id="B_CONTENT" rows="6" cols="117" style="resize:none" class="border border-indigo-600 rounded my-3 focus:outline-none py-4 px-4">${bcont.getB_CONTENT()}</textarea></pre> 

                                    <input type="file" class="p-1 mt-1 text-white bg-indigo-400 w-full" id="B_IMG02" name="B_IMG02">${B_IMG} 
                                    				 
                                </div> 
                                <div class="flex justify-end mb-10">
                                    <button class="bg-gray-100 px-3 py-1 rounded border-2 hover:bg-white" id="cancle">취소</button>
                                    <button role="submit" class="bg-blue-500 px-3 py-1 rounded border-2  ml-2 text-white hover:bg-blue-400"
                                        >수정</button>
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