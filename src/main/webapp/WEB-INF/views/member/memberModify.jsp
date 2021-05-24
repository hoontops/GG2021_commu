<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://unpkg.com/tailwindcss@0.3.0/dist/tailwind.min.css" rel="stylesheet">
    <title>정보수정</title>
    <meta name = "google-signin-client_id"content = "824407773279-3jft4dof7ml52ldtjdmkncku0mm07j6k.apps.googleusercontent.com">
  	<script src="https://apis.google.com/js/platform.js" async defer></script> 

</head> 

<body>
<form method="post" action="memberModifyOk.do" enctype="multipart/form-data">
<div class="bg-grey-lighter min-h-screen flex flex-col"
	 style="background-image: url('img/joinFormBack.png')">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-2">
                <div class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
                    <h1 class="mb-8 text-3xl text-center">회원정보수정</h1>
                    <input 
                        type="text"
                        class="block border border-gray-light w-full p-3 rounded mb-4 bg-gray-100"
                        name="M_ID" id="M_ID" value="${id}"  
                        disabled="disabled"/>
                        <input 
                        type="text"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_NAME" id="M_NAME" value="${name}" 
                        placeholder="이름"/> 

                    <input 
                        type="text"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_EMAIL" id="M_EMAIL" value="${email}"
                        placeholder="이메일" />

                    <input 
                        type="password"
                        class="block border border-grey-light w-full p-3 rounded mb-4"
                        name="M_PASSWD" id="M_PASSWD"   
                        placeholder="패스워드"/>
                                       
                    <!-- 프로필 -->		
					<div class="grid grid-cols-1 mt-5 mx-7 mb-4">
						<label class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold mb-1">Upload Profile</label>
						<div class='flex items-center justify-center w-full'>
							<label class='flex flex-col border-4 border-dashed w-full h-32 hover:bg-gray-100 hover:border-purple-300 group'>
								<div class='flex flex-col items-center justify-center pt-7'>
									<svg class="w-10 h-10 text-purple-400 group-hover:text-purple-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"></path></svg>
									<p class='lowercase text-sm text-gray-400 group-hover:text-purple-600 pt-1 tracking-wider'>Select a profile</p>
								</div>
								<input type="file" class="hidden" name="M_IMG01" id="M_IMG"/>    
							</label>
						</div>
					</div>		    
                    
	                    <button
	                        type="submit"
	                        class="w-full text-center py-3 rounded bg-indigo-600 text-white focus:outline-none my-1"
	                     >정보수정</button>
                	</div>
            </div>
        </div>
</form>        
</body>
</html>