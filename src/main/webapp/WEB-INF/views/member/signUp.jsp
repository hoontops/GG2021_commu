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
    <title>회원가입</title>
    <meta name = "google-signin-client_id"content = "824407773279-3jft4dof7ml52ldtjdmkncku0mm07j6k.apps.googleusercontent.com">
  	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script> 
 <script>
  	function check(){
  		if($.trim($("#M_ID").val())==""){
  			alert("아이디를 입력해 주세요!");
  			$("#M_ID").val("").focus();
  			return false;
  		}
  		if($.trim($("#checkId").val())==""){
  			alert("중복체크를 확인 해주세요!");
  			$("#checkId").val("").focus();
  			return false;
  		} 
  		if($.trim($("#M_NAME").val())==""){
  			alert("성함을 입력해 주세요!");
  			$("#M_NAME").val("").focus();
  			return false;
  		}
  		
  		if($.trim($("#M_EMAIL").val())==""){
  			alert("메일을 입력해 주세요!");
  			$("#M_EMAIL").val("").focus();
  			return false; 
  		} 
  		
  		if($.trim($("#M_PASSWD").val())==""){
  			alert("비밀번호를 입력해 주세요!");
  			$("#M_PASSWD").val("").focus();
  			return false;
  		}
  		 if($.trim($("#M_PASSWD").val()) != $.trim($("#M_PASSWD2").val())){
  			 alert("비번이 다릅니다!");
  			 $("#M_PASSWD").val("");
  			 $("#M_PASSWD2").val("");
  			 $("#M_PASSWD").focus();
  			/*  alert("비밀번호가 일치하지 않습니다!");
  			 $("#M_PASSWD2").val("");
  			 $("#M_PASSWD").val("").focus(); */
  			 return false;
  		 } 
  	}


  	/* 아이디 중복 체크*/ 
  	function idCheck(){
  		$("#idcheck").hide();//idcheck span 아이디 영역을 숨긴다.
  		var memId=$("#M_ID").val(); 

  		//아이디 중복확인
  	    $.ajax({
  	        type:"POST",
  	        url:"memberCheck.do",
  	        data: {"memId":memId},        
  	        success: function (data) { 
//  	        	alert("return success="+data);
  	      	  if(data==1){	//중복 ID
  	      		var newtext='<font color="red">중복 아이디입니다.</font>';
  	      			$("#idcheck").text('');
  	        		$("#idcheck").show();
  	        		$("#idcheck").append(newtext);
  	          		$("#M_ID").val('').focus();
  	          		return false;
  		     
  	      	  }else{	//사용 가능한 ID
  	      		var newtext='<font color="indigo">사용가능한 아이디입니다.</font>'; 
  	      		$("#idcheck").text('');
  	      		$("#idcheck").show();
  	      		$("#idcheck").append(newtext);
  	      		$("#M_NAME").focus(); 
  	      	  }  	    	  
  	        }
  	        , 
  	    	  error:function(e){
  	    		  alert("data error"+e);
  	    	  }
  	      });//$.ajax 	
  	}
 </script>

</head>

<body> 
<form method="post" action="memberJoin.do" onsubmit="return check()" enctype="multipart/form-data">   
<div class="bg-grey-lighter min-h-screen flex flex-col"
	 style="background-image: url('img/joinFormBack.png')">
            <div class="container mx-auto flex-1 flex flex-col items-center justify-center mt-5 px-2 w-4/12">
                <div class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
                    <h1 class="mb-8 text-3xl text-center">회원가입</h1>
                    <input 
                        type="text"
                        class="block border border-grey-light w-full p-3 rounded mb-1"
                        name="M_ID" id="M_ID" 
                        placeholder="아이디" 
                        autofocus="autofocus"/>   
                        
                     <!-- 아이디 중복체크 -->
                     <div class="flex itemx-center"> 
                     <button type="button" value="중복확인" class="flex focus:outline-none py-1 px-3 mb-2 bg-indigo-100 hover:bg-indigo-200 rounded"
				      		onClick="idCheck()" id="checkId">중복확인</button>  
				     <div id="idcheck" class="flex itemx-center pl-4 pt-1"></div>
				     </div>
				     
                     <input                                              
                        type="text"
                        class="block border border-gray-light w-full p-3 rounded mb-4"
                        name="M_NAME" id="M_NAME" 
                        placeholder="이름" />                    
                    <input 
                        type="email"
                        class="block border border-gray-light w-full p-3 rounded mb-4"
                        name="M_EMAIL" id="M_EMAIL"
                        placeholder="이메일" />  

                    <input 
                        type="password"
                        class="block border border-gray-light w-full p-3 rounded mb-4"
                        name="M_PASSWD" id="M_PASSWD"
                        placeholder="패스워드" />
                    <input 
                        type="password"
                        class="block border border-gray-light w-full p-3 rounded mb-4"
                        name="M_PASSWD2" id="M_PASSWD2"
                        placeholder="패스워드 확인" />
                        
					
                    <button
                        type="submit"  
                        class="w-full text-center py-3 rounded bg-indigo-600 text-white focus:outline-none my-1"
                        
                    >계정생성</button>

                    <div class="text-center text-sm text-grey-dark mt-4"> 
                        회원가입이 되면 
                        <a class="no-underline border-b border-gray-dark text-grey-dark" href="#">
                           서비스약관과 개인정보활용에 동의한 것으로 간주됩니다.
                        </a> 
                    </div>
                </div>

                <div class="text-white mt-6">
                    이미 계정이 있으신가요? 
                    <a class="no-underline border-b border-blue text-white" href="login.do">
                        로그인
                    </a>
                </div>
            </div>
        </div>
</form>        
</body>
</html>
<%@ include file="../main/footer.jsp" %>