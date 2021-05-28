<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.group:focus .group-focus\:flex {
	    display: flex;
	}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#G_TYPE").change(function(){
//			$.post("", ,);
			
		});
	});

</script>
</head>
<body id="main_body">
	<main>
		<!-- slider -->
		<div id="top_slide" class="carousel relative shadow-xl bg-white">
			<div class="carousel-inner relative overflow-hidden w-full">
				<!--Slide 1-->
				<input class="carousel-open" type="radio" id="carousel-1"
					name="carousel" aria-hidden="true" hidden="" checked="checked">
				<div class="carousel-item absolute opacity-0"
					style="height: fit-content;">
					<div
						class="block h-full w-full bg-black text-white text-5xl text-center w-fu">
						<iframe class="m-auto" width="700" height="425"
							src="https://www.youtube.com/embed/z2HE_the-A0?autoplay=1&mute=1"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
				<label for="carousel-3"
					class="prev control-1 pt-28 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-9xl  font-bold  text-gray-300 hover:text-indigo-500  leading-tight z-10 inset-y-0 left-0 ">‹</label>
				<label for="carousel-2"
					class="next control-1 pt-28 w-10 h-10 ml-2 md:mr-10 absolute cursor-pointer hidden text-9xl font-bold text-gray-300 hover:text-green-500  leading-tight z-10 inset-y-0 right-0">›</label>

				<!--Slide 2-->
				<input class="carousel-open" type="radio" id="carousel-2"
					name="carousel" aria-hidden="true" hidden="">
				<div class="carousel-item absolute opacity-0"
					style="height: fit-content;">
					<div
						class="block h-full w-full bg-black text-white text-5xl text-center">
						<img class="m-auto object-center"
							src="http://webservice-cf.joycityglobal.com/fs1/banner/2021042802062550.png"
							alt="">
					</div>
				</div>
				<label for="carousel-1"
					class="prev control-2 pt-20 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-9xl  font-bold  text-gray-300 hover:text-green-500  leading-tight z-10 inset-y-0 left-0 ">‹</label>
				<label for="carousel-3"
					class="next control-2 pt-20 w-10 h-10 ml-2 md:mr-10 absolute cursor-pointer hidden text-9xl font-bold text-gray-300 hover:text-green-500  leading-tight z-10 inset-y-0 right-0">›</label>

				<!--Slide 3-->
				<input class="carousel-open" type="radio" id="carousel-3"
					name="carousel" aria-hidden="true" hidden="">
				<div class="carousel-item absolute opacity-0"
					style="height: fit-content;">
					<div
						class="block h-full w-full bg-black text-white text-5xl text-center">
						<img class="m-auto object-center"
							src="http://webservice-cf.joycityglobal.com/fs1/banner/2021042802062550.png"
							alt="">
					</div>
				</div>
				<label for="carousel-2"
					class="prev control-3 pt-20 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-9xl  font-bold  text-gray-300 hover:text-green-500  leading-tight z-10 inset-y-0 left-0 ">‹</label>
				<label for="carousel-1"
					class="next control-3 pt-20 w-10 h-10 ml-2 md:mr-10 absolute cursor-pointer hidden text-9xl font-bold text-gray-300 hover:text-green-500  leading-tight z-10 inset-y-0 right-0">›</label>
			</div>
		</div>

<!-- 여기부터 작업하세요 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ --> 
<select name="G_TYPE" id="G_TYPE">
	<option value="Role-Playing" >롤플레잉</option>
	<option></option>
	<option></option>
	<option></option>
	<option></option>
</select>
<div class="flex flex-col w-screen min-h-screen p-10 text-gray-800 mb-6">       

	<div class="container bg-grey-lightest mx-auto shadow rounded mt-8 pb-4 h-48 bg-cover" style="background-image: url(./img/game.gif)">  
	</div>

	<!-- Component Start --> 
	<div class="text-indigo-400 font-samibold pt-12 pb-3 pl-4 border-b-4 border-indigo-400"><span class="m-6 text-4xl font-bold">커뮤니티</span></div>  
	<div class="flex flex-col sm:flex-row sm:items-end sm:justify-between mt-4">
		<span class="text-sm font-semibold"></span>
		<button class="relative text-sm focus:outline-none group mt-4 sm:mt-0">
			<div class="flex items-center justify-between w-40 h-10 px-3 border-2 border-gray-300 rounded hover:bg-indigo-300">
				<span class="font-medium">
					게임 장르
				</span>
				<svg class="w-4 h-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
					<path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
				</svg>
			</div>
			<div class="absolute z-10 flex-col items-start hidden w-full pb-1 bg-white shadow-lg rounded group-focus:flex"> 
				<c:forEach begin="0" end="9">
					<a class="w-full px-4 py-2 text-left hover:bg-indigo-200" href="#">${game.G_TYPE}</a> 
				</c:forEach>
			</div>
		</button>
	</div>
	<div class="grid 2xl:grid-cols-5 xl:grid-cols-4 lg:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-x-6 gap-y-12 w-full mt-6"> 
		<!-- Product Tile Start -->  
		<div> 
			<a href="#" class="block h-52">
				<img src="https://cdn.akamai.steamstatic.com/steam/apps/286160/header.jpg?t=1620412025" class="h-52 rounded-lg shadow-lg">
			</a>
			<div class="flex items-center justify-between mt-3">  
				<div>
					<a href="#" class="font-medium">${game.G_NAME }</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">${game.G_CORPORATE_NAME}</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">${G_GRADE}</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div> 
			<a href="#" class="block h-52">
				<img src="https://cdn.akamai.steamstatic.com/steam/apps/646570/header.jpg?t=1592339399" class="h-52 rounded-lg shadow-lg"> 
			</a>
			<div class="flex items-center justify-between mt-3"> 
				<div>
					<a href="#" class="font-medium">피파온라인4</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">Nexson</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">free</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-52"> 
				<img src="https://cdn.akamai.steamstatic.com/steam/apps/286160/header.jpg?t=1620412025" class="h-52 rounded-lg shadow-lg"> 
			</a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">카드라이더</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">Nexson</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">free</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-52">
				<img src="https://cdn.akamai.steamstatic.com/steam/apps/286160/header.jpg?t=1620412025" class="h-52 rounded-lg shadow-lg">
			</a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">크레이지아케이드</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">Nexson</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">free</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-52">
				<img src="https://cdn.akamai.steamstatic.com/steam/apps/286160/header.jpg?t=1620412025" class="h-52 rounded-lg shadow-lg">
			</a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">서든어택</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">Nexson</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">free</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-52">
				<img src="https://cdn.akamai.steamstatic.com/steam/apps/286160/header.jpg?t=1620412025" class="h-52 rounded-lg shadow-lg">
			</a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">Product Name</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">Store Name</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">$34</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-52">
				<img src="https://cdn.akamai.steamstatic.com/steam/apps/286160/header.jpg?t=1620412025" class="h-52 rounded-lg shadow-lg">
			</a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">Product Name</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">Store Name</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">$34</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-52">
				<img src="https://cdn.akamai.steamstatic.com/steam/apps/286160/header.jpg?t=1620412025" class="h-52 rounded-lg shadow-lg">
			</a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">Product Name</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">Store Name</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">$34</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-52">
				<img src="https://cdn.akamai.steamstatic.com/steam/apps/286160/header.jpg?t=1620412025" class="h-52 rounded-lg shadow-lg">
			</a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">Product Name</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">Store Name</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">$34</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-52">
				<img src="https://cdn.akamai.steamstatic.com/steam/apps/286160/header.jpg?t=1620412025" class="h-52 rounded-lg shadow-lg">
			</a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">Product Name</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">Store Name</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">$34</span>
			</div>
		</div>
		<!-- Product Tile End -->
		
	</div>
	<!-- Component End  --> 

</div>


<!--여기까지 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
		
		
	</main>
</body>
</html>
<%@ include file="footer.jsp"%>