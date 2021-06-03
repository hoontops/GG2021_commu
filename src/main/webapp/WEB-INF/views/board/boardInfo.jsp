<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function() {

		$("#tile").load("tile.do?state=Action");

		$("#sel").change(function() {
			var sel = $("#sel").val()

			$.post("tiler.do", {
				"state" : sel
			}, function(data) {
				$("#tile").html(data);
			});
		});

	});
</script>
</head>
<body>

	<main>
		<!-- slider-->
		<div id="top_slide" class="carousel relative shadow-xl bg-white">
			<div class="carousel-inner relative overflow-hidden w-full">
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
				<!-- 
				Slide 2 -->
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

				<!-- Slide 3 -->
				<input class="carousel-open" type="radio" id="carousel-3"
					name="carousel" aria-hidden="true" hidden="">
				<div class="carousel-item absolute opacity-0"
					style="height: fit-content;">
					<div
						class="block h-full w-full bg-black text-white text-5xl text-center">
						<img class="m-auto object-center"
							src="https://cdn.akamai.steamstatic.com/steam/apps/1196590/capsule_184x69.jpg"
							alt="">
					</div>
				</div>
				<label for="carousel-2"
					class="prev control-3 pt-20 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-9xl  font-bold  text-gray-300 hover:text-green-500  leading-tight z-10 inset-y-0 left-0 ">‹</label>
				<label for="carousel-1"
					class="next control-3 pt-20 w-10 h-10 ml-2 md:mr-10 absolute cursor-pointer hidden text-9xl font-bold text-gray-300 hover:text-green-500  leading-tight z-10 inset-y-0 right-0">›</label>
			</div>
		</div>
	</main>

	<!-- 메인중앙시작? -->
	<div>
		<div
			class="text-center flex flex-col p-1 md:text-left md:flex-row md:items-center md:justify-between md:p-4 bg-indigo-200"
			id="messageModal">
			<div class="text-sm font-semibold h-5">
				<div class="text-gray-900">
					<b class="text-purple-500  text-center"> </b>
				</div>
			</div>
		</div>
	</div>
	<div class="mt-1 relative mt-4 text-center">

		<select id="sel"
			class="border border-gray-300 rounded-md text-gray-600 h-10 pl-10 pr-10 bg-white hover:border-green-400 focus:outline-none appearance-none">
			<svg class="-mr-1 ml-2 h-5 w-5  " xmlns="http://www.w3.org/2000/svg"
				viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
            <path fill-rule="evenodd"
					d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
					clip-rule="evenodd" />
          </svg>
			<option value="Action">NEWS ▼</option>
			<option value="Beat_Em_Up">어드벤처</option>
			<option value="City_setlement">도시건설</option>
			<option value="Role-Playing">롤플레잉</option>
			<option value="Action">액션</option>
			<option value="Action_Rogue_like">로그라이크</option>
			<option value="Card_board">카드보드</option>
			<option value="Strategy">전략</option>
			<option value="sport">스포츠</option>
			<option value="Arcade_and_Rhythm">아케이드&리듬</option>
		</select>
	</div>
	<div id="tile"></div>

</body>
</html>
<%@ include file="../main/footer.jsp"%>