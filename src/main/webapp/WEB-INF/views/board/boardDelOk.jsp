<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<script>
	alert("삭제 성공")
	self.close();
	opener.location.href="boardList.do?state="+${state};     
</script> 