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

			<section class="bg-black h-full ">


				<div class="container px-5 pt-12 pb-0 mb-0 mx-auto lg:px-20">
					<div class="flex flex-col flex-wrap pb-6 mb-0 text-white ">
						<h1 class="mb-12 text-3xl font-medium text-white">보안</h1>
					</div>
				</div>


				<div class="container px-5 py-0 mx-auto lg:px-20">
					<div
						class="flex flex-wrap items-end justify-center w-full mt-10 transition duration-500 ease-in-out transform bg-black border-2 border-gray-600 rounded-lg hover:border-white ">
						<div class="w-3/4 xl:w-1/4 md:w-1/4">
							<div class="relative flex flex-col h-full p-8">
								<h2
									class="mb-4 font-semibold tracking-widest text-white uppercase title-font">
									비밀번호</h2>
								<p
									class="flex items-center mb-2 text-lg font-normal tracking-wide text-white">
									<span
										class="inline-flex items-center justify-center flex-shrink-0 w-5 h-5 mr-2 text-white rounded-full bg-blue-1300">
										<svg fill="none" stroke="currentColor" stroke-linecap="round"
											stroke-linejoin="round" stroke-width="2.5" class="w-4 h-4"
											viewBox="0 0 24 24">
                                        <path d="M20 6L9 17l-5-5"></path>
                                    </svg>
									</span>계정보안을 위해 비밀번호를 주기적으로 변경할 것을 권해드립니다.
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
									</span>비밀번호: 비밀번호를 변경해주세요.
								</p>

							</div>
						</div>


						<div class="w-1/4 xl:w-1/4 md:w-1/4 lg:ml-auto">
							<div class="relative flex flex-col h-full p-8">

								<button
									class="w-full px-4 py-2 mx-0 my-20 mt-3 text-blue-100 transition duration-500 ease-in-out transform bg-blue-600 border-blue-600 rounded-md items-centerw-full text-md focus:shadow-outline focus:outline-none focus:ring-2 ring-offset-current ring-offset-2 hover:bg-blue-800 ">
									업데이트</button>

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
									로그인 기록</h2>
							</div>
							<div
								class="align-middle inline-block min-w-min shadow overflow-hidden bg-black shadow-dashboard px-10 pt-3 rounded-bl-lg rounded-br-lg">
								<table class="min-w-full">
									<thead>
										<tr>
											<th
												class="px-6 py-3 border-b-2 border-gray-300 text-left leading-4 text-white tracking-wider">로그인 순번</th>
											<th
												class="px-72 py-3 border-b-2 border-gray-300 text-left text-sm leading-4 text-white tracking-wider">로그인 시간</th>
											<th
												class="px-6 py-3 border-b-2 border-gray-300 text-left text-sm leading-4 text-white tracking-wider">종료 시간
												</th>
											<th class="px-6 py-3 border-b-2 border-gray-300"></th>
										</tr>
									</thead>
									<tbody class="bg-black">
										<tr>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="flex items-center">
													<div>
														<div class="text-sm leading-5 text-white">1번</div>
													</div>
												</div>
											</td>
											<td
												class="px-72 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="text-sm leading-5 text-white">날짜1</div>
											</td>

											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-white text-sm leading-5">종료1</td>
											
										</tr>


										<tr>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="flex items-center">
													<div>
														<div class="text-sm leading-5 text-white">2번</div>
													</div>
												</div>
											</td>
											<td
												class="px-72 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="text-sm leading-5 text-white">날짜2</div>
											</td>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-white text-sm leading-5">종료2</td>
											
										</tr>
										<tr>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="flex items-center">
													<div>
														<div class="text-sm leading-5 text-white">3번</div>
													</div>
												</div>
											</td>
											<td
												class="px-72 py-4 whitespace-no-wrap border-b border-gray-500">
												<div class="text-sm leading-5 text-white">날짜3</div>
											</td>
											<td
												class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-white text-sm leading-5">종료3</td>
											
										</tr>
									</tbody>
								</table>
							
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
</body>
</html>