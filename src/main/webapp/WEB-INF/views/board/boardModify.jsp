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
                var result = confirm('작성을 취소하겠습니까?');
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
                            <form method="POST" action="boardModify.do">
                                <div class="mb-5 border-b-4 border-indigo-400">
                                    <span>작성자:</span>
                                    <span>${member.M_ID}</span>
                                </div>
                                <div class="mb-4">
                                    <label class="text-xl text-gray-600">제목<span
                                            class="text-red-500">*</span></label></br>
                                    <input type="text" value="${board.B_TITLE}"
                                        class="border-2 border-gray-300 p-2 w-full" name="title" id="title" value=""
                                        required></input>
                                </div>
                                <div class="mb-4">
                                    <textarea name="content" class="border-2 border-gray-500">
										${board.B_CONTENT}
                                    </textarea>
                                    <input type="file"  class="p-1 mt-1 text-white bg-indigo-400 w-full"  >
                                </div>
                                <div class="flex justify-end mb-10">
                                    <button role="reset" class="bg-gray-100 px-3 py-1 rounded border-2 hover:bg-white" id="cancle">취소</button>
                                    <button role="submit" class="bg-blue-500 px-3 py-1 rounded border-2  ml-2 text-white hover:bg-blue-400"
                                        required>등록</button>
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