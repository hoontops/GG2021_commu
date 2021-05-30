<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 테일윈드 CDN -->
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet">
<title>EVENT</title>
<style>
@
tailwind base ;
 @tailwind components ;
 @tailwind utilities ;
.box { @apply bg-indigo-700 text-gray-100 min-w-full h-32 min-h-full
	rounded;
	
}
.event_content{
	margin-top: 130px;
    margin-bottom: 150px;
}
</style>
<c:if test="${sessionScope.id == null }">
	<script>
		alert("로그인 후 이벤트 게임 이용 가능합니다!");
		history.go(-1);
	</script>
</c:if>
</head>
<body>
<c:if test="${sessionScope.id != null }"> 
	<div class="event_content">
		<div class="grid overflow-hidden grid-cols-3 grid-rows-2 gap-2">
			<div class="box row-start-1 row-end-3">
				<div
					class="flex flex-col items-center justify-center max-w-sm mx-auto">
					<div
						class="w-full h-64 bg-gray-300 bg-center bg-cover rounded-lg shadow-md"
						style="background-image: url(https://mblogthumb-phinf.pstatic.net/20150416_25/tlgus2674_1429111507400QWo1U_PNG/1890285782_dBXfQ3Mv_C5D7C6AEB8AEBDBA.png?type=w420)"></div>

					<div
						class="w-56 -mt-10 overflow-hidden bg-white rounded-lg shadow-lg md:w-64 dark:bg-gray-800">
						<h3
							class="py-2 font-bold tracking-wide text-center text-gray-800 uppercase dark:text-white">테트리스</h3>

						<div
							class="flex items-center justify-between px-3 py-2 bg-gray-200 dark:bg-gray-700">
							<span class="font-bold text-gray-800 dark:text-gray-200"></span>
							<button Onclick="location.href='tetris.do'"
								class="px-2 py-1 text-xs font-semibold text-white uppercase transition-colors duration-200 transform bg-gray-800 rounded hover:bg-gray-700 dark:hover:bg-gray-600 focus:bg-gray-700 dark:focus:bg-gray-600 focus:outline-none">
								GAME
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="box row-start-1 row-end-3">
				<div
					class="flex flex-col items-center justify-center max-w-sm mx-auto">
					<div
						class="w-full h-64 bg-gray-300 bg-center bg-cover rounded-lg shadow-md"
						style="background-image: url(./img/roulette.png)"></div>

					<div
						class="w-56 -mt-10 overflow-hidden bg-white rounded-lg shadow-lg md:w-64 dark:bg-gray-800">
						<h3
							class="py-2 font-bold tracking-wide text-center text-gray-800 uppercase dark:text-white">룰렛</h3>

						<div
							class="flex items-center justify-between px-3 py-2 bg-gray-200 dark:bg-gray-700">
							<span class="font-bold text-gray-800 dark:text-gray-200"></span>
							<button Onclick="location.href='roulette.do'"
								class="px-2 py-1 text-xs font-semibold text-white uppercase transition-colors duration-200 transform bg-gray-800 rounded hover:bg-gray-700 dark:hover:bg-gray-600 focus:bg-gray-700 dark:focus:bg-gray-600 focus:outline-none">
								GAME
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="box row-start-1 row-end-3">
				<div
					class="flex flex-col items-center justify-center max-w-sm mx-auto">
					<div
						class="w-full h-64 bg-gray-300 bg-center bg-cover rounded-lg shadow-md"
						style="background-image: url(https://mblogthumb-phinf.pstatic.net/MjAyMTA0MDJfMjg2/MDAxNjE3MzI2NTAxMzM5.UDFhNyYUo9GD4AwbUGcxdF_hBvyk83vtU2Nx-zT5RPUg.t_T9_6chBrddMurBAp3EvlCpU8slonN02a0aqBTQ_xMg.JPEG.minuvsoran/BandPhoto%EF%BC%BF2021%EF%BC%BF04%EF%BC%BF02%EF%BC%BF10%EF%BC%BF21%EF%BC%BF20.jpg?type=w800)"></div>

					<div
						class="w-56 -mt-10 overflow-hidden bg-white rounded-lg shadow-lg md:w-64 dark:bg-gray-800">
						<h3
							class="py-2 font-bold tracking-wide text-center text-gray-800 uppercase dark:text-white">지뢰찾기</h3>

						<div
							class="flex items-center justify-between px-3 py-2 bg-gray-200 dark:bg-gray-700">
							<span class="font-bold text-gray-800 dark:text-gray-200"></span>
							<button Onclick="location.href='landmine.do'"
								class="px-2 py-1 text-xs font-semibold text-white uppercase transition-colors duration-200 transform bg-gray-800 rounded hover:bg-gray-700 dark:hover:bg-gray-600 focus:bg-gray-700 dark:focus:bg-gray-600 focus:outline-none">
								GAME
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</c:if>
</body>
</html>
<%@ include file="footer.jsp"%>