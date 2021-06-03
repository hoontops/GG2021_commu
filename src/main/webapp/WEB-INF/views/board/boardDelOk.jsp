<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${id != 'hth9876'}">
	<script>
		alert("삭제 성공")
		self.close();
		opener.location.href = "boardList.do?state=Action";
	</script>
</c:if>
<c:if test="${id == 'hth9876'}">
	<script>
		alert("삭제 성공")
		location.href = "admin.do?state=board";
		self.close();
	</script>
</c:if>