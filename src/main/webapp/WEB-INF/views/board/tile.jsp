<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<section
		class="flex flex-row flex-wrap mx-auto items-center  place-content-center">


		<!-- Card Component -->
		<a href="${gameList.get(0).getG_URL()}">
			<div
				class="transition-all duration-150 flex w-full px-4 py-6 md:w-1/2 lg:w-1/3">
				<div
					class="flex flex-col items-stretch min-h-full pb-4 mb-6 transition-all duration-150 bg-white rounded-lg shadow-lg hover:shadow-2xl">

					<div class="md:flex-shrink-0">
						<img src="${ gameList.get(0).getG_IMG()}" alt="Blog Cover"
							class="object-cover w-full rounded-lg rounded-b-none md:h-56" />
					</div>
					<div
						class="flex items-center justify-between px-4 py-2 overflow-hidden">

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
						<a href="${gameList.get(0).getG_URL()}" class="hover:underline">
							<h2 class="text-2xl font-bold tracking-normal text-gray-800">
								${gameList.get(0).getG_NAME()}</h2>
						</a>
					</div>
					<hr class="border-gray-300" />
					<p
						class="flex flex-row flex-wrap w-full px-4 py-2 overflow-hidden text-sm text-justify text-gray-700">
						${gameList.get(0).getG_GAME_INTRODUCTION()}</p>
					<hr class="border-gray-300" />
					<section class="px-4 py-2 mt-2">
						<div class="flex items-center justify-between">
							<div class="flex items-center flex-1">
								<img class="object-cover h-10 rounded-full"
									src="https://thumbs.dreamstime.com/b/default-avatar-photo-placeholder-profile-icon-eps-file-easy-to-edit-default-avatar-photo-placeholder-profile-icon-124557887.jpg"
									alt="Avatar" />
								<div class="flex flex-col mx-2">
									<a href="${gameList.get(0).getG_URL()}" class="font-semibold text-gray-700 hover:underline">
										${gameList.get(0).getG_CORPORATE_NAME()} </a> <span
										class="mx-1 text-xs text-gray-600">28 Sep 2020</span>
								</div>
							</div>
							<p class="mt-1 text-xs text-gray-600">9 minutes read</p>
						</div>
					</section>
				</div>
			</div>
		</a> <a href="${gameList.get(1).getG_URL()}">
			<div
				class="transition-all duration-150 flex w-full px-4 py-6 md:w-1/2 lg:w-1/3">
				<div
					class="flex flex-col items-stretch min-h-full pb-4 mb-6 transition-all duration-150 bg-white rounded-lg shadow-lg hover:shadow-2xl">

					<div class="md:flex-shrink-0">
						<img src="${ gameList.get(1).getG_IMG()}" alt="Blog Cover"
							class="object-cover w-full rounded-lg rounded-b-none md:h-56" />
					</div>
					<div
						class="flex items-center justify-between px-4 py-2 overflow-hidden">

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
								${gameList.get(1).getG_NAME()}</h2>
						</a>
					</div>
					<hr class="border-gray-300" />
					<p
						class="flex flex-row flex-wrap w-full px-4 py-2 overflow-hidden text-sm text-justify text-gray-700">
						${gameList.get(1).getG_GAME_INTRODUCTION()}</p>
					<hr class="border-gray-300" />
					<section class="px-4 py-2 mt-2">
						<div class="flex items-center justify-between">
							<div class="flex items-center flex-1">
								<img class="object-cover h-10 rounded-full"
									src="https://thumbs.dreamstime.com/b/default-avatar-photo-placeholder-profile-icon-eps-file-easy-to-edit-default-avatar-photo-placeholder-profile-icon-124557887.jpg"
									alt="Avatar" />
								<div class="flex flex-col mx-2">
									<a href="" class="font-semibold text-gray-700 hover:underline">
										${gameList.get(1).getG_CORPORATE_NAME()} </a> <span
										class="mx-1 text-xs text-gray-600">28 Sep 2020</span>
								</div>
							</div>
							<p class="mt-1 text-xs text-gray-600">9 minutes read</p>
						</div>
					</section>
				</div>
			</div>
		</a> <a href="${gameList.get(2).getG_URL()}">
			<div
				class="transition-all duration-150 flex w-full px-4 py-6 md:w-1/2 lg:w-1/3">
				<div
					class="flex flex-col items-stretch min-h-full pb-4 mb-6 transition-all duration-150 bg-white rounded-lg shadow-lg hover:shadow-2xl">

					<div class="md:flex-shrink-0">
						<img src="${ gameList.get(2).getG_IMG()}" alt="Blog Cover"
							class="object-cover w-full rounded-lg rounded-b-none md:h-56" />
					</div>
					<div
						class="flex items-center justify-between px-4 py-2 overflow-hidden">

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
						<a href="${gameList.get(2).getG_URL()}" class="hover:underline">
							<h2 class="text-2xl font-bold tracking-normal text-gray-800">
								${gameList.get(2).getG_NAME()}</h2>
						</a>
					</div>
					<hr class="border-gray-300" />
					<p
						class="flex flex-row flex-wrap w-full px-4 py-2 overflow-hidden text-sm text-justify text-gray-700">
						${gameList.get(3).getG_GAME_INTRODUCTION()}</p>
					<hr class="border-gray-300" />
					<section class="px-4 py-2 mt-2">
						<div class="flex items-center justify-between">
							<div class="flex items-center flex-1">
								<img class="object-cover h-10 rounded-full"
									src="https://thumbs.dreamstime.com/b/default-avatar-photo-placeholder-profile-icon-eps-file-easy-to-edit-default-avatar-photo-placeholder-profile-icon-124557887.jpg"
									alt="Avatar" />
								<div class="flex flex-col mx-2">
									<a href="" class="font-semibold text-gray-700 hover:underline">
										${gameList.get(2).getG_CORPORATE_NAME() }</a> <span
										class="mx-1 text-xs text-gray-600">28 Sep 2020</span>
								</div>
							</div>
							<p class="mt-1 text-xs text-gray-600">9 minutes read</p>
						</div>
					</section>
				</div>
			</div>
		</a>
	</section>

	<div class="w-full">
		<section class="flex">

			<div class="px-4">
				<div
					class=" flex flex-col items-stretch  mx-2 bg-white rounded-xl shadow-md overflow-hidden">
					<div class="md:flex">
						<div class="md:flex-shrink-0">
							<img class="h-48 w-full object-cover md:h-full md:w-48"
								src="${ gameList.get(3).getG_IMG()}">
						</div>
						<div class="p-8">
							<div
								class="uppercase tracking-wide text-sm text-indigo-500 font-semibold">${gameList.get(3).getG_NAME()}</div>
							<p class="mt-2 text-gray-500">${gameList.get(3).getG_GAME_INTRODUCTION()}</p>
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
								src="${ gameList.get(4).getG_IMG()}"
								alt="Man looking at item at a store">
						</div>
						<div class="p-8">
							<div
								class="uppercase tracking-wide text-sm text-indigo-500 font-semibold">${gameList.get(4).getG_NAME()}</div>
							<a href="${gameList.get(4).getG_URL()}"
								class="block mt-1 text-lg leading-tight font-medium text-black hover:underline">Come
								and check our new Update!</a>
							<p class="mt-2 text-gray-500">${gameList.get(4).getG_GAME_INTRODUCTION()}</p>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<div
		class="w-full sm:min-h-full md:min-h-full lg\:max-h-full xl:max-h-full ">
		<div
			class="flex flex-col lg:grid lg:gap-4 2xl:gap-6 lg:grid-cols-4 2xl:row-span-2 2xl:pb-8 ml-2 pt-4 px-4">
			<!-- Beginning of the component about Daniel Clifford -->
			<a href="">
				<div
					class="bg-indigo-600 lg:order-1 lg:row-span-1 2xl:row-span-1 lg:col-span-2 rounded-lg shadow-xl mb-5 lg:mb-0">
					<div class="mx-4 my-8 2xl:mx-10">
						<img
							class="w-70 sm:w-full md:w-full lg:w-full 2xl:w-full h-30 md:h-30 lg:h-30 2xl:h-30 rounded-b border-2 ml-1 md:-mt-1 2xl:-mt-4"
							src="${ gameList.get(5).getG_IMG()}" />
						<h1
							class="text-white text-xs md:text-base text-right 2xl:text-2xl pl-32 font-bold lg:pl-36 2xl:pl-50 -mt-8 md:-mt-10 lg:-mt-11 2xl:-mt-20 2xl:mx-8 ">jiseong
							Han</h1>
						<h2
							class="text-white text-opacity-70 text-xs text-right md:text-base 2xl:text-2xl font-bold ">Verified
							Graduate</h2>
					</div>
					<div class="-mt-6 relative">
						<p
							class="text-white text-xl 2xl:text-4xl font-bold px-7 lg:px-9 2xl:pt-6 2xl:mx-2">${gameList.get(5).getG_NAME()}</p>
						<br />
						<p
							class="text-white text-opacity-50 font-medium md:text-sm 2xl:text-3xl px-7 lg:px-9 mb-3 2xl:pb-8 2xl:mx-2">${gameList.get(5).getG_GAME_INTRODUCTION()}</p>
					</div>
				</div>
			</a>
			<!-- Ending of the component about Daniel Clifford -->

			<!-- Beginning of the component about Jonathan Walters -->
			<div
				class="bg-gray-900 lg:order-2 lg:row-span-1 2xl:row-span-1 lg:col-span-1 rounded-lg shadow-xl pb-4 mb-5 lg:mb-0">
				<div class="mx-8 2xl:mx-10 my-10">
					<img
						class="w-full md:w-full 2xl:w-full h-auto md:h-70 2xl:h-70 rounded-b border-2 -ml-1 -mt-2 lg:-mt-4"
						src="${ gameList.get(6).getG_IMG()}" />
					<h1
						class="text-white text-xs md:text-base 2xl:text-2xl text-right font-bold pl-11 md:pl-12 2xl:pl-24 -mt-8 md:-mt-10 2xl:-mt-16">Jonathan
						Walters</h1>
					<h2
						class="text-white text-xs md:text-base 2xl:text-2xl text-right text-opacity-80 font-bold pl-11 md:pl-12 2xl:pl-24">Verified
						Graduate</h2>
				</div>
				<div class="-mt-8 mx-1 lg:mx-2">
					<p
						class="text-white text-lg lg:text-xl 2xl:text-4xl font-semibold pt-1 px-6 2xl:px-8 lg:pl-5 lg:pr-8">${gameList.get(6).getG_NAME()}</p>
					<br />
					<p
						class="text-white text-opacity-50 font-medium md:text-sm 2xl:text-3xl pl-6 lg:pl-5 pr-4 -mt-1 lg:mt-6 2xl:mt-2 2xl:px-8">${gameList.get(6).getG_GAME_INTRODUCTION()}</p>
				</div>
			</div>
			<!-- Ending of the component about Jonathan Walters -->

			<!-- Beginning of the component about Jeanette Harmon -->
			<div
				class="bg-primary-color-white lg:order-3 lg:row-span-2 2xl:row-span-1 lg:col-span-1 rounded-lg shadow-xl mb-5 lg:mb-0 2xl:mb-8">
				<div class="mx-8 my-10 lg:my-8">
					<img
						class="w-full md:w-full lg:w-full 2xl:w-full h-70 md:h-70 lg:h-70 2xl:h-70 rounded-b border-1 -mt-2 -ml-1 lg:-ml-0"
						src="${ gameList.get(7).getG_IMG()}" />
					<h1
						class="text-white text-xs md:text-base 2xl:text-2xl text-right 2xl:text-2xl pl-11 md:pl-12 lg:pl-14 2xl:pl-24 -mt-8 md:-mt-10 lg:-mt-11 2xl:-mt-16">Jeanette
						Harmon</h1>
					<h2
						class="text-white text-xs md:text-base 2xl:text-2xl text-right 2xl:text-2xl pl-11 md:pl-12 lg:pl-14 2xl:pl-24">Verified
						Graduate</h2>
				</div>
				<div class="-mt-4 ml-5 mr-11">
					<p
						class="primary-color-blackish-blue text-xl 2xl:text-4xl font-bold px-2 lg:px-3 -mt-6 lg:-mt-5 2xl:mt-12 2xl:pb-6">${gameList.get(7).getG_NAME()}</p>
					<br />
					<p
						class="primary-color-blackish-blue-opacity font-medium md:text-sm 2xl:text-3xl pl-2 lg:pl-3 lg:pr-4 mb-6 2xl:pt-2 -mt-3">${gameList.get(7).getG_GAME_INTRODUCTION()}</p>
				</div>
			</div>
			<!-- Ending of the component about Jeanette Harmon -->

			<!-- Beginning of the component about Patrick Abrams -->
			<div
				class="bg-purple-800 lg:order-4 lg:row-span-2 2xl:row-span-1 col-span-2 rounded-lg shadow-xl mb-5 lg:mb-0 2xl:mb-8 lg:pb-14 2xl:pb-20">
				<div class="mx-8 my-8">
					<img
						class="w-full md:w-full lg:w-full 2xl:w-full h-70 md:h-70 lg:h-70 2xl:h-70 rounded-bl border-2 lg:-mt-3"
						src="${ gameList.get(8).getG_IMG()}" />
					<h1
						class="text-white text-xs text-right md:text-base 2xl:text-2xl pl-12 md:pl-14 2xl:pl-24 -mt-8 md:-mt-10 lg:-mt-11 2xl:-mt-16">Patrick
						Abrams</h1>
					<h2
						class="text-white text-xs text-right md:text-base 2xl:text-2xl text-opacity-50 pl-12 md:pl-14 2xl:pl-24">Verified
						Graduate</h2>
				</div>
				<div class="px-3 -mt-3 mb-5 lg:mb-0">
					<p
						class="text-white text-lg 2xl:text-4xl font-semibold px-4 -mt-3 lg:-mt-6 2xl:mt-8">${gameList.get(8).getG_NAME()}</p>
					<br />
					<p
						class="text-white text-opacity-50 font-medium md:text-sm 2xl:text-3xl px-4 mt-1 lg:-mt-3 2xl:mt-6">${gameList.get(8).getG_GAME_INTRODUCTION()}</p>
				</div>
			</div>
			<!-- Ending of the component about Patrick Abrams -->

			<!-- Beginning of the component about Kira Whittle -->
			<div
				class="bg-primary-color-white lg:order-2 lg:row-span-1 lg:col-span-1 rounded-lg shadow-xl mb-5 lg:pb-4 2xl:h-screen">
				<div class="mx-8 my-8 lg:pl-1">
					<img
						class="w-full md:w-full lg:w-full 2xl:w-full h-70 md:h-70 lg:h-70 2xl:h-70 rounded-bl border-2 lg:-mt-4 -ml-1 lg:-ml-4"
						src="${ gameList.get(9).getG_IMG()}" />
					<h1
						class="text-white text-xs text-right md:text-base font-bold 2xl:text-2xl pl-10 md:pl-12 2xl:pl-24 -mt-8 md:-mt-10 lg:-mt-12 2xl:-mt-16">Kira
						Whittle</h1>
					<h2
						class="text-white text-xs text-right md:text-base font-bold 2xl:text-2xl pl-10 md:pl-12 2xl:pl-24">Verified
						Graduate</h2>
				</div>
				<div class="px-3 lg:px-5 lg:-mt-4 mb-5 lg:mb-0">
					<p
						class="primary-color-blackish-blue text-xl 2xl:text-4xl font-semibold px-4 lg:px-0 -mt-2 lg:-mt-0">${gameList.get(9).getG_NAME()}</p>
					<br />
					<p
						class="primary-color-blackish-blue-opacity font-medium md:text-sm 2xl:text-3xl px-4 lg:px-0 2xl:px-4 lg:pr-3 mt-2 lg:-mt-1 2xl:mt-2 2xl:pb-64">${gameList.get(9).getG_GAME_INTRODUCTION()}</p>
				</div>
			</div>
			<!-- Ending of the component about Kira Whittle -->

			<div
				class="bg-gray-900 lg:order-2 lg:row-span-1 2xl:row-span-1 lg:col-span-1 rounded-lg shadow-xl pb-4 mb-5 lg:mb-0">
				<div class="mx-8 2xl:mx-10 my-10">
					<img
						class="w-full md:w-full 2xl:w-full h-70 md:h-80 2xl:h-80 rounded-b border-2 -ml-1 -mt-2 lg:-mt-4"
						src="${ gameList.get(1).getG_IMG()}" />
					<h1
						class="text-white text-xs md:text-base 2xl:text-2xl text-right font-bold pl-11 md:pl-12 2xl:pl-24 -mt-8 md:-mt-10 2xl:-mt-16">Jonathan
						Walters</h1>
					<h2
						class="text-white text-xs md:text-base 2xl:text-2xl text-right text-opacity-80 font-bold pl-11 md:pl-12 2xl:pl-24">Verified
						Graduate</h2>
				</div>
				<div class="-mt-8 mx-1 lg:mx-2">
					<p
						class="text-white text-lg lg:text-xl 2xl:text-4xl font-semibold pt-1 px-6 2xl:px-8 lg:pl-5 lg:pr-8">${gameList.get(1).getG_NAME()}</p>
					<br />
					<p
						class="text-white text-opacity-50 font-medium md:text-sm 2xl:text-3xl pl-6 lg:pl-5 pr-4 -mt-1 lg:mt-6 2xl:mt-2 2xl:px-8">${gameList.get(1).getG_GAME_INTRODUCTION()}</p>
				</div>
			</div>
		</div>



	</div>

</body>
</html>