<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/storecontent.css" />
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<title>Insert title here</title>
 <script>
 $("input[name='game_type']:radio").change(function () {
     //라디오 버튼 값을 가져온다.
     var noticeCat = this.value;
                     
     alert(noticeCat);            
});

        </script>
</head>
<body>
	<div class="sub_tit_wrap">
		<div class="sub_tit_inner" style="width: 1350px;">
			<ul class="smap">
				<li>
					<a href="main.do">
						<img src="https://image.istarbucks.co.kr/common/img/common/icon_home.png" alt="홈으로">
					</a>
				</li>
				<li>
					<img class="arrow" src="https://image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴">
				</li>
				<li>
					<a href="recommend.do" class="this">게임</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="content" style="padding-bottom: 0px;width: 1400px;">
		<!-- 분류 보기 -->
		<div class="product_kind_wrap">
			<p class="tit">게임</p>
			<div class="product_kind_btn">
				<a href="">
					<img src="https://image.istarbucks.co.kr/common/img/menu/list_up_btn.png" alt="분류보기 메뉴 접기">
				</a>
			</div>
			<div class="product_toggle_wrap">
				<dl class="product_kind_tab">
					<dt class="dt1">
						<h1>장르별로 게임을 알아보자!!</h1>
					</dt>
					<dd style="display: block;">	<!--dt2일때 none으로 바뀜 -->
						<div class="product_select_wrap">
								<fieldset>
									<legend class="hid">상품 카테고리 별 분류 보기</legend>
									<span class="flex items-center h-6 px-3 text-xs font-semibold text-pink-500 bg-pink-100 rounded-full" style="width: 75px;">게임장르</span>
									<ul id="sel" class="cate_list mCustomScrollbar _mCS_1 mCS_no_scrollbar">
										<div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0">
											<div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
												<li>
													<input style="vertical-align:middle;" type="radio" name="game_type" id="Action" value="Action" checked="checked">
													<label for="Action">Action</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="radio" name="game_type" value="Action Rogue_like" id="Action Rogue_like">
													<label for="Action Rogue_like">Action Rogue_like</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="radio" name="game_type" value="Adventure RPG" id="Adventure RPG">
													<label for="Adventure RPG">Adventure RPG</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="radio" name="game_type" value="Arcade and Rhythm" id="Arcade and Rhythm">
													<label for="Arcade and Rhythm">Arcade and Rhythm</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="radio" name="game_type" value="Beat Em Up" id="Beat Em Up">
													<label for="Beat Em Up">Beat Em Up</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="radio" name="game_type" value="Card board" id="Card board">
													<label for="Card board">Card board</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="radio" name="game_type" value="City setlement" id="City setlement">
													<label for="City setlement">City setlement</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="radio" name="game_type" value="Life & Immersive Sims" id="Life & Immersive Sims">
													<label for="Life & Immersive Sims">Life & Immersive Sims</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="radio" name="game_type" value="Role-Playing" id="Role-Playing">
													<label for="Role-Playing">Role-Playing</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="radio" name="game_type" value="Strategy" id="Strategy">
													<label for="Strategy">Strategy</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="radio" name="game_type" value="sport" id="sport">
													<label for="sport">sport</label>
												</li>
											</div>
										</div>
									</ul>
								</fieldset>
						</div>
					</dd>
				</dl>
			</div>
		</div>
		</div>
		<div class="flex flex-col w-screen min-h-screen p-10 text-gray-800">
	<!-- Component Start -->
	<div class="grid 2xl:grid-cols-4 xl:grid-cols-4 lg:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-x-6 gap-y-12 w-fullmt-6 ">
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-64 rounded-lg shadow-lg bg-white"></a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">게임이름</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">회사이름</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">가격</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-64 rounded-lg shadow-lg bg-white"></a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">게임이름</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">회사이름</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">가격</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-64 rounded-lg shadow-lg bg-white"></a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">게임이름</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">회사이름</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">가격</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-64 rounded-lg shadow-lg bg-white"></a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">게임이름</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">회사이름</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">가격</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-64 rounded-lg shadow-lg bg-white"></a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">게임이름</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">회사이름</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">가격</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-64 rounded-lg shadow-lg bg-white"></a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">게임이름</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">회사이름</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">가격</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-64 rounded-lg shadow-lg bg-white"></a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">게임이름</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">회사이름</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">가격</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-64 rounded-lg shadow-lg bg-white"></a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">게임이름</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">회사이름</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">가격</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-64 rounded-lg shadow-lg bg-white"></a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">게임이름</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">회사이름</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">가격</span>
			</div>
		</div>
		<!-- Product Tile End -->
		<!-- Product Tile Start -->
		<div>
			<a href="#" class="block h-64 rounded-lg shadow-lg bg-white"></a>
			<div class="flex items-center justify-between mt-3">
				<div>
					<a href="#" class="font-medium">게임이름</a>
					<a class="flex items-center" href="#">
						<span class="text-xs font-medium text-gray-600">by</span>
						<span class="text-xs font-medium ml-1 text-indigo-500">회사이름</span>
					</a>
				</div>
				<span class="flex items-center h-8 bg-indigo-200 text-indigo-600 text-sm px-2 rounded">가격</span>
			</div>
		</div>
		<!-- Product Tile End -->
	</div>
	<!-- Component End  -->
</div>
</body>
</html>
