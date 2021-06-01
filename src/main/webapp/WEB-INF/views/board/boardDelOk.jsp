<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${session.id =='hth9876' }">
	<script>
	alert("삭제 성공")
	location.href="boardList.do";  
</script>
</c:if>
<c:if test="${session.id == bcont.getM_ID() }"> 
	<script>
	self.close();
	opener.location.href="boardList.do"
</script>
</c:if> 
