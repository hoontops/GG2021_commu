<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정훈 커뮤니티 연습중</title>
<!-- 파비콘.ico-->
<link rel="shortcut icon" href="img/GG_Logo.ico">

<!-- 테일윈드 CDN -->
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet">

<!-- 폰트어썸 CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">

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
	  id="messageModal"
	>
	  <div class="text-sm font-semibold">
		<div class="text-gray-900">
		  공지사항- 뿌뿌뿌뿌
		  <b class="text-purple-500 text-center">
			여기에 커뮤니티 공지사항을 노출</b>
		</div>
	  </div>

	  <div class="mt-3 md:mt-0 md:ml-2">
		<button
		  class="inline-block rounded-md text-lg font-semibold py-2 px-4 text-white bg-purple-500"
		  onclick="window.open('https://google.com')"
		>
		  <i class="fas fa-user"></i> 이벤트게시판?
		</button>
		<button
		  class="inline-block rounded-md text-lg font-semibold py-2 px-4 text-black bg-gray-300"
		  onclick="document.getElementById('messageModal').style.display = 'none'"
		>
		  <i class="fas fa-times"></i>
		</button>
	  </div>
	</div>
</div>
<div class="mt-1 relative mt-4 text-center">
    <label id="listbox-label" class="mb-4 block  font-bold text-gray-700">
    선택하세요
    </label>
    <select class="border border-gray-300 rounded-md text-gray-600 h-10 pl-10 pr-10 bg-white hover:border-green-400 focus:outline-none appearance-none">
        <svg class="-mr-1 ml-2 h-5 w-5  " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
            <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
          </svg>
        <option>장르선택</option>
        <option>City setlement</option>
        <option>Action Rogue_like</option>
        <option>Role-Playing</option>
        <option>Life & Immersive Sims</option>
        <option>Action</option>
        <option>Adventure RPG</option>
        <option>Card board</option>
        <option>Arcade & Rhythm</option>
        <option>Strategy</option>
        <option>Beat Em Up</option>
    </select>
</div>






    

	<!--섹션  -->

	<section class="flex flex-row flex-wrap mx-auto items-center  place-content-center">


		<!-- Card Component -->

		<div
			class="transition-all duration-150 flex w-full px-4 py-6 md:w-1/2 lg:w-1/3">
			<div
				class="flex flex-col items-stretch min-h-full pb-4 mb-6 transition-all duration-150 bg-white rounded-lg shadow-lg hover:shadow-2xl">

				<div class="md:flex-shrink-0">
					<img
						src="https://cdn.akamai.steamstatic.com/steam/apps/1328670/capsule_184x69.jpg"
						alt="Blog Cover"
						class="object-cover w-full rounded-lg rounded-b-none md:h-56" />
				</div>
				<div
					class="flex items-center justify-between px-4 py-2 overflow-hidden">
					<span class="text-xs font-medium text-blue-600 uppercase">
						Web Programming </span>
					<div class="flex flex-row items-center">
						<div
							class="text-xs font-medium text-gray-500 flex flex-row items-center mr-2">
							<svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor"
								viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
              <path stroke-linecap="round" stroke-linejoin="round"
									stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
              <path stroke-linecap="round" stroke-linejoin="round"
									stroke-width="2"
									d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
            </svg>
							<span>1.5k</span>
						</div>

						<div
							class="text-xs font-medium text-gray-500 flex flex-row items-center mr-2">
							<svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor"
								viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
              <path stroke-linecap="round" stroke-linejoin="round"
									stroke-width="2"
									d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z"></path>
            </svg>
							<span>25</span>
						</div>

						<div
							class="text-xs font-medium text-gray-500 flex flex-row items-center">
							<svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor"
								viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
              <path stroke-linecap="round" stroke-linejoin="round"
									stroke-width="2"
									d="M14 10h4.764a2 2 0 011.789 2.894l-3.5 7A2 2 0 0115.263 21h-4.017c-.163 0-.326-.02-.485-.06L7 20m7-10V5a2 2 0 00-2-2h-.095c-.5 0-.905.405-.905.905 0 .714-.211 1.412-.608 2.006L7 11v9m7-10h-2M7 20H5a2 2 0 01-2-2v-6a2 2 0 012-2h2.5"></path>
            </svg>
							<span>7</span>
						</div>
					</div>
				</div>
				<hr class="border-gray-300" />
				<div
					class="flex flex-wrap items-center flex-1 px-4 py-1 text-center mx-auto">
					<a href="#" class="hover:underline">
						<h2 class="text-2xl font-bold tracking-normal text-gray-800">
							제목</h2>
					</a>
				</div>
				<hr class="border-gray-300" />
				<p
					class="flex flex-row flex-wrap w-full px-4 py-2 overflow-hidden text-sm text-justify text-gray-700">
					내용시작 해서 <br> Lorem ipsum dolor sit amet consectetur
					adipisicing elit. Alias, magni fugiat, odit incidunt necessitatibus
					aut nesciunt exercitationem aliquam id voluptatibus quisquam
					maiores officia sit amet accusantium aliquid quo obcaecati quasi.
				</p>
				<hr class="border-gray-300" />
				<section class="px-4 py-2 mt-2">
					<div class="flex items-center justify-between">
						<div class="flex items-center flex-1">
							<img class="object-cover h-10 rounded-full"
								src="https://thumbs.dreamstime.com/b/default-avatar-photo-placeholder-profile-icon-eps-file-easy-to-edit-default-avatar-photo-placeholder-profile-icon-124557887.jpg"
								alt="Avatar" />
							<div class="flex flex-col mx-2">
								<a href="" class="font-semibold text-gray-700 hover:underline">
									Fajrian Aidil Pratama </a> <span class="mx-1 text-xs text-gray-600">28
									Sep 2020</span>
							</div>
						</div>
						<p class="mt-1 text-xs text-gray-600">9 minutes read</p>
					</div>
				</section>
			</div>
		</div>

        
		<div
        class="transition-all duration-150 flex w-full px-4 py-6 md:w-1/2 lg:w-1/3">
        <div
            class="flex flex-col items-stretch min-h-full pb-4 mb-6 transition-all duration-150 bg-white rounded-lg shadow-lg hover:shadow-2xl">

            <div class="md:flex-shrink-0">
                <img
                    src="https://cdn.akamai.steamstatic.com/steam/apps/1328670/capsule_184x69.jpg"
                    alt="Blog Cover"
                    class="object-cover w-full rounded-lg rounded-b-none md:h-56" />
            </div>
            <div
                class="flex items-center justify-between px-4 py-2 overflow-hidden">
                <span class="text-xs font-medium text-blue-600 uppercase">
                    Web Programming </span>
                <div class="flex flex-row items-center">
                    <div
                        class="text-xs font-medium text-gray-500 flex flex-row items-center mr-2">
                        <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor"
                            viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round"
                                stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
          <path stroke-linecap="round" stroke-linejoin="round"
                                stroke-width="2"
                                d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
        </svg>
                        <span>1.5k</span>
                    </div>

                    <div
                        class="text-xs font-medium text-gray-500 flex flex-row items-center mr-2">
                        <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor"
                            viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round"
                                stroke-width="2"
                                d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z"></path>
        </svg>
                        <span>25</span>
                    </div>

                    <div
                        class="text-xs font-medium text-gray-500 flex flex-row items-center">
                        <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor"
                            viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round"
                                stroke-width="2"
                                d="M14 10h4.764a2 2 0 011.789 2.894l-3.5 7A2 2 0 0115.263 21h-4.017c-.163 0-.326-.02-.485-.06L7 20m7-10V5a2 2 0 00-2-2h-.095c-.5 0-.905.405-.905.905 0 .714-.211 1.412-.608 2.006L7 11v9m7-10h-2M7 20H5a2 2 0 01-2-2v-6a2 2 0 012-2h2.5"></path>
        </svg>
                        <span>7</span>
                    </div>
                </div>
            </div>
            <hr class="border-gray-300" />
            <div
                class="flex flex-wrap items-center flex-1 px-4 py-1 text-center mx-auto">
                <a href="#" class="hover:underline">
                    <h2 class="text-2xl font-bold tracking-normal text-gray-800">
                        제목</h2>
                </a>
            </div>
            <hr class="border-gray-300" />
            <p
                class="flex flex-row flex-wrap w-full px-4 py-2 overflow-hidden text-sm text-justify text-gray-700">
                내용시작 해서 <br> Lorem ipsum dolor sit amet consectetur
                adipisicing elit. Alias, magni fugiat, odit incidunt necessitatibus
                aut nesciunt exercitationem aliquam id voluptatibus quisquam
                maiores officia sit amet accusantium aliquid quo obcaecati quasi.
            </p>
            <hr class="border-gray-300" />
            <section class="px-4 py-2 mt-2">
                <div class="flex items-center justify-between">
                    <div class="flex items-center flex-1">
                        <img class="object-cover h-10 rounded-full"
                            src="https://thumbs.dreamstime.com/b/default-avatar-photo-placeholder-profile-icon-eps-file-easy-to-edit-default-avatar-photo-placeholder-profile-icon-124557887.jpg"
                            alt="Avatar" />
                        <div class="flex flex-col mx-2">
                            <a href="" class="font-semibold text-gray-700 hover:underline">
                                Fajrian Aidil Pratama </a> <span class="mx-1 text-xs text-gray-600">28
                                Sep 2020</span>
                        </div>
                    </div>
                    <p class="mt-1 text-xs text-gray-600">9 minutes read</p>
                </div>
            </section>
        </div>
    </div>


    <div
    class="transition-all duration-150 flex w-full px-4 py-6 md:w-1/2 lg:w-1/3">
    <div
        class="flex flex-col items-stretch min-h-full pb-4 mb-6 transition-all duration-150 bg-white rounded-lg shadow-lg hover:shadow-2xl">

        <div class="md:flex-shrink-0">
            <img
                src="https://cdn.akamai.steamstatic.com/steam/apps/1328670/capsule_184x69.jpg"
                alt="Blog Cover"
                class="object-cover w-full rounded-lg rounded-b-none md:h-56" />
        </div>
        <div
            class="flex items-center justify-between px-4 py-2 overflow-hidden">
            <span class="text-xs font-medium text-blue-600 uppercase">
                Web Programming </span>
            <div class="flex flex-row items-center">
                <div
                    class="text-xs font-medium text-gray-500 flex flex-row items-center mr-2">
                    <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor"
                        viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path stroke-linecap="round" stroke-linejoin="round"
                            stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
      <path stroke-linecap="round" stroke-linejoin="round"
                            stroke-width="2"
                            d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
    </svg>
                    <span>1.5k</span>
                </div>

                <div
                    class="text-xs font-medium text-gray-500 flex flex-row items-center mr-2">
                    <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor"
                        viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path stroke-linecap="round" stroke-linejoin="round"
                            stroke-width="2"
                            d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z"></path>
    </svg>
                    <span>25</span>
                </div>

                <div
                    class="text-xs font-medium text-gray-500 flex flex-row items-center">
                    <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor"
                        viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path stroke-linecap="round" stroke-linejoin="round"
                            stroke-width="2"
                            d="M14 10h4.764a2 2 0 011.789 2.894l-3.5 7A2 2 0 0115.263 21h-4.017c-.163 0-.326-.02-.485-.06L7 20m7-10V5a2 2 0 00-2-2h-.095c-.5 0-.905.405-.905.905 0 .714-.211 1.412-.608 2.006L7 11v9m7-10h-2M7 20H5a2 2 0 01-2-2v-6a2 2 0 012-2h2.5"></path>
    </svg>
                    <span>7</span>
                </div>
            </div>
        </div>
        <hr class="border-gray-300" />
        <div
            class="flex flex-wrap items-center flex-1 px-4 py-1 text-center mx-auto">
            <a href="#" class="hover:underline">
                <h2 class="text-2xl font-bold tracking-normal text-gray-800">
                    제목</h2>
            </a>
        </div>
        <hr class="border-gray-300" />
        <p
            class="flex flex-row flex-wrap w-full px-4 py-2 overflow-hidden text-sm text-justify text-gray-700">
            내용시작 해서 <br> Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Alias, magni fugiat, odit incidunt necessitatibus
            aut nesciunt exercitationem aliquam id voluptatibus quisquam
            maiores officia sit amet accusantium aliquid quo obcaecati quasi.
        </p>
        <hr class="border-gray-300" />
        <section class="px-4 py-2 mt-2">
            <div class="flex items-center justify-between">
                <div class="flex items-center flex-1">
                    <img class="object-cover h-10 rounded-full"
                        src="https://thumbs.dreamstime.com/b/default-avatar-photo-placeholder-profile-icon-eps-file-easy-to-edit-default-avatar-photo-placeholder-profile-icon-124557887.jpg"
                        alt="Avatar" />
                    <div class="flex flex-col mx-2">
                        <a href="" class="font-semibold text-gray-700 hover:underline">
                            Fajrian Aidil Pratama </a> <span class="mx-1 text-xs text-gray-600">28
                            Sep 2020</span>
                    </div>
                </div>
                <p class="mt-1 text-xs text-gray-600">9 minutes read</p>
            </div>
        </section>
    </div>
</div>
</section>

<div class="w-full">
	<section class="flex">
		<div class="px-4">
			<div
				class=" flex flex-col items-stretch  mx-2 bg-white rounded-xl shadow-md overflow-hidden">
				<div class="md:flex">
					<div class="md:flex-shrink-0">
						<img class="h-48 w-full object-cover md:h-full md:w-48"
							src="https://cdn.akamai.steamstatic.com/steam/apps/1259420/header.jpg?t=1620324263" alt="Man looking at item at a store">
					</div>
					<div class="p-8">
						<div
							class="uppercase tracking-wide text-sm text-indigo-500 font-semibold">Case
							study</div>
						<a href="#"
							class="block mt-1 text-lg leading-tight font-medium text-black hover:underline">Finding
							customers for your new business</a>
						<p class="mt-2 text-gray-500">Getting a new business off the
							ground is a lot of hard work. Here are five ideas you can use to
							find your first customers.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="px-4">
			<div
				class=" flex flex-col-reverse items-stretch  mx-2 bg-white rounded-xl shadow-md overflow-hidden">
				<div class="md:flex">
					<div class="md:flex-shrink-0">
						<img class="h-48 w-full object-cover md:h-full md:w-48"
							src="https://cdn.akamai.steamstatic.com/steam/apps/1259420/header.jpg?t=1620324263" alt="Man looking at item at a store">
					</div>
					<div class="p-8">
						<div
							class="uppercase tracking-wide text-sm text-indigo-500 font-semibold">Case
							study</div>
						<a href="#"
							class="block mt-1 text-lg leading-tight font-medium text-black hover:underline">Finding
							customers for your new business</a>
						<p class="mt-2 text-gray-500">Getting a new business off the
							ground is a lot of hard work. Here are five ideas you can use to
							find your first customers.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>

<div class="w-full sm:min-h-full md:min-h-full lg\:max-h-full xl:max-h-full ">
			<div class="flex flex-col lg:grid lg:gap-4 2xl:gap-6 lg:grid-cols-4 2xl:row-span-2 2xl:pb-8 ml-2 pt-4 px-4">
			  <!-- Beginning of the component about Daniel Clifford -->
			  <div class="bg-indigo-600 lg:order-1 lg:row-span-1 2xl:row-span-1 lg:col-span-2 rounded-lg shadow-xl mb-5 lg:mb-0">
				<div class="mx-4 my-8 2xl:mx-10">
				  <img class="w-70 sm:w-full md:w-full lg:w-full 2xl:w-full h-30 md:h-30 lg:h-30 2xl:h-30 rounded-b border-2 ml-1 md:-mt-1 2xl:-mt-4" src="https://images.pexels.com/photos/3775534/pexels-photo-3775534.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" />
				  <h1 class="text-white text-xs md:text-base text-right 2xl:text-2xl pl-32 font-bold lg:pl-36 2xl:pl-50 -mt-8 md:-mt-10 lg:-mt-11 2xl:-mt-20 2xl:mx-8 ">Daniel Clifford</h1>
				  <h2 class="text-white text-opacity-70 text-xs text-right md:text-base 2xl:text-2xl font-bold ">Verified Graduate</h2>
				</div>
				<div class="-mt-6 relative">
				  <p class="text-white text-xl 2xl:text-4xl font-bold px-7 lg:px-9 2xl:pt-6 2xl:mx-2">I received a job offer mid-course, and the subjects I learned were current, if not more so, in the company I joined. I honestly feel I got every penny’s worth.</p>
				  <br />
				  <p class="text-white text-opacity-50 font-medium md:text-sm 2xl:text-3xl px-7 lg:px-9 mb-3 2xl:pb-8 2xl:mx-2">“ I was an EMT for many years before I joined the bootcamp. I’ve been looking to make a transition and have heard some people who had an amazing experience here. I signed up for the free intro course and found it incredibly fun! I enrolled shortly thereafter. The next 12 weeks was the best - and most grueling - time of my life. Since completing the course, I’ve successfully switched careers, working as a Software Engineer at a VR startup. ”</p>
				</div>
			  </div>
			  <!-- Ending of the component about Daniel Clifford -->
	  
			  <!-- Beginning of the component about Jonathan Walters -->
			  <div class="bg-gray-900 lg:order-2 lg:row-span-1 2xl:row-span-1 lg:col-span-1 rounded-lg shadow-xl pb-4 mb-5 lg:mb-0">
				<div class="mx-8 2xl:mx-10 my-10">
				  <img class="w-full md:w-full 2xl:w-full h-auto md:h-70 2xl:h-70 rounded-b border-2 -ml-1 -mt-2 lg:-mt-4" src="https://images.pexels.com/photos/634021/pexels-photo-634021.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" />
				  <h1 class="text-white text-xs md:text-base 2xl:text-2xl text-right font-bold pl-11 md:pl-12 2xl:pl-24 -mt-8 md:-mt-10 2xl:-mt-16">Jonathan Walters</h1>
				  <h2 class="text-white text-xs md:text-base 2xl:text-2xl text-right text-opacity-80 font-bold pl-11 md:pl-12 2xl:pl-24">Verified Graduate</h2>
				</div>
				<div class="-mt-8 mx-1 lg:mx-2">
				  <p class="text-white text-lg lg:text-xl 2xl:text-4xl font-semibold pt-1 px-6 2xl:px-8 lg:pl-5 lg:pr-8">The team was very supportive and kept me motivated</p>
				  <br />
				  <p class="text-white text-opacity-50 font-medium md:text-sm 2xl:text-3xl pl-6 lg:pl-5 pr-4 -mt-1 lg:mt-6 2xl:mt-2 2xl:px-8">“ 내가 말이야 예전에 말이야I started as a total newbie with virtually no coding skills. I now work as a mobile engineer for a big company. This was one of the best investments I’ve made in myself. ”</p>
				</div>
			  </div>
			  <!-- Ending of the component about Jonathan Walters -->
	  
			  <!-- Beginning of the component about Jeanette Harmon -->
			  <div class="bg-primary-color-white lg:order-3 lg:row-span-2 2xl:row-span-1 lg:col-span-1 rounded-lg shadow-xl mb-5 lg:mb-0 2xl:mb-8">
				<div class="mx-8 my-10 lg:my-8">
				  <img class="w-full md:w-full lg:w-full 2xl:w-full h-70 md:h-70 lg:h-70 2xl:h-70 rounded-b border-1 -mt-2 -ml-1 lg:-ml-0" src="https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" />
				  <h1 class="text-white text-xs md:text-base 2xl:text-2xl text-right 2xl:text-2xl pl-11 md:pl-12 lg:pl-14 2xl:pl-24 -mt-8 md:-mt-10 lg:-mt-11 2xl:-mt-16">Jeanette Harmon</h1>
				  <h2 class="text-white text-xs md:text-base 2xl:text-2xl text-right 2xl:text-2xl pl-11 md:pl-12 lg:pl-14 2xl:pl-24">Verified Graduate</h2>
				</div>
				<div class="-mt-4 ml-5 mr-11">
				  <p class="primary-color-blackish-blue text-xl 2xl:text-4xl font-bold px-2 lg:px-3 -mt-6 lg:-mt-5 2xl:mt-12 2xl:pb-6">An overall wonderful and rewarding experience</p>
				  <br />
				  <p class="primary-color-blackish-blue-opacity font-medium md:text-sm 2xl:text-3xl pl-2 lg:pl-3 lg:pr-4 mb-6 2xl:pt-2 -mt-3">“ Thank you for the wonderful experience! I now have a job I really enjoy, and make a good living while doing something I love. ”</p>
				</div>
			  </div>
			  <!-- Ending of the component about Jeanette Harmon -->
	  
			  <!-- Beginning of the component about Patrick Abrams -->
			  <div class="bg-purple-800 lg:order-4 lg:row-span-2 2xl:row-span-1 col-span-2 rounded-lg shadow-xl mb-5 lg:mb-0 2xl:mb-8 lg:pb-14 2xl:pb-20">
				<div class="mx-8 my-8">
				  <img class="w-full md:w-full lg:w-full 2xl:w-full h-70 md:h-70 lg:h-70 2xl:h-70 rounded-bl border-2 lg:-mt-3" src="https://images.pexels.com/photos/3778603/pexels-photo-3778603.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" />
				  <h1 class="text-white text-xs text-right md:text-base 2xl:text-2xl pl-12 md:pl-14 2xl:pl-24 -mt-8 md:-mt-10 lg:-mt-11 2xl:-mt-16">Patrick Abrams</h1>
				  <h2 class="text-white text-xs text-right md:text-base 2xl:text-2xl text-opacity-50 pl-12 md:pl-14 2xl:pl-24">Verified Graduate</h2>
				</div>
				<div class="px-3 -mt-3 mb-5 lg:mb-0">
				  <p class="text-white text-lg 2xl:text-4xl font-semibold px-4 -mt-3 lg:-mt-6 2xl:mt-8">Awesome teaching support from TAs who did the bootcamp themselves. Getting guidance from them and learning from their experiences was easy.</p>
				  <br />
				  <p class="text-white text-opacity-50 font-medium md:text-sm 2xl:text-3xl px-4 mt-1 lg:-mt-3 2xl:mt-6">“ The staff seem genuinely concerned about my progress which I find really refreshing. The program gave me the confidence necessary to be able to go out in the world and present myself as a capable junior developer. The standard is above the rest. You will get the personal attention you need from an incredible community of lgart and amazing people. ”</p>
				</div>
			  </div>
			  <!-- Ending of the component about Patrick Abrams -->
	  
			  <!-- Beginning of the component about Kira Whittle -->
			  <div class="bg-primary-color-white lg:order-2 lg:row-span-1 lg:col-span-1 rounded-lg shadow-xl mb-5 lg:pb-4 2xl:h-screen">
				<div class="mx-8 my-8 lg:pl-1">
				  <img class="w-full md:w-full lg:w-full 2xl:w-full h-70 md:h-70 lg:h-70 2xl:h-70 rounded-bl border-2 lg:-mt-4 -ml-1 lg:-ml-4" src="https://images.pexels.com/photos/3762804/pexels-photo-3762804.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" />
				  <h1 class="text-white text-xs text-right md:text-base font-bold 2xl:text-2xl pl-10 md:pl-12 2xl:pl-24 -mt-8 md:-mt-10 lg:-mt-12 2xl:-mt-16">Kira Whittle</h1>
				  <h2 class="text-white text-xs text-right md:text-base font-bold 2xl:text-2xl pl-10 md:pl-12 2xl:pl-24">Verified Graduate</h2>
				</div>
				<div class="px-3 lg:px-5 lg:-mt-4 mb-5 lg:mb-0">
				  <p class="primary-color-blackish-blue text-xl 2xl:text-4xl font-semibold px-4 lg:px-0 -mt-2 lg:-mt-0">Such a life-changing experience. Highly recommended!</p>
				  <br />
				  <p class="primary-color-blackish-blue-opacity font-medium md:text-sm 2xl:text-3xl px-4 lg:px-0 2xl:px-4 lg:pr-3 mt-2 lg:-mt-1 2xl:mt-2 2xl:pb-64">“ Before joining the bootcamp, I’ve never written a line of code. I needed some structure from professionals who can help me learn programming step by step. wonderful things about the program. The entire curriculum and staff did not disappoint. They were very hands-on and I never had to wait long for assistance. The agile team project, in particular, was outstanding. It took my learning to the next level in a way that no tutorial could ever have. In fact, I’ve often referred to it during interviews as an example of my developent experience. It certainly helped me land a job as a full-stack developer after receiving multiple offers. 100% recommend! ”</p>
				</div>
			  </div>
			  <!-- Ending of the component about Kira Whittle -->

              <div class="bg-gray-900 lg:order-2 lg:row-span-1 2xl:row-span-1 lg:col-span-1 rounded-lg shadow-xl pb-4 mb-5 lg:mb-0">
				<div class="mx-8 2xl:mx-10 my-10">
				  <img class="w-full md:w-full 2xl:w-full h-70 md:h-80 2xl:h-80 rounded-b border-2 -ml-1 -mt-2 lg:-mt-4" src="https://cdn.akamai.steamstatic.com/steam/apps/1413480/header.jpg?t=1621914887" />
				  <h1 class="text-white text-xs md:text-base 2xl:text-2xl text-right font-bold pl-11 md:pl-12 2xl:pl-24 -mt-8 md:-mt-10 2xl:-mt-16">Jonathan Walters</h1>
				  <h2 class="text-white text-xs md:text-base 2xl:text-2xl text-right text-opacity-80 font-bold pl-11 md:pl-12 2xl:pl-24">Verified Graduate</h2>
				</div>
				<div class="-mt-8 mx-1 lg:mx-2">
				  <p class="text-white text-lg lg:text-xl 2xl:text-4xl font-semibold pt-1 px-6 2xl:px-8 lg:pl-5 lg:pr-8">The team was very supportive and kept me motivated</p>
				  <br />
				  <p class="text-white text-opacity-50 font-medium md:text-sm 2xl:text-3xl pl-6 lg:pl-5 pr-4 -mt-1 lg:mt-6 2xl:mt-2 2xl:px-8">“ 내가 말이야 예전에 말이야I started as a total newbie with virtually no coding skills. I now work as a mobile engineer for a big company. This was one of the best investments I’ve made in myself. ”</p>
				</div>
			  </div>
      </div>
      
 <div class="w-full justify-self-center">
        <div class="sm:grid grid-cols-10 md:grid-cols-10 ">
            <div class="col-start-2 col-span-2 my-2">
                <a href="#">
                    <div
                        class="h-14 p-3 dark:bg-gray-800 bg-white hover:shadow-xl rounded border-b-4 border-purple-300 shadow-md">
                        <h3 class="text-lg mb-3 font-semibold inline-flex">
                            <svg class="mr-2" width="24" height="30" viewBox="0 0 24 24" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M1.02698 11.9929L5.26242 16.2426L6.67902 14.8308L4.85766 13.0033L22.9731 13.0012L22.9728 11.0012L4.85309 11.0033L6.6886 9.17398L5.27677 7.75739L1.02698 11.9929Z"
                                    fill="currentColor" /></svg>
                            이전 페이지
                        </h3>
                        <p class="text-lg"></p>
                    </div>
                </a>
            </div>
            <div class="col-start-8 col-span-2 my-2 ">
                <a href="#">
                    <div
                        class="h-14 p-3 dark:bg-gray-800 bg-white hover:shadow-xl rounded border-b-4  border-purple-300 shadow-md text-right">
                        <h3 class="text-lg mb-3 font-semibold inline-flex ">
                            다음 페이지
                            <svg class="ml-2" width="24" height="30" viewBox="0 0 24 24" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M23.0677 11.9929L18.818 7.75739L17.4061 9.17398L19.2415 11.0032L0.932469 11.0012L0.932251 13.0012L19.2369 13.0032L17.4155 14.8308L18.8321 16.2426L23.0677 11.9929Z"
                                    fill="currentColor" /></svg>
                        </h3>
                        <p class="text-lg"></p>
                    </div>
                </a>
            </div>
        </div>
    </div>

 </div>	
         
</body>
</html>    
<%@ include file="../main/footer.jsp"%>