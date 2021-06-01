<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://unpkg.com/tailwindcss@0.3.0/dist/tailwind.min.css"
	rel="stylesheet">
<title>MyPage</title>


</head>

<body>
	<div class="flex min-h-screen h-full">
		<nav class="w-64 flex-shrink-0">
			<div class="flex-auto bg-gray-900 h-full">
				<div class="flex flex-col overflow-y-auto">
					<ul class="relative m-0 p-0 list-none h-full">
						<li
							class="text-white text-2xl p-4 w-full flex relative shadow-sm justify-start bg-gray-800 border-b-2 border-gray-700">
							내 정보</li>
						<li
							class="text-white p-4 w-full flex relative shadow-sm justify-start bg-gray-800 border-b-2 border-gray-700">

							<div class="flex-auto my-1">
								<span>계정정보</span>
							</div>
						</li>
						<li
							class="text-white p-4 w-full flex relative shadow-sm justify-start bg-gray-800 border-b-2 border-gray-700">

							<div class="flex-auto my-1">
								<span>계정상세정보</span>
							</div>
						</li>
						<li
							class="text-white p-4 w-full flex relative shadow-sm justify-start bg-gray-800 border-b-2 border-gray-700">


							<div class="flex-auto my-1">
								<span>보안</span>
							</div>
						</li>
						<li
							class="text-white p-4 w-full flex relative shadow-sm justify-start bg-gray-800 border-b-2 border-gray-700">


							<div class="flex-auto my-1">
								<span>정보공개설정</span>
							</div>
						</li>
						<li
							class="text-white p-4 w-full flex relative shadow-sm justify-start bg-gray-800 border-b-2 border-gray-700">


							<div class="flex-auto my-1">
								<span>연결</span>
							</div>
						</li>																	
					</ul>
				</div>
			</div>
		</nav>

		<div class="flex flex-col w-full">




			<section class="bg-black ">
			
				
				
				
			
				<div class="container px-5 pt-12 pb-0 mb-0 mx-auto lg:px-20">
					<div class="flex flex-col flex-wrap pb-6 mb-0 text-white ">
						<h1 class="mb-12 text-3xl font-medium text-white">계정정보</h1>
					</div>
				</div>
				
								
				
				<div class="container px-5 py-0 mx-auto lg:px-20">
					<div
						class="flex flex-wrap items-end justify-start w-full mt-10 transition duration-500 ease-in-out transform bg-black border-2 border-gray-600 rounded-lg hover:border-white ">
						<div class="w-3/4 xl:w-1/4 md:w-3/4">
							<div class="relative flex flex-col h-full p-8">
								<h2
									class="mb-4 font-semibold tracking-widest text-white uppercase title-font">
									내정보</h2>
								<p
									class="flex items-center mb-2 text-lg font-normal tracking-wide text-white">
									<span
										class="inline-flex items-center justify-center flex-shrink-0 w-5 h-5 mr-2 text-white rounded-full bg-blue-1300">
										<svg fill="none" stroke="currentColor" stroke-linecap="round"
											stroke-linejoin="round" stroke-width="2.5" class="w-4 h-4"
											viewBox="0 0 24 24">
                                        <path d="M20 6L9 17l-5-5"></path>
                                    </svg>
									</span>이름:
								</p>
								<p
									class="flex items-center mb-2 text-lg font-normal tracking-wide text-white">
									<span
										class="inline-flex items-center justify-center flex-shrink-0 w-5 h-5 mr-2 text-white rounded-full bg-blue-1300">
										<svg fill="none" stroke="currentColor" stroke-linecap="round"
											stroke-linejoin="round" stroke-width="2.5" class="w-4 h-4"
											viewBox="0 0 24 24">
                                        <path d="M20 6L9 17l-5-5"></path>
                                    </svg>
									</span>이메일:
								</p>
								<p
									class="flex items-center mb-2 text-lg font-normal tracking-wide text-white">
									<span
										class="inline-flex items-center justify-center flex-shrink-0 w-5 h-5 mr-2 text-white rounded-full bg-blue-1300">
										<svg fill="none" stroke="currentColor" stroke-linecap="round"
											stroke-linejoin="round" stroke-width="2.5" class="w-4 h-4"
											viewBox="0 0 24 24">
                                        <path d="M20 6L9 17l-5-5"></path>
                                    </svg>
									</span>휴대전화:010
								</p>
							</div>
						</div>


						<div class="w-1/4 xl:w-1/4 md:w-1/4 lg:ml-auto">
							<div class="relative flex flex-col h-full p-8">

								<button
									class="w-full px-4 py-2 mx-0 my-20 mt-3 text-blue-100 transition duration-500 ease-in-out transform bg-blue-600 border-blue-600 rounded-md items-centerw-full text-md focus:shadow-outline focus:outline-none focus:ring-2 ring-offset-current ring-offset-2 hover:bg-blue-800 ">
									계정상세정보</button>

							</div>
						</div>
					</div>
				</div>


				<div class="container px-5 py-3 mx-auto lg:px-20">


					<div
						class="flex flex-wrap items-end justify-start w-full mt-10 transition duration-500 ease-in-out transform bg-black border-2 border-gray-600 rounded-lg hover:border-white ">

						<div
							class="-my-2 py-2 overflow-x-auto sm:-mx-6 sm:px-6 lg:-mx-8 pr-10 lg:px-8 ">
							<div
								class="align-middle rounded-tl-lg rounded-tr-lg inline-block w-full py-4 overflow-hidden bg-black shadow-lg px-12">
								<h2
									class="mb-4 font-semibold tracking-widest text-white uppercase title-font">
									최근 작성한 게시물</h2>
							</div>
							<div
								class="align-middle inline-block min-w-min shadow overflow-hidden bg-black shadow-dashboard px-10 pt-3 rounded-bl-lg rounded-br-lg">
								<table class="min-w-full">
									<thead>
										<tr>
											<th
												class="px-6 py-3 border-b-2 border-gray-300 text-left leading-4 text-white tracking-wider">ID</th>
											<th
												class="px-56 py-3 border-b-2 border-gray-300 text-left text-sm leading-4 text-white tracking-wider">Fullname</th>
											<th
												class="px-6 py-3 border-b-2 border-gray-300 text-left text-sm leading-4 text-white tracking-wider">Created
												At</th>
											<th class="px-6 py-3 border-b-2 border-gray-300"></th>
										</tr>
									</thead>
									<tbody class="bg-black">
										<tr>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="flex items-center">
													<div>
														<div class="text-sm leading-5 text-white">#1</div>
													</div>
												</div>
											</td>
											<td
												class="px-56 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="text-sm leading-5 text-white">Damilare
													Anjorin</div>
											</td>

											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-white text-sm leading-5">September
												12</td>
											<td
												class="px-6 py-4 whitespace-no-wrap text-right border-b border-gray-500 text-sm leading-5">
												<button
													class="px-5 py-2 border-blue-500 border text-white rounded transition duration-300 hover:bg-blue-700 hover:text-white focus:outline-none">View
													Details</button>
											</td>
										</tr>


										<tr>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="flex items-center">
													<div>
														<div class="text-sm leading-5 text-white">#1</div>
													</div>
												</div>
											</td>
											<td
												class="px-56 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="text-sm leading-5 text-white">Damilare
													Anjorin</div>
											</td>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-white text-sm leading-5">September
												12</td>
											<td
												class="px-6 py-4 whitespace-no-wrap text-right border-b border-gray-500 text-sm leading-5">
												<button
													class="px-5 py-2 border-blue-500 border text-white rounded transition duration-300 hover:bg-blue-700 hover:text-white focus:outline-none">View
													Details</button>
											</td>
										</tr>
										<tr>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="flex items-center">
													<div>
														<div class="text-sm leading-5 text-white">#1</div>
													</div>
												</div>
											</td>
											<td
												class="px-56 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="text-sm leading-5 text-white">Damilare
													Anjorin</div>
											</td>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-white text-sm leading-5">September
												12</td>
											<td
												class="px-6 py-4 whitespace-no-wrap text-right border-b border-gray-500 text-sm leading-5">
												<button
													class="px-5 py-2 border-blue-500 border text-white rounded transition duration-300 hover:bg-blue-700 hover:text-white focus:outline-none">View
													Details</button>
											</td>
										</tr>
									</tbody>
								</table>
								<div
									class="sm:flex-1 sm:flex sm:items-center sm:justify-between mt-4 work-sans">
									<div>
										<p class="text-sm leading-5 text-white">
											Showing <span class="font-medium">1</span> to <span
												class="font-medium">200</span> of <span class="font-medium">2000</span>
											results
										</p>
									</div>
									<div>
										<nav class="relative z-0 inline-flex shadow-sm">
											<div>
												<a href="#"
													class="relative inline-flex items-center px-2 py-2 rounded-l-md border border-gray-300 bg-black text-sm leading-5 font-medium text-white hover:text-gray-400 focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-gray-100 active:text-gray-500 transition ease-in-out duration-150"
													aria-label="Previous"
													v-on:click.prevent="changePage(pagination.current_page - 1)">
													<svg class="h-5 w-5" viewBox="0 0 20 20"
														fill="currentColor">
                            <path fill-rule="evenodd"
															d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
															clip-rule="evenodd" />
                        </svg>
												</a>
											</div>
											<div>
												<a href="#"
													class="-ml-px relative inline-flex items-center px-4 py-2 border border-gray-300 bg-black text-sm leading-5 font-medium text-white focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-tertiary active:text-gray-700 transition ease-in-out duration-150 hover:bg-tertiary">
													1 </a> <a href="#"
													class="-ml-px relative inline-flex items-center px-4 py-2 border border-gray-300 bg-black text-sm leading-5 font-medium text-white focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-tertiary active:text-gray-700 transition ease-in-out duration-150 hover:bg-tertiary">
													2 </a> <a href="#"
													class="-ml-px relative inline-flex items-center px-4 py-2 border border-gray-300 bg-black text-sm leading-5 font-medium text-white focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-tertiary active:text-gray-700 transition ease-in-out duration-150 hover:bg-tertiary">
													3 </a>
											</div>
											<div v-if="pagination.current_page < pagination.last_page">
												<a href="#"
													class="-ml-px relative inline-flex items-center px-2 py-2 rounded-r-md border border-gray-300 bg-black text-sm leading-5 font-medium text-white hover:text-gray-400 focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-black active:text-white transition ease-in-out duration-150"
													aria-label="Next"> <svg class="h-5 w-5"
														viewBox="0 0 20 20" fill="currentColor">
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
						</div>
					</div>
				</div>
				
				
				
				
				<div class="container px-5 py-3 mx-auto lg:px-20">


					<div
						class="flex flex-wrap items-end justify-start w-full mt-10 transition duration-500 ease-in-out transform bg-black border-2 border-gray-600 rounded-lg hover:border-white ">

						<div
							class="-my-2 py-2 overflow-x-auto sm:-mx-6 sm:px-6 lg:-mx-8 pr-10 lg:px-8 ">
							<div
								class="align-middle rounded-tl-lg rounded-tr-lg inline-block w-full py-4 overflow-hidden bg-black shadow-lg px-12">
								<h2
									class="mb-4 font-semibold tracking-widest text-white uppercase title-font">
									최근 작성한 댓글</h2>
							</div>
							<div
								class="align-middle inline-block min-w-min shadow overflow-hidden bg-black shadow-dashboard px-10 pt-3 rounded-bl-lg rounded-br-lg">
								<table class="min-w-full">
									<thead>
										<tr>
											<th
												class="px-6 py-3 border-b-2 border-gray-300 text-left leading-4 text-white tracking-wider">ID</th>
											<th
												class="px-56 py-3 border-b-2 border-gray-300 text-left text-sm leading-4 text-white tracking-wider">Fullname</th>
											<th
												class="px-6 py-3 border-b-2 border-gray-300 text-left text-sm leading-4 text-white tracking-wider">Created
												At</th>
											<th class="px-6 py-3 border-b-2 border-gray-300"></th>
										</tr>
									</thead>
									<tbody class="bg-black">
										<tr>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="flex items-center">
													<div>
														<div class="text-sm leading-5 text-white">#1</div>
													</div>
												</div>
											</td>
											<td
												class="px-56 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="text-sm leading-5 text-white">Damilare
													Anjorin</div>
											</td>

											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-white text-sm leading-5">September
												12</td>
											<td
												class="px-6 py-4 whitespace-no-wrap text-right border-b border-gray-500 text-sm leading-5">
												<button
													class="px-5 py-2 border-blue-500 border text-white rounded transition duration-300 hover:bg-blue-700 hover:text-white focus:outline-none">View
													Details</button>
											</td>
										</tr>


										<tr>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="flex items-center">
													<div>
														<div class="text-sm leading-5 text-white">#1</div>
													</div>
												</div>
											</td>
											<td
												class="px-56 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="text-sm leading-5 text-white">Damilare
													Anjorin</div>
											</td>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-white text-sm leading-5">September
												12</td>
											<td
												class="px-6 py-4 whitespace-no-wrap text-right border-b border-gray-500 text-sm leading-5">
												<button
													class="px-5 py-2 border-blue-500 border text-white rounded transition duration-300 hover:bg-blue-700 hover:text-white focus:outline-none">View
													Details</button>
											</td>
										</tr>
										<tr>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="flex items-center">
													<div>
														<div class="text-sm leading-5 text-white">#1</div>
													</div>
												</div>
											</td>
											<td
												class="px-56 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="text-sm leading-5 text-white">Damilare
													Anjorin</div>
											</td>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-white text-sm leading-5">September
												12</td>
											<td
												class="px-6 py-4 whitespace-no-wrap text-right border-b border-gray-500 text-sm leading-5">
												<button
													class="px-5 py-2 border-blue-500 border text-white rounded transition duration-300 hover:bg-blue-700 hover:text-white focus:outline-none">View
													Details</button>
											</td>
										</tr>
									</tbody>
								</table>
								<div
									class="sm:flex-1 sm:flex sm:items-center sm:justify-between mt-4 work-sans">
									<div>
										<p class="text-sm leading-5 text-white">
											Showing <span class="font-medium">1</span> to <span
												class="font-medium">200</span> of <span class="font-medium">2000</span>
											results
										</p>
									</div>
									<div>
										<nav class="relative z-0 inline-flex shadow-sm">
											<div>
												<a href="#"
													class="relative inline-flex items-center px-2 py-2 rounded-l-md border border-gray-300 bg-black text-sm leading-5 font-medium text-white hover:text-gray-400 focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-gray-100 active:text-gray-500 transition ease-in-out duration-150"
													aria-label="Previous"
													v-on:click.prevent="changePage(pagination.current_page - 1)">
													<svg class="h-5 w-5" viewBox="0 0 20 20"
														fill="currentColor">
                            <path fill-rule="evenodd"
															d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
															clip-rule="evenodd" />
                        </svg>
												</a>
											</div>
											<div>
												<a href="#"
													class="-ml-px relative inline-flex items-center px-4 py-2 border border-gray-300 bg-black text-sm leading-5 font-medium text-white focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-tertiary active:text-gray-700 transition ease-in-out duration-150 hover:bg-tertiary">
													1 </a> <a href="#"
													class="-ml-px relative inline-flex items-center px-4 py-2 border border-gray-300 bg-black text-sm leading-5 font-medium text-white focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-tertiary active:text-gray-700 transition ease-in-out duration-150 hover:bg-tertiary">
													2 </a> <a href="#"
													class="-ml-px relative inline-flex items-center px-4 py-2 border border-gray-300 bg-black text-sm leading-5 font-medium text-white focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-tertiary active:text-gray-700 transition ease-in-out duration-150 hover:bg-tertiary">
													3 </a>
											</div>
											<div v-if="pagination.current_page < pagination.last_page">
												<a href="#"
													class="-ml-px relative inline-flex items-center px-2 py-2 rounded-r-md border border-gray-300 bg-black text-sm leading-5 font-medium text-white hover:text-gray-400 focus:z-10 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:bg-black active:text-white transition ease-in-out duration-150"
													aria-label="Next"> <svg class="h-5 w-5"
														viewBox="0 0 20 20" fill="currentColor">
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
						</div>
					</div>
				</div>
				
				





			</section>
		</div>
	</div>
</body>

</html>