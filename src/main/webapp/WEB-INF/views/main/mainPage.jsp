<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<script
	src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js"
	defer></script>
<style>
@import
	url(https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.min.css)
	;
</style>
<script src="js/todo.js"></script>
<script type="module" src="https://cdn.skypack.dev/twind/shim"></script>

<style>
.component {
	font-family: "Helvetica Neue", "Helvetica", Helvetica, Arial, sans-serif;
}

blockquote {
	background: linear-gradient(to right, #039be5 6px, transparent 4px) 0
		100%, linear-gradient(to left, #039be5 6px, transparent 4px) 100% 0,
		linear-gradient(to bottom, #039be5 6px, transparent 4px) 100% 0,
		linear-gradient(to top, #039be5 6px, transparent 4px) 0 100%;
	background-repeat: no-repeat;
	background-size: 20px 20px;
}

/* -- create the quotation marks -- */
blockquote:before, blockquote:after {
	font-family: FontAwesome;
	position: absolute;
	color: #039be5;
	font-size: 34px;
}

blockquote:before {
	content: "\f10d";
	top: -12px;
	margin-right: -20px;
	right: 100%;
}

blockquote:after {
	content: "\f10e";
	margin-left: -20px;
	left: 100%;
	top: auto;
	bottom: -20px;
}

.group:focus .group-focus\:flex {
	display: flex;
}

.invalid-feedback, .empty-feedback {
	display: none;
}

.was-validated :placeholder-shown:invalid ~ .empty-feedback {
	display: block;
}

.was-validated :not(:placeholder-shown):invalid ~ .invalid-feedback {
	display: block;
}

.is-invalid, .was-validated :invalid {
	border-color: #dc3545;
}

.is-invalid, .was-validated :invalid:focus { -
	-tw-ring-color: rgba(220, 53, 69, 0.2);
}
</style>
<script>


(function () {
    "use strict";
    /*
     * Form Validation
     */

    // Fetch all the forms we want to apply custom validation styles to
    const forms = document.querySelectorAll(".needs-validation");
    const result = document.getElementById("result");
    // Loop over them and prevent submission
    Array.prototype.slice.call(forms).forEach(function (form) {
      form.addEventListener(
        "submit",
        function (event) {
          if (!form.checkValidity()) {
            event.preventDefault();
            event.stopPropagation();

            form.querySelectorAll(":invalid")[0].focus();
          } else {
            /*
             * Form Submission using fetch()
             */

            const formData = new FormData(form);
            event.preventDefault();
            event.stopPropagation();
            const object = {};
            formData.forEach((value, key) => {
              object[key] = value;
            });
            const json = JSON.stringify(object);
            result.innerHTML = "Please wait...";

            fetch("https://api.web3forms.com/submit", {
              method: "POST",
              headers: {
                "Content-Type": "application/json",
                Accept: "application/json"
              },
              body: json
            })
              .then(async (response) => {
                let json = await response.json();
                if (response.status == 200) {
                  result.innerHTML = json.message;
                  result.classList.remove("text-gray-500");
                  result.classList.add("text-green-500");
                } else {
                  console.log(response);
                  result.innerHTML = json.message;
                  result.classList.remove("text-gray-500");
                  result.classList.add("text-red-500");
                }
              })
              .catch((error) => {
                console.log(error);
                result.innerHTML = "Something went wrong!";
              })
              .then(function () {
                form.reset();
                form.classList.remove("was-validated");
                setTimeout(() => {
                  result.style.display = "none";
                }, 5000);
              });
          }
          form.classList.add("was-validated");
        },
        false
      );
    });
  })();
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
							src="${link }?autoplay=1&mute=1"
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
	</main>
	<!-- 여기부터 작업하세요 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->


	<div class="flex items-center justify-center p-2">
            <div class="w-full flex-center">
	                <h1 class="text-black text-lg font-bold mb-3">Famous & Hot Game's</h1>
	                
	                <div class="grid grid-cols-2 sm:grid-cols-2 md:grid-cols-4 lg:grid-cols-6 xl:grid-cols-6 gap-6">
	                  
	                  
	              <div class="cursor-pointer block p-1 rounded-md transition-colors hover:bg-gray-50 hover:bg-opacity-30">
	                  <div class="bg-white rounded-md mb-2 flex justify-center items-center">
	                    <a href="https://store.steampowered.com/app/578080/PLAYERUNKNOWNS_BATTLEGROUNDS/" target="_blank">
	                    <img class="h-30 " src="data:image/jpeg;base64,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" alt="PUBG">
	                </div>
	                <p class="text-center font-bold">PUBG</p>
	            </div></a>
	         
	         
	            <div class="cursor-pointer block p-1 rounded-md transition-colors hover:bg-gray-50 hover:bg-opacity-30">
	              <a href="https://store.steampowered.com/app/597820/BIOMUTANT/" target="_blank">
	                <div class="bg-white rounded-md mb-2 flex justify-center items-center">
	                    <img class="h-30 " src="https://cdn.akamai.steamstatic.com/steamcommunity/public/images/clans/30417073/d3f79eaa50db622e896c119d28163267535f0bbf_400x225.jpg" alt="BIOMUTANT">
	                </div>
	                <p class="text-center font-bold">BIOMUTANT</p>
	            </div></a>
	
	
	
	            <a href="https://store.steampowered.com/app/1313860/EA_SPORTS_FIFA_21/" target="_blank" rel="noopener noreferrer" class="cursor-pointer block p-1 rounded-md transition-colors hover:bg-gray-50 hover:bg-opacity-30">
	                <div class="bg-white rounded-md mb-2 flex justify-center items-center">
	                    <img class="h-30" src="https://cdn.akamai.steamstatic.com/steamcommunity/public/images/clans/38098411/633ba473bceb4e299560c6478a3d4ad069102d2e_400x225.png" alt="FIFA">
	                </div>
	                <p class="text-center font-bold">FIFA</p>
	            </a>
	            
	            
	            <a href="https://store.steampowered.com/news/app/632360" target="_blank" rel="noopener noreferrer" class="cursor-pointer block p-1 rounded-md transition-colors hover:bg-gray-50 hover:bg-opacity-30">
	                <div class="bg-white rounded-md mb-2 flex justify-center items-center">
	                    
	                    <img class="h-30" src="https://cdn.akamai.steamstatic.com/steamcommunity/public/images/clans/33906904/b660662741d8b690f5a81fe7e8c6b6bbe9c63396.png" alt="Risk of rain">
	                    <!-- <svg class="fill-current h-20 text-blue-500" viewBox="0 0 20 20">
	                        <path d="M10,2.531c-4.125,0-7.469,3.344-7.469,7.469c0,4.125,3.344,7.469,7.469,7.469c4.125,0,7.469-3.344,7.469-7.469C17.469,5.875,14.125,2.531,10,2.531 M10,3.776c1.48,0,2.84,0.519,3.908,1.384c-1.009,0.811-2.111,1.512-3.298,2.066C9.914,6.072,9.077,5.017,8.14,4.059C8.728,3.876,9.352,3.776,10,3.776 M6.903,4.606c0.962,0.93,1.82,1.969,2.53,3.112C7.707,8.364,5.849,8.734,3.902,8.75C4.264,6.976,5.382,5.481,6.903,4.606 M3.776,10c2.219,0,4.338-0.418,6.29-1.175c0.209,0.404,0.405,0.813,0.579,1.236c-2.147,0.805-3.953,2.294-5.177,4.195C4.421,13.143,3.776,11.648,3.776,10 M10,16.224c-1.337,0-2.572-0.426-3.586-1.143c1.079-1.748,2.709-3.119,4.659-3.853c0.483,1.488,0.755,3.071,0.784,4.714C11.271,16.125,10.646,16.224,10,16.224 M13.075,15.407c-0.072-1.577-0.342-3.103-0.806-4.542c0.673-0.154,1.369-0.243,2.087-0.243c0.621,0,1.22,0.085,1.807,0.203C15.902,12.791,14.728,14.465,13.075,15.407 M14.356,9.378c-0.868,0-1.708,0.116-2.515,0.313c-0.188-0.464-0.396-0.917-0.621-1.359c1.294-0.612,2.492-1.387,3.587-2.284c0.798,0.97,1.302,2.187,1.395,3.517C15.602,9.455,14.99,9.378,14.356,9.378"></path>
	                    </svg> -->
	                </div>
	                <p class="text-center font-bold">Risk of rain</p>
	            </a>
	            
	            
	            <div class="cursor-pointer block p-1 rounded-md transition-colors hover:bg-gray-50 hover:bg-opacity-30">
	                <div class="bg-white rounded-md mb-2 flex justify-center items-center">
	                    <a href="https://store.steampowered.com/app/1085660/Destiny_2/" target="_blank" rel="noopener noreferrer" class="cursor-pointer block p-1 rounded-md transition-colors hover:bg-gray-50 hover:bg-opacity-30">
	                        <img class="h-30" src="https://cdn.akamai.steamstatic.com/steam/apps/1085660/extras/d2_s14_STEAM_key-art_EN.jpg" alt="Destiny 2">
	                    </div>
	                    <p class="text-center font-bold">Destiny 2</p>
	                </div></a>
	                
	                
	                <div class="cursor-pointer block p-1 rounded-md transition-colors hover:bg-gray-50 hover:bg-opacity-30">
	                    <div class="bg-white rounded-md mb-2 flex justify-center items-center">
	                        <a href="https://store.steampowered.com/app/255710/Cities_Skylines/" target="_blank" rel="noopener noreferrer" class="cursor-pointer block p-1 rounded-md transition-colors hover:bg-gray-50 hover:bg-opacity-30">
	                            <img class="h-30" src="https://cdn.akamai.steamstatic.com/steamcommunity/public/images/clans/6625556/a1599f112c5dd008b7210dd56485dc4a755c3601_400x225.jpg" alt="Cities: Skylines">
	                        </div>
	                        <p class="text-center font-bold">Cities: Skylines</p>
	                </div>
	            </a>
	            </div>
            </div>
            
            
          </div> 


	<!-- 카드 -->

	<div class="flex">

		<c:forEach var="game" items="${gameList }">
			<div class="p-1 md:w-1/3 flex-auto">
				<div
					class="h-full border-2 border-gray-200 rounded-lg overflow-hidden">
					<img class="lg:h-48 md:h-36 w-full object-cover object-center"
						src="${game.getG_IMG() }" alt="img">
					<div class="p-6">
						<h2
							class="tracking-widest text-xs title-font font-medium text-gray-500 mb-1">${game.getG_TYPE() }</h2>
						<h1 class="title-font text-lg font-medium text-gray-900 mb-3">${game.getG_NAME() }</h1>
						<p class="leading-relaxed max-h-40 overflow-hidden ... mb-3">${game.getG_GAME_INTRODUCTION() }</p>
						<div class="flex items-center flex-wrap ">
							<a
								class="text-indigo-500 inline-flex items-center md:mb-2 lg:mb-0">Learn
								More <svg class="w-4 h-4 ml-2" viewBox="0 0 24 24"
									stroke="currentColor" stroke-width="2" fill="none"
									stroke-linecap="round" stroke-linejoin="round">
                  <path d="M5 12h14"></path>
                  <path d="M12 5l7 7-7 7"></path>
                </svg>
							</a> <span
								class="text-gray-600 mr-3 inline-flex items-center lg:ml-auto md:ml-0 ml-auto leading-none text-sm pr-3 py-1 border-r-2 border-gray-300">
								<svg class="w-4 h-4 mr-1" stroke="currentColor" stroke-width="2"
									fill="none" stroke-linecap="round" stroke-linejoin="round"
									viewBox="0 0 24 24">
                  <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                  <circle cx="12" cy="12" r="3"></circle>
                </svg>1.2K
							</span> <span
								class="text-gray-600 inline-flex items-center leading-none text-sm">
								<svg class="w-4 h-4 mr-1" stroke="currentColor" stroke-width="2"
									fill="none" stroke-linecap="round" stroke-linejoin="round"
									viewBox="0 0 24 24">
                  <path
										d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
                </svg>6
							</span>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>


	</div>
	<!-- 가로명언 -->
	<!-- 
 <div class="slider">
    <ul class="slides">
      <li>
    <section class="component bg-black p-6 mx-1 md:mx-10 ">
		<blockquote class="relative text-white text-center p-10 w-full m-1">
			It’s good to meet you, Dr. Banner. Your work on anti-electron collisions is unparalleled. And I’m a huge
			fan of the way you lose control and turn into an enormous green rage monster.
			<cite> - Tony Stark1</cite>
		</blockquote>
	</section>
      </li>
      <li>
         <section class="component bg-black p-6 mx-1 md:mx-10 ">
		<blockquote class="relative text-white text-center p-10 w-full m-1">
			It’s good to meet you, Dr. Banner. Your work on anti-electron collisions is unparalleled. And I’m a huge
			fan of the way you lose control and turn into an enormous green rage monster.
			<cite> - Tony Stark2</cite>
		</blockquote>
	</section>
      </li>
      <li>
          <section class="component bg-black p-6 mx-1 md:mx-10 ">
		<blockquote class="relative text-white text-center p-10 w-full m-1">
			It’s good to meet you, Dr. Banner. Your work on anti-electron collisions is unparalleled. And I’m a huge
			fan of the way you lose control and turn into an enormous green rage monster.
			<cite> - Tony Stark3</cite>
		</blockquote>
	</section>
      </li>
      <li>
           <section class="component bg-black p-6 mx-1 md:mx-10 ">
		<blockquote class="relative text-white text-center p-10 w-full m-1">
			It’s good to meet you, Dr. Banner. Your work on anti-electron collisions is unparalleled. And I’m a huge
			fan of the way you lose control and turn into an enormous green rage monster.
			<cite> - Tony Stark4</cite>
		</blockquote>
	</section>
      </li>
    </ul>
  </div> -->
	<!-- 
	<DIV>
	<section class="component bg-black p-6 mx-1 md:mx-10 ">
		<blockquote class="relative text-white text-center p-10 w-full m-1">
			It’s good to meet you, Dr. Banner. Your work on anti-electron collisions is unparalleled. And I’m a huge
			fan of the way you lose control and turn into an enormous green rage monster.
			<cite> - Tony Stark</cite>
		</blockquote>
	</section>
	</DIV> -->

	<!-- 끝 -->


	<!-- 가로 3버튼 -->
	<!--   <div class="px-8 w-full flex">
<div class="bg-white flex flex-1 p-3">
  <div class="mx-auto ">
Profile Card
<div class="rounded-lg shadow-lg bg-gray-600 w-full flex flex-row flex-wrap p-3 antialiased" style="
  /* background-image: url('https://images.unsplash.com/photo-1578836537282-3171d77f8632?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'); */
  background-repeat: no-repat;
  background-size: cover;
  background-blend-mode: multiply;
">
  <div class="md:w-1/3 w-full">
    <img class="rounded-lg shadow-lg antialiased" src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png">  
  </div>
  <div class="md:w-2/3 w-full px-3 flex flex-row flex-wrap">
    <div class="w-full text-right text-gray-700 font-semibold relative pt-3 md:pt-0">
      <div class="text-2xl text-white leading-tight">Admin User</div>
      <div class="text-normal text-gray-300 hover:text-gray-400 cursor-pointer"><span class="border-b border-dashed border-gray-500 pb-1">Administrator</span></div>
      <div class="text-sm text-gray-300 hover:text-gray-400 cursor-pointer md:absolute pt-3 md:pt-0 bottom-0 right-0">Last Seen: <b>2 days ago</b></div>
    </div>
  </div>
</div></div>
End Profile Card
  </div>
<div class="bg-white flex flex-1 p-3">
  <div class="mx-auto ">
Profile Card
<div class="rounded-lg shadow-lg bg-gray-600 w-full flex flex-row flex-wrap p-3 antialiased" style="
  background-image: url('https://images.unsplash.com/photo-1578836537282-3171d77f8632?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80');
  background-repeat: no-repat;
  background-size: cover;
  background-blend-mode: multiply;
">
  <div class="md:w-1/3 w-full">
    <img class="rounded-lg shadow-lg antialiased" src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png">  
  </div>
  <div class="md:w-2/3 w-full px-3 flex flex-row flex-wrap">
    <div class="w-full text-right text-gray-700 font-semibold relative pt-3 md:pt-0">
      <div class="text-2xl text-white leading-tight">Admin User</div>
      <div class="text-normal text-gray-300 hover:text-gray-400 cursor-pointer"><span class="border-b border-dashed border-gray-500 pb-1">Administrator</span></div>
      <div class="text-sm text-gray-300 hover:text-gray-400 cursor-pointer md:absolute pt-3 md:pt-0 bottom-0 right-0">Last Seen: <b>2 days ago</b></div>
    </div>
  </div>
</div></div>
End Profile Card
  </div>
<div class="bg-white flex flex-1 p-3">
  <div class="mx-auto ">
Profile Card
<div class="rounded-lg shadow-lg bg-gray-600 w-full flex flex-row flex-wrap p-3 antialiased" style="
  background-image: url('https://images.unsplash.com/photo-1578836537282-3171d77f8632?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80');
  background-repeat: no-repat;
  background-size: cover;
  background-blend-mode: multiply;
">
  <div class="md:w-1/3 w-full">
    <img class="rounded-lg shadow-lg antialiased" src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png">  
  </div>
  <div class="md:w-2/3 w-full px-3 flex flex-row flex-wrap">
    <div class="w-full text-right text-gray-700 font-semibold relative pt-3 md:pt-0">
      <div class="text-2xl text-white leading-tight">Admin User</div>
      <div class="text-normal text-gray-300 hover:text-gray-400 cursor-pointer"><span class="border-b border-dashed border-gray-500 pb-1">Administrator</span></div>
      <div class="text-sm text-gray-300 hover:text-gray-400 cursor-pointer md:absolute pt-3 md:pt-0 bottom-0 right-0">Last Seen: <b>2 days ago</b></div>
    </div>
  </div>
</div></div> -->
	<!-- End Profile Card -->
	</div>
	</div>
	<!--  새로운놈들-->
	<%-- <div class="flex items-center justify-center">

    <div class="grid grid-cols-1 gap-10 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-5 xl:grid-cols-5">
	<c:forEach var="s" items="${gameList }">
	
	        <div class="w-80 h-full relative">

            <div class="pb-24 bg-white py-4 px-4 border-8 border-gray-500 rounded-3xl h-full shadow-2xl">
                <img src="https://lh3.googleusercontent.com/proxy/B_c9CJH5KOt8XIGfc7OHgi260_JCKmcQvbvd2i6eRFQR0MhTBzVUzCm8sS3Ga1EaOBMgJKusrLgrb_ETh0vi-fqlEitURrCiaeSeRBXbHtRnlVRzyznrZSDtRVwE33yug4eRz0CJH1pfFMpbYt9SGw"
                    class="w-64 h-64 " />

                <div class="flex justify-between">
                    <div class="py-4 flex space-x-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mb-4 text-green-500" viewBox="0 0 20 20"
                            fill="currentColor">
                            <path d="M5 4a2 2 0 012-2h6a2 2 0 012 2v14l-5-2.5L5 18V4z" />
                        </svg>
                        <p class="text-md mb-4 font-semibold">youTube</p>
                    </div>
                    <div class="py-4 pr-5">
                        <p class="text-sm font-semibold text-gray-500">Price for Game</p>
                        <p class="text-lg font-semibold">KRW  </p>
                    </div>
                </div>
            </div>

            <div class="absolute bottom-0 left-0 ">
                <div class="flex justify-between">
                    <div class="py-4 px-6 rounded-lg w-full ">
                        <p class="text-gray-900 text-md text-center font-semibold pb-1">
                            관련영상
                        </p>
                        <div class="w-full">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG81YXsPVsAYniU2oimQZY4MsrPKsR7u9new&usqp=CAU"
                                class="w-full h-20 rounded-full border-2 border-white" />
                        </div>
                    </div>
                    <div class="py-4 px-6 rounded-lg w-full flex items-end">
                        <button
                            class="bg-gradient-to-b from-blue-900 to-gray-500 text-white font-bold py-4 px-4 rounded-lg uppercase text-current  shadow-xl">
                           구매하러 가기
                        </button>
                    </div>
                </div>
            </div>
            
            </c:forEach>

        </div> <div class="w-80 h-full relative">

            <div class="pb-24 bg-white py-4 px-4 border-8 border-gray-500 rounded-3xl h-full shadow-2xl">
                <img src="https://lh3.googleusercontent.com/proxy/B_c9CJH5KOt8XIGfc7OHgi260_JCKmcQvbvd2i6eRFQR0MhTBzVUzCm8sS3Ga1EaOBMgJKusrLgrb_ETh0vi-fqlEitURrCiaeSeRBXbHtRnlVRzyznrZSDtRVwE33yug4eRz0CJH1pfFMpbYt9SGw"
                    class="w-64 h-64 " />

                <div class="flex justify-between">
                    <div class="py-4 flex space-x-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mb-4 text-green-500" viewBox="0 0 20 20"
                            fill="currentColor">
                            <path d="M5 4a2 2 0 012-2h6a2 2 0 012 2v14l-5-2.5L5 18V4z" />
                        </svg>
                        <p class="text-md mb-4 font-semibold">youTube</p>
                    </div>
                    <div class="py-4 pr-5">
                        <p class="text-sm font-semibold text-gray-500">Price for Game</p>
                        <p class="text-lg font-semibold">KRW </p>
                    </div>
                </div>
            </div>

            <div class="absolute bottom-0 left-0 ">
                <div class="flex justify-between">
                    <div class="py-4 px-6 rounded-lg w-full ">
                        <p class="text-gray-900 text-md text-center font-semibold pb-1">
                            관련영상
                        </p>
                        <div class="w-full">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG81YXsPVsAYniU2oimQZY4MsrPKsR7u9new&usqp=CAU"
                                class="w-full h-20 rounded-full border-2 border-white" />
                        </div>
                    </div>
                    <div class="py-4 px-6 rounded-lg w-full flex items-end">
                        <button
                            class="bg-gradient-to-b from-blue-900 to-gray-500 text-white font-bold py-4 px-4 rounded-lg uppercase text-current  shadow-xl">
                           구매하러 가기
                        </button>
                    </div>
                </div>
            </div>
        </div> <div class="w-80 h-full relative">

            <div class="pb-24 bg-white py-4 px-4 border-8 border-gray-500 rounded-3xl h-full shadow-2xl">
                <img src="https://lh3.googleusercontent.com/proxy/B_c9CJH5KOt8XIGfc7OHgi260_JCKmcQvbvd2i6eRFQR0MhTBzVUzCm8sS3Ga1EaOBMgJKusrLgrb_ETh0vi-fqlEitURrCiaeSeRBXbHtRnlVRzyznrZSDtRVwE33yug4eRz0CJH1pfFMpbYt9SGw"
                    class="w-64 h-64 " />

                <div class="flex justify-between">
                    <div class="py-4 flex space-x-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mb-4 text-green-500" viewBox="0 0 20 20"
                            fill="currentColor">
                            <path d="M5 4a2 2 0 012-2h6a2 2 0 012 2v14l-5-2.5L5 18V4z" />
                        </svg>
                        <p class="text-md mb-4 font-semibold">youTube</p>
                    </div>
                    <div class="py-4 pr-5">
                        <p class="text-sm font-semibold text-gray-500">Price for Game</p>
                        <p class="text-lg font-semibold">KRW </p>
                    </div>
                </div>
            </div>

            <div class="absolute bottom-0 left-0 ">
                <div class="flex justify-between">
                    <div class="py-4 px-6 rounded-lg w-full ">
                        <p class="text-gray-900 text-md text-center font-semibold pb-1">
                            관련영상
                        </p>
                        <div class="w-full">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG81YXsPVsAYniU2oimQZY4MsrPKsR7u9new&usqp=CAU"
                                class="w-full h-20 rounded-full border-2 border-white" />
                        </div>
                    </div>
                    <div class="py-4 px-6 rounded-lg w-full flex items-end">
                        <button
                            class="bg-gradient-to-b from-blue-900 to-gray-500 text-white font-bold py-4 px-4 rounded-lg uppercase text-current  shadow-xl">
                           구매하러 가기
                        </button>
                    </div>
                </div>
            </div>
        </div> <div class="w-80 h-full relative">

            <div class="pb-24 bg-white py-4 px-4 border-8 border-gray-500 rounded-3xl h-full shadow-2xl">
                <img src="https://lh3.googleusercontent.com/proxy/B_c9CJH5KOt8XIGfc7OHgi260_JCKmcQvbvd2i6eRFQR0MhTBzVUzCm8sS3Ga1EaOBMgJKusrLgrb_ETh0vi-fqlEitURrCiaeSeRBXbHtRnlVRzyznrZSDtRVwE33yug4eRz0CJH1pfFMpbYt9SGw"
                    class="w-64 h-64 " />

                <div class="flex justify-between">
                    <div class="py-4 flex space-x-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mb-4 text-green-500" viewBox="0 0 20 20"
                            fill="currentColor">
                            <path d="M5 4a2 2 0 012-2h6a2 2 0 012 2v14l-5-2.5L5 18V4z" />
                        </svg>
                        <p class="text-md mb-4 font-semibold">youTube</p>
                    </div>
                    <div class="py-4 pr-5">
                        <p class="text-sm font-semibold text-gray-500">Price for Game</p>
                        <p class="text-lg font-semibold">KRW </p>
                    </div>
                </div>
            </div>

            <div class="absolute bottom-0 left-0 ">
                <div class="flex justify-between">
                    <div class="py-4 px-6 rounded-lg w-full ">
                        <p class="text-gray-900 text-md text-center font-semibold pb-1">
                            관련영상
                        </p>
                        <div class="w-full">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG81YXsPVsAYniU2oimQZY4MsrPKsR7u9new&usqp=CAU"
                                class="w-full h-20 rounded-full border-2 border-white" />
                        </div>
                    </div>
                    <div class="py-4 px-6 rounded-lg w-full flex items-end">
                        <button
                            class="bg-gradient-to-b from-blue-900 to-gray-500 text-white font-bold py-4 px-4 rounded-lg uppercase text-current  shadow-xl">
                           구매하러 가기
                        </button>
                    </div>
                </div>
            </div>
        </div> <div class="w-80 h-full relative">

            <div class="pb-24 bg-white py-4 px-4 border-8 border-gray-500 rounded-3xl h-full shadow-2xl">
                <img src="https://lh3.googleusercontent.com/proxy/B_c9CJH5KOt8XIGfc7OHgi260_JCKmcQvbvd2i6eRFQR0MhTBzVUzCm8sS3Ga1EaOBMgJKusrLgrb_ETh0vi-fqlEitURrCiaeSeRBXbHtRnlVRzyznrZSDtRVwE33yug4eRz0CJH1pfFMpbYt9SGw"
                    class="w-64 h-64 " />

                <div class="flex justify-between">
                    <div class="py-4 flex space-x-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mb-4 text-green-500" viewBox="0 0 20 20"
                            fill="currentColor">
                            <path d="M5 4a2 2 0 012-2h6a2 2 0 012 2v14l-5-2.5L5 18V4z" />
                        </svg>
                        <p class="text-md mb-4 font-semibold">youTube</p>
                    </div>
                    <div class="py-4 pr-5">
                        <p class="text-sm font-semibold text-gray-500">Price for Game</p>
                        <p class="text-lg font-semibold">KRW </p>
                    </div>
                </div>
            </div>

            <div class="absolute bottom-0 left-0 ">
                <div class="flex justify-between">
                    <div class="py-4 px-6 rounded-lg w-full ">
                        <p class="text-gray-900 text-md text-center font-semibold pb-1">
                            관련영상
                        </p>
                        <div class="w-full">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG81YXsPVsAYniU2oimQZY4MsrPKsR7u9new&usqp=CAU"
                                class="w-full h-20 rounded-full border-2 border-white" />
                        </div>
                    </div>
                    <div class="py-4 px-6 rounded-lg w-full flex items-end">
                        <button
                            class="bg-gradient-to-b from-blue-900 to-gray-500 text-white font-bold py-4 px-4 rounded-lg uppercase text-current  shadow-xl">
                           구매하러 가기
                        </button>
                    </div>
                </div>
            </div>
        </div>



    </div>
</div>
 --%>

	<!--버튼 3개 게임가기 -->





	<div class="w-full grid grid-col-3 place-items-center py-4">
		<div
			class="text-center font-bolder font-xl py-3 px-5 bg-indigo-50 rounded-t-2xl border-b-2 border-indigo-600 ">스크립트
			게임</div>
		<div class="px-2 flex gap-10">
			<a href="tetris.do">
				<div
					class="col-1 flex items-center bg-indigo-50  bg-opacity-40 shadow-xl gap-5 px-6 py-5 rounded-lg ring-2 ring-offset-2 ring-offset-yellow-800 ring-cyan-700 mt-5 cursor-pointer hover:bg-blue-300 hover:bg-opacity-100 transition">
					<img class="w-12 h-12"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuGQ7P4_tiG4OJSW5DQ2K7e1JWM1aDV3fK3g&usqp=CAU"
						alt="tetris" />
					<div>
						<span class="font-bold text-black">Tetris</span> <span
							class="text-xs text-black block">Our Game</span>
					</div>
					<div>
						<i
							class="fa fa-chevron-right opacity-0 group-hover:opacity-100 transform -translate-x-1 group-hover:translate-x-0 block transition"></i>
					</div>
				</div>
			</a> <a href="roulette.do">
				<div
					class="col-1 flex items-center bg-indigo-50  bg-opacity-40 shadow-xl gap-5 px-6 py-5 rounded-lg ring-2 ring-offset-2 ring-offset-yellow-800 ring-cyan-700 mt-5 cursor-pointer hover:bg-blue-300 hover:bg-opacity-100 transition">
					<img class="w-12 h-12"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0DmVFrC6kKUDq-fONpy0n0-pDKdpG4UZtbQ&usqp=CAU"
						alt="룰렛" />
					<div>
						<span class="font-bold  text-black ">roulette</span> <span
							class="text-xs  text-black  block">Our Game</span>
					</div>
					<div>
						<i
							class="fa fa-chevron-right opacity-0 group-hover:opacity-100 transform -translate-x-1 group-hover:translate-x-0 block transition"></i>
					</div>
				</div>
			</a> <a href="landmine.do">
				<div
					class="col-1 flex items-center bg-indigo-50 bg-opacity-40 shadow-xl gap-5 px-6 py-5 rounded-lg ring-2 ring-offset-2 ring-offset-yellow-800 ring-cyan-700 mt-5 cursor-pointer hover:bg-blue-300 hover:bg-opacity-100 transition">
					<img class="w-12 h-12"
						src="data:image/png;base64,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"
						alt="" />
					<div>
						<span class="font-bold text-black">Minesweeper</span> <span
							class="text-xs  text-black  block">Our Game</span>
					</div>
					<div>
						<i
							class="fa fa-chevron-right opacity-0 group-hover:opacity-100 transform -translate-x-1 group-hover:translate-x-0 block transition"></i>
					</div>
				</div>
			</a>
		</div>
	</div>


	<!--3버튼끝  -->
	<!--4칸 메모  -->

	<%-- 
 <div class="flex px-4 shadow-2xl py-2 items-start  overflow-x-scroll">

        <!-- 1 -->
        <div class="xl\:w-1\/4 sm\:w-1 rounded-bl bg-grey-LIGHT flex-no-shrink w-64 p-2 ml-5 mr-10 border-2 shadow-xl">
            <div class="flex justify-between py-2">
                <h3 class="mx-16 text-sm font-bold shadow-md ">${boardList.get(1).getG_TYPE() } 커뮤니티</h3>
                <!-- <svg class="h-4 fill-current text-grey-dark cursor-pointer" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M5 10a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4z"/></svg>
             -->
            </div>
            <div class="text-sm mt-2">
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
              ${boardList.get(1).getB_TITLE() }
                </div>
                
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
              ${boardList.get(2).getB_TITLE() }
                </div>
                
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
            ${boardList.get(3).getB_TITLE() }
                </div>
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
              ${boardList.get(0).getB_TITLE() }
                </div>
                    <div class="text-grey-darker mt-2 ml-2 flex justify-between items-start">
                        <span class="text-xs flex items-center">
                            <svg class="h-4 fill-current mr-1 mt-3 " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path d="M11 4c-3.855 0-7 3.145-7 7v28c0 3.855 3.145 7 7 7h28c3.855 0 7-3.145 7-7V11c0-3.855-3.145-7-7-7zm0 2h28c2.773 0 5 2.227 5 5v28c0 2.773-2.227 5-5 5H11c-2.773 0-5-2.227-5-5V11c0-2.773 2.227-5 5-5zm25.234 9.832l-13.32 15.723-8.133-7.586-1.363 1.465 9.664 9.015 14.684-17.324z"/></svg>
                            3/5
                        </span>
                        <img src="https://openmoji.org/data/color/svg/1F600.svg" class="rounded-full w-9 h-9" />
                    </div>
                </div>
              <p class="mt-3 text-grey-dark text-right"><a href="mainPage.do">더보기...</a></p>
         </div>
        <div class="xl\:w-1\/4 sm\:w-1 rounded-bl bg-grey-LIGHT flex-no-shrink w-64 p-2 ml-5 mr-10 border-2 shadow-xl">
            <div class="flex justify-between py-2">
                <h3 class="mx-16 text-sm font-bold shadow-md ">${boardList.get(0).getG_TYPE() } 커뮤니티</h3>
                <!-- <svg class="h-4 fill-current text-grey-dark cursor-pointer" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M5 10a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4z"/></svg>
             -->
            </div>
            <div class="text-sm mt-2">
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
              ${boardList.get(0).getB_TITLE() }
                </div>
                
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
           ${boardList.get(3).getB_TITLE() }
                </div>
                
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
         ${boardList.get(2).getB_TITLE() }
                </div>
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
          ${boardList.get(1).getB_TITLE() }
                </div>
                    <div class="text-grey-darker mt-2 ml-2 flex justify-between items-start">
                        <span class="text-xs flex items-center">
                            <svg class="h-4 fill-current mr-1 mt-3 " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path d="M11 4c-3.855 0-7 3.145-7 7v28c0 3.855 3.145 7 7 7h28c3.855 0 7-3.145 7-7V11c0-3.855-3.145-7-7-7zm0 2h28c2.773 0 5 2.227 5 5v28c0 2.773-2.227 5-5 5H11c-2.773 0-5-2.227-5-5V11c0-2.773 2.227-5 5-5zm25.234 9.832l-13.32 15.723-8.133-7.586-1.363 1.465 9.664 9.015 14.684-17.324z"/></svg>
                            3/5
                        </span>
                        <img src="https://openmoji.org/data/color/svg/1F600.svg" class="rounded-full w-9 h-9" />
                    </div>
                </div>
              <p class="mt-3 text-grey-dark text-right"><a href="mainPage.do">더보기...</a></p>
         </div>
        <div class="xl\:w-1\/4 sm\:w-1 rounded-bl bg-grey-LIGHT flex-no-shrink w-64 p-2 ml-5 mr-10 border-2 shadow-xl">
            <div class="flex justify-between py-2">
                <h3 class="mx-16 text-sm font-bold shadow-md ">${boardList.get(3).getG_TYPE() } 커뮤니티</h3>
                <!-- <svg class="h-4 fill-current text-grey-dark cursor-pointer" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M5 10a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4z"/></svg>
             -->
            </div>
            <div class="text-sm mt-2">
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
              2
                </div>
                
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
               3
                </div>
                
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
             4
                </div>
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
              6
                </div>
                    <div class="text-grey-darker mt-2 ml-2 flex justify-between items-start">
                        <span class="text-xs flex items-center">
                            <svg class="h-4 fill-current mr-1 mt-3 " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path d="M11 4c-3.855 0-7 3.145-7 7v28c0 3.855 3.145 7 7 7h28c3.855 0 7-3.145 7-7V11c0-3.855-3.145-7-7-7zm0 2h28c2.773 0 5 2.227 5 5v28c0 2.773-2.227 5-5 5H11c-2.773 0-5-2.227-5-5V11c0-2.773 2.227-5 5-5zm25.234 9.832l-13.32 15.723-8.133-7.586-1.363 1.465 9.664 9.015 14.684-17.324z"/></svg>
                            3/5
                        </span>
                        <img src="https://openmoji.org/data/color/svg/1F600.svg" class="rounded-full w-9 h-9" />
                    </div>
                </div>
              <p class="mt-3 text-grey-dark text-right"><a href="mainPage.do">더보기...</a></p>
         </div>
        <div class="xl\:w-1\/4 sm\:w-1 rounded-bl bg-grey-LIGHT flex-no-shrink w-64 p-2 ml-5 mr-10 border-2 shadow-xl">
            <div class="flex justify-between py-2">
                <h3 class="mx-16 text-sm font-bold shadow-md ">${boardList.get(2).getG_TYPE() } 커뮤니티</h3>
                <!-- <svg class="h-4 fill-current text-grey-dark cursor-pointer" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M5 10a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4z"/></svg>
             -->
            </div>
            <div class="text-sm mt-2">
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
              2
                </div>
                
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
               3
                </div>
                
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
             4
                </div>
                <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
              6
                </div>
                    <div class="text-grey-darker mt-2 ml-2 flex justify-between items-start">
                        <span class="text-xs flex items-center">
                            <svg class="h-4 fill-current mr-1 mt-3 " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path d="M11 4c-3.855 0-7 3.145-7 7v28c0 3.855 3.145 7 7 7h28c3.855 0 7-3.145 7-7V11c0-3.855-3.145-7-7-7zm0 2h28c2.773 0 5 2.227 5 5v28c0 2.773-2.227 5-5 5H11c-2.773 0-5-2.227-5-5V11c0-2.773 2.227-5 5-5zm25.234 9.832l-13.32 15.723-8.133-7.586-1.363 1.465 9.664 9.015 14.684-17.324z"/></svg>
                            3/5
                        </span>
                        <img src="https://openmoji.org/data/color/svg/1F600.svg" class="rounded-full w-9 h-9" />
                    </div>
                </div>
              <p class="mt-3 text-grey-dark text-right"><a href="mainPage.do">더보기...</a></p>
         </div>

     </div>
 
 
 

 --%>


	<!-- 테이블 시작 -->


	<!-- col start-1 체크. -->

	<div
		class="col-start-1 col-end-6 align-middle inline-block min-w-full shadow overflow-hidden bg-white shadow-dashboard px-20 pt-3 rounded-bl-lg rounded-br-lg">
		<table class="min-w-full">
			<thead>
				<tr>
					<th
						class="px-3 py-3 border-b-2 border-gray-300 text-left leading-4 text-blue-500 tracking-wider">장르</th>
					<th
						class="px-3 py-3 border-b-2 border-gray-300 text-left text-sm leading-4 text-blue-500 tracking-wider">게임명</th>
					<th
						class="px-3 py-3 border-b-2 border-gray-300 text-left text-sm leading-4 text-blue-500 tracking-wider">출시일</th>
					<th
						class="px-3 py-3 border-b-2 border-gray-300 text-left text-sm leading-4 text-blue-500 tracking-wider">가격(원)</th>
					<th
						class="px-3 py-3 border-b-2 border-gray-300 text-left text-sm leading-4 text-blue-500 tracking-wider">서버상태</th>
					<th
						class="px-3 py-3 border-b-2 border-gray-300 text-left text-sm leading-4 text-blue-500 tracking-wider">평점</th>
					<th class="px-3 py-3 border-b-2 border-gray-300"></th>
				</tr>
			</thead>
			<tbody class="bg-white">
				<c:forEach var="a" items="${gameList }">
					<tr>
						<td class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
							<div class="flex items-center">
								<div>
									<div class="text-sm leading-5 text-gray-800">${a.getG_TYPE()}</div>
								</div>
							</div>
						</td>
						<td class="px-3 py-4 whitespace-no-wrap border-b border-gray-500">
							<div class="text-sm leading-5 text-blue-900">${a.getG_NAME()}</div>
						</td>
						<td
							class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">
							 <fmt:formatDate value="${a.getG_DATE()}" pattern="yyyy-MM-dd"/>  </td>
						<td
							class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5 font-bold">${a.getG_PRICE()}</td>
						<td
							class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">
							<span
							class="relative inline-block px-3 py-1 font-semibold text-green-900 leading-tight">
								<span aria-hidden
								class="absolute inset-0 bg-green-600 opacity-50 rounded-full"></span>
								<span class="relative text-xs">active</span>
						</span>
						</td>
						<td
							class="px-3 py-4 whitespace-no-wrap border-b border-gray-500 text-blue-900 text-sm leading-5">${a.getG_GRADE()}</td>

					</tr>
				</c:forEach>
				<!--    <tr>
                                    <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
                                        <div class="flex items-center">
                                            <div>
                                                <div class="text-sm leading-5 text-gray-800">#1</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b border-gray-500">
                                        <div class="text-sm leading-5 text-blue-900">Damilare Anjorin</div>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">damilareanjorin1@gmail.com</td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">+2348106420637</td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">
                                        <span class="relative inline-block px-3 py-1 font-semibold text-green-900 leading-tight">
                                        <span aria-hidden class="absolute inset-0 bg-green-200 opacity-50 rounded-full"></span>
                                        <span class="relative text-xs">active</span>
                                    </span>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b border-gray-500 text-blue-900 text-sm leading-5">September 12</td>
                                  
                          </tr>
                          <tr>
                                    <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
                                        <div class="flex items-center">
                                            <div>
                                                <div class="text-sm leading-5 text-gray-800">#2</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b border-gray-500">
                                        <div class="text-sm leading-5 text-blue-900">Damilare Anjorin</div>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">damilareanjorin1@gmail.com</td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">+2348106420637</td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">
                                        <span class="relative inline-block px-3 py-1 font-semibold text-red-900 leading-tight">
                                        <span aria-hidden class="absolute inset-0 bg-red-200 opacity-50 rounded-full"></span>
                                        <span class="relative text-xs">not active</span>
                                    </span>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b border-gray-500 text-blue-900 text-sm leading-5">September 12</td>
                                   
                          </tr>
                          <tr>
                                    <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
                                        <div class="flex items-center">
                                            <div>
                                                <div class="text-sm leading-5 text-gray-800">#4</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b border-gray-500">
                                        <div class="text-sm leading-5 text-blue-900">Damilare Anjorin</div>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">damilareanjorin1@gmail.com</td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">+2348106420637</td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">
                                        <span class="relative inline-block px-3 py-1 font-semibold text-green-900 leading-tight">
                                        <span aria-hidden class="absolute inset-0 bg-green-200 opacity-50 rounded-full"></span>
                                        <span class="relative text-xs">active</span>
                                    </span>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b border-gray-500 text-blue-900 text-sm leading-5">September 12</td>
                                    
                          </tr>
                          <tr>
                                    <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
                                        <div class="flex items-center">
                                            <div>
                                                <div class="text-sm leading-5 text-gray-800">#5</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b border-gray-500">
                                        <div class="text-sm leading-5 text-blue-900">Damilare Anjorin</div>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">damilareanjorin1@gmail.com</td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">+2348106420637</td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b text-blue-900 border-gray-500 text-sm leading-5">
                                        <span class="relative inline-block px-3 py-1 font-semibold text-orange-900 leading-tight">
                                        <span aria-hidden class="absolute inset-0 bg-orange-200 opacity-50 rounded-full"></span>
                                        <span class="relative text-xs">disabled</span>
                                    </span>
                                    </td>
                                    <td class="px-3 py-4 whitespace-no-wrap border-b border-gray-500 text-blue-900 text-sm leading-5">September 12</td>
                                   
                          </tr> -->
			</tbody>
		</table>
		<!-- <div class="sm:flex-1 sm:flex sm:items-center sm:justify-between mt-4 work-sans">
        <div>
            <p class="text-sm leading-5 text-blue-700">
                Showing
                <span class="font-medium">1</span>
                to
                <span class="font-medium">200</span>
                of
                <span class="font-medium">2000</span>
                results
            </p>
        </div> -->
		<div class="text-center">
			<nav class="relative z-2 inline-flex shadow-sm ">
				<div>
					<a href="#"
						class="relative inline-flex items-center px-2 py-2 rounded-l-md border border-gray-300 bg-white text-sm leading-5 font-medium text-gray-500 hover:text-gray-400 focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-gray-100 active:text-gray-500 transition ease-in-out duration-150"
						aria-label="Previous"
						v-on:click.prevent="changePage(pagination.current_page - 1)">
						<svg class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd"
								d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
								clip-rule="evenodd" />
                        </svg>
					</a>
				</div>
				<div>
					<a href="#"
						class="-ml-px relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm leading-5 font-medium text-blue-700 focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-tertiary active:text-gray-700 transition ease-in-out duration-150 hover:bg-tertiary">
						1 </a> <a href="#"
						class="-ml-px relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm leading-5 font-medium text-blue-600 focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-tertiary active:text-gray-700 transition ease-in-out duration-150 hover:bg-tertiary">
						2 </a> <a href="#"
						class="-ml-px relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm leading-5 font-medium text-blue-600 focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-tertiary active:text-gray-700 transition ease-in-out duration-150 hover:bg-tertiary">
						3 </a>
				</div>
				<div v-if="pagination.current_page < pagination.last_page">
					<a href="#"
						class="-ml-px relative inline-flex items-center px-2 py-2 rounded-r-md border border-gray-300 bg-white text-sm leading-5 font-medium text-gray-500 hover:text-gray-400 focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-gray-100 active:text-gray-500 transition ease-in-out duration-150"
						aria-label="Next"> <svg class="h-5 w-5" viewBox="0 0 20 20"
							fill="currentColor">
                            <path fill-rule="evenodd"
								d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
								clip-rule="evenodd" />
                        </svg>
					</a>
				</div>
			</nav>
		</div>
	</div>
	</div>



	<!-- 끗 드롭다운 -->




	<!-- 1:1문의  -->


	<!--재시작-->
	<!-- 
<div  id="web3forms__widget" x-data="{ open: false }""> 
<form>   
    <div
      id="w3f__widget--content"
      x-show="open"
      x-transition:enter-start="opacity-0 translate-y-5"
      x-transition:enter="transition duration-200 transform ease"
      x-transition:leave="transition duration-200 transform ease"
      x-transition:leave-end="opacity-0 translate-y-5"
      @click.away="open = false"
      class="fixed flex flex-col z-50 bottom-[100px] top-0 right-0 h-auto left-0 sm:top-auto sm:right-5 sm:left-auto h-[calc(100%-95px)] w-50 sm:w-[350px] overflow-auto min-h-[250px] sm:h-[600px] border border-gray-300 bg-white shadow-2xl rounded-md"
    >
    <div class="flex p-5 flex-col justify-center items-center h-32 bg-indigo-600">
      <h3 class="text-lg text-white">How can we help?</h3>
      <p class="text-white opacity-50">We usually respond in a few hours</p>
    </div>
     <div class="bg-gray-50 flex-grow p-6"> 
       
        <form
        action="https://api.web3forms.com/submit"
        method="POST"
        id="form"
        class="needs-validation"
        novalidate
      >
        <input type="hidden" name="apikey" value="90931dd6-4d12-4844-b5c2-a097780ca1f9" />
        <input type="hidden" name="subject" value="New Submission from Web3Forms" />
        <input
          type="checkbox"
          name="botcheck"
          id=""
          style="display: none;"
        />

         
          <div class="mb-4">
            <label
              for="full_name"
              class="block mb-2 text-sm text-gray-600 dark:text-gray-400"
              >Full Name</label
            >
            <input
              type="text"
              name="name"
              id="full_name"
              placeholder="John"
              required
              class="w-full px-3 py-2 placeholder-gray-300 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 dark:bg-gray-700 dark:text-white dark:placeholder-gray-500 dark:border-gray-600 dark:focus:ring-gray-900 dark:focus:border-gray-500"
            />
            <div
              class="empty-feedback invalid-feedback text-red-400 text-sm mt-1"
            >
              Please provide your full name.
            </div>
          </div>
          
        

      
          <div class="mb-4">
            <label
              for="email"
              class="block mb-2 text-sm text-gray-600 dark:text-gray-400"
              >Email Address</label
            >
            <input
              type="email"
              name="email"
              id="email"
              placeholder="you@company.com"
              required
              class="w-full px-3 py-2 placeholder-gray-300 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 dark:bg-gray-700 dark:text-white dark:placeholder-gray-500 dark:border-gray-600 dark:focus:ring-gray-900 dark:focus:border-gray-500"
            />
            <div class="empty-feedback text-red-400 text-sm mt-1">
              Please provide your email address.
            </div>
            <div class="invalid-feedback text-red-400 text-sm mt-1">
              Please provide a valid email address.
            </div>
          </div>

         
        <div class="mb-4">
          <label
            for="message"
            class="block mb-2 text-sm text-gray-600 dark:text-gray-400"
            >Your Message</label
          >

          <textarea
            rows="4"
            name="message"
            id="message"
            placeholder="Your Message"
            class="w-full h-28 px-3 py-2 placeholder-gray-300 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 dark:bg-gray-700 dark:text-white dark:placeholder-gray-500 dark:border-gray-600 dark:focus:ring-gray-900 dark:focus:border-gray-500"
            required
          ></textarea>
          <div
            class="empty-feedback invalid-feedback text-red-400 text-sm mt-1"
          >
            Please enter your message.
          </div>
        </div>
        <div class="mb-3">
          <button
            type="submit"
            class="w-full px-3 py-4 text-white bg-indigo-500 rounded-md focus:bg-indigo-600 focus:outline-none"
          >
            Send Message
          </button>
        </div>
        <p class="text-xs text-center text-gray-400" id="result">
          <span>Powered by 2팀</span>
        </p>
      </form>


     </div>
    </div>
    <button
      id="w3f__widget--btn"
      @click="open = !open"
      class="fixed z-40 right-5 bottom-5 shadow-lg  flex justify-center items-center w-14 h-14 bg-indigo-500 rounded-full focus:outline-none hover:bg-indigo-600 focus:bg-indigo-600 transition duration-300 ease"
    >
      <svg
        class="w-6 h-6 text-white absolute"
        x-show="!open"
        x-transition:enter-start="opacity-0 -rotate-45 scale-75"
        x-transition:enter="transition duration-200 transform ease"
        x-transition:leave="transition duration-100 transform ease"
        x-transition:leave-end="opacity-0 -rotate-45"
        xmlns="http://www.w3.org/2000/svg"
        width="16"
        height="16"
        viewBox="0 0 24 24"
        fill="none"
        stroke="currentColor"
        stroke-width="2"
        stroke-linecap="round"
        stroke-linejoin="round"
      >
        <path
          d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"
        ></path>
      </svg>
      <i class=""></i>
      <svg
        class="w-6 h-6 text-white absolute"
        x-show="open"
        x-transition:enter-start="opacity-0 rotate-45 scale-75"
        x-transition:enter="transition duration-200 transform ease"
        x-transition:leave="transition duration-100 transform ease"
        x-transition:leave-end="opacity-0 rotate-45"
        xmlns="http://www.w3.org/2000/svg"
        width="16"
        height="16"
        viewBox="0 0 24 24"
        fill="none"
        stroke="currentColor"
        stroke-width="2"
        stroke-linecap="round"
        stroke-linejoin="round"
      >
        <line x1="18" y1="6" x2="6" y2="18"></line>
        <line x1="6" y1="6" x2="18" y2="18"></line>
      </svg>
    </button>
  </form>
</div>

 -->


	<!-- 	<div class="py-80"></div> -->

</body>
</html>
<%@ include file="footer.jsp"%>
