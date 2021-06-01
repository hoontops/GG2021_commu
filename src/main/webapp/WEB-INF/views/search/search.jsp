<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<div>
  <div
    class="flex flex-col sm:flex-row sm:h-20 px-6 border-b border-gray-300 bg-white relative z-50"
  >
    <div class="h-20 w-full flex items-center justify-between sm:h-auto">
      <a class="no-underline block h-8"
        ><img src="https://gustui.s3.amazonaws.com/gustlogo.png" class="h-full"
      /></a>
      <div class="items-center flex">
        <svg
          aria-hidden="true"
          focusable="false"
          data-prefix="fas"
          data-icon="question"
          class="svg-inline--fa fa-question fa-w-12 text-xl cursor-pointer"
          role="img"
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 384 512"
        >
          <path
            fill="currentColor"
            d="M202.021 0C122.202 0 70.503 32.703 29.914 91.026c-7.363 10.58-5.093 25.086 5.178 32.874l43.138 32.709c10.373 7.865 25.132 6.026 33.253-4.148 25.049-31.381 43.63-49.449 82.757-49.449 30.764 0 68.816 19.799 68.816 49.631 0 22.552-18.617 34.134-48.993 51.164-35.423 19.86-82.299 44.576-82.299 106.405V320c0 13.255 10.745 24 24 24h72.471c13.255 0 24-10.745 24-24v-5.773c0-42.86 125.268-44.645 125.268-160.627C377.504 66.256 286.902 0 202.021 0zM192 373.459c-38.196 0-69.271 31.075-69.271 69.271 0 38.195 31.075 69.27 69.271 69.27s69.271-31.075 69.271-69.271-31.075-69.27-69.271-69.27z"
          ></path>
        </svg>
        <div class="cursor-pointer my-2 ml-6 relative rounded-full w-12 h-12">
          <img
            src="https://gustui.s3.amazonaws.com/avatar.png"
            class="absolute left-0 top-0 w-full h-full rounded-full object-cover"
          />
          <div
            class="absolute rounded-full right-0 bottom-0 w-4 h-4 bg-gray-200"
          ></div>
        </div>
      </div>
    </div>
    <div
      class="w-full mx-auto mt-2 mb-4 sm:mx-0 sm:mb-0 sm:mt-0 sm:absolute sm:left-1/2 sm:transform sm:-translate-x-1/2 sm:w-1/2 sm:h-full justify-center items-center block sm:flex"
    >
      <form class="relative w-full">
        <input
          type="search"
          class="w-full max-w-full border border-gray-300 rounded-sm pr-4 pl-10 py-3 outline-none transition-colors duration-150 ease-in-out focus:border-blue-400"
          placeholder="Search for something..."
        /><svg
          aria-hidden="true"
          focusable="false"
          data-prefix="fas"
          data-icon="search"
          class="svg-inline--fa fa-search fa-w-16 absolute left-0 ml-4 top-1/2 transform -translate-y-1/2 text-gray-300"
          role="img"
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 512 512"
        >
          
        </svg>
      </form>
    </div>
  </div>
  <div class="w-full flex flex-col lg:flex-row lg:px-6">
    <div class="w-full lg:w-56 relative">
      <div
        class="py-3 bg-white w-full flex items-center justify-center lg:hidden cursor-pointer font-bold"
      >
        Change Filters
        <svg
          aria-hidden="true"
          focusable="false"
          data-prefix="fas"
          data-icon="sliders-h"
          class="svg-inline--fa fa-sliders-h fa-w-16 text-xl ml-2"
          role="img"
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 512 512"
        >
          <path
            fill="currentColor"
            d="M496 384H160v-16c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v16H16c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h80v16c0 8.8 7.2 16 16 16h32c8.8 0 16-7.2 16-16v-16h336c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm0-160h-80v-16c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v16H16c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h336v16c0 8.8 7.2 16 16 16h32c8.8 0 16-7.2 16-16v-16h80c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm0-160H288V48c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v16H16C7.2 64 0 71.2 0 80v32c0 8.8 7.2 16 16 16h208v16c0 8.8 7.2 16 16 16h32c8.8 0 16-7.2 16-16v-16h208c8.8 0 16-7.2 16-16V80c0-8.8-7.2-16-16-16z"
          ></path>
        </svg>
      </div>
      <!-- On mobile hide and show this section using hidden and flex begin -->
      <div
        class="hidden absolute left-0 px-6 lg:px-auto bg-white w-full lg:w-auto z-50 mt-10 lg:mt-0 lg:sticky top-0 pt-6 pb-24 lg:flex flex-col lg:max-h-screen"
      >
        <div class="border-b border-gray-300">
          <a class="text-sm font-bold text-blue-400 underline"
            >Change Address</a
          >
          <div class="my-6">
            <div class="">
              <div class="">
                <div class="flex items-center mb-3 last:mb-0">
                  <input
                    name="service"
                    type="radio"
                    class="appearance-none w-6 h-6 border border-gray-300 rounded-full outline-none cursor-pointer checked:bg-blue-400"
                    id="delivery-service"
                    value="delivery"
                    checked=""
                  /><label class="ml-2 text-sm" for="delivery-service"
                    >Delivery</label
                  >
                </div>
                <div class="flex items-center mb-3 last:mb-0">
                  <input
                    name="service"
                    type="radio"
                    class="appearance-none w-6 h-6 border border-gray-300 rounded-full outline-none cursor-pointer checked:bg-blue-400"
                    id="curbside-service"
                    value="curbside"
                  /><label class="ml-2 text-sm" for="curbside-service"
                    >Curbside</label
                  >
                </div>
                <div class="flex items-center mb-3 last:mb-0">
                  <input
                    name="service"
                    type="radio"
                    class="appearance-none w-6 h-6 border border-gray-300 rounded-full outline-none cursor-pointer checked:bg-blue-400"
                    id="orderin-service"
                    value="orderin"
                  /><label class="ml-2 text-sm" for="orderin-service"
                    >Order In</label
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="flex-1 lg:overflow-y-scroll">
          <div class="border-b border-gray-300 py-6">
            <div class="flex items-center justify-between cursor-pointer">
              <h5 class="text-sm font-bold">Sort</h5>
              <svg
                aria-hidden="true"
                focusable="false"
                data-prefix="fas"
                data-icon="chevron-up"
                class="svg-inline--fa fa-chevron-up fa-w-14 text-blue-400 text-base"
                role="img"
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 448 512"
              >
               
              </svg>
            </div>
            <div class="my-6">
              <div class="">
                <div class="">
                  <div class="flex items-center mb-3 last:mb-0">
                    <input
                      name="sort"
                      type="radio"
                      class="appearance-none w-6 h-6 border border-gray-300 rounded-full outline-none cursor-pointer checked:bg-blue-400"
                      id="distance-sort"
                      value="distance"
                    /><label class="ml-2 text-sm" for="distance-sort"
                      >Distance</label
                    >
                  </div>
                  <div class="flex items-center mb-3 last:mb-0">
                    <input
                      name="sort"
                      type="radio"
                      class="appearance-none w-6 h-6 border border-gray-300 rounded-full outline-none cursor-pointer checked:bg-blue-400"
                      id="popular-sort"
                      value="popular"
                    /><label class="ml-2 text-sm" for="popular-sort"
                      >Popularity</label
                    >
                  </div>
                  <div class="flex items-center mb-3 last:mb-0">
                    <input
                      name="sort"
                      type="radio"
                      class="appearance-none w-6 h-6 border border-gray-300 rounded-full outline-none cursor-pointer checked:bg-blue-400"
                      id="topRated-sort"
                      value="topRated"
                      checked=""
                    /><label class="ml-2 text-sm" for="topRated-sort"
                      >Top Rated</label
                    >
                  </div>
                  <div class="flex items-center mb-3 last:mb-0">
                    <input
                      name="sort"
                      type="radio"
                      class="appearance-none w-6 h-6 border border-gray-300 rounded-full outline-none cursor-pointer checked:bg-blue-400"
                      id="atoz-sort"
                      value="atoz"
                    /><label class="ml-2 text-sm" for="atoz-sort">A to Z</label>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="border-b border-gray-300 py-6">
            <div class="flex items-center justify-between cursor-pointer">
              <h5 class="text-sm font-bold">Dietary</h5>
              <svg
                aria-hidden="true"
                focusable="false"
                data-prefix="fas"
                data-icon="chevron-up"
                class="svg-inline--fa fa-chevron-up fa-w-14 text-blue-400 text-base"
                role="img"
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 448 512"
              >
                <path
                  fill="currentColor"
                  d="M240.971 130.524l194.343 194.343c9.373 9.373 9.373 24.569 0 33.941l-22.667 22.667c-9.357 9.357-24.522 9.375-33.901.04L224 227.495 69.255 381.516c-9.379 9.335-24.544 9.317-33.901-.04l-22.667-22.667c-9.373-9.373-9.373-24.569 0-33.941L207.03 130.525c9.372-9.373 24.568-9.373 33.941-.001z"
                ></path>
              </svg>
            </div>
            <div class="my-6">
              <div class="w-full flex items-center">
                <input
                  type="checkbox"
                  name="organic"
                  class="appearance-none w-6 h-6 border border-gray-300 rounded-sm outline-none cursor-pointer checked:bg-blue-400"
                /><label class="ml-2 text-sm" for="organic">Organic</label>
              </div>
            </div>
            <div class="my-6">
              <div class="w-full flex items-center">
                <input
                  type="checkbox"
                  name="gluten-free"
                  class="appearance-none w-6 h-6 border border-gray-300 rounded-sm outline-none cursor-pointer checked:bg-blue-400"
                /><label class="ml-2 text-sm" for="gluten-free"
                  >Gluten Free</label
                >
              </div>
            </div>
            <div class="my-6">
              <div class="w-full flex items-center">
                <input
                  type="checkbox"
                  name="kosher"
                  class="appearance-none w-6 h-6 border border-gray-300 rounded-sm outline-none cursor-pointer checked:bg-blue-400"
                /><label class="ml-2 text-sm" for="kosher">Kosher</label>
              </div>
            </div>
            <div class="my-6">
              <div class="w-full flex items-center">
                <input
                  type="checkbox"
                  name="paleo"
                  class="appearance-none w-6 h-6 border border-gray-300 rounded-sm outline-none cursor-pointer checked:bg-blue-400"
                /><label class="ml-2 text-sm" for="paleo">Paleo</label>
              </div>
            </div>
            <div class="my-6">
              <div class="w-full flex items-center">
                <input
                  type="checkbox"
                  name="vegan"
                  class="appearance-none w-6 h-6 border border-gray-300 rounded-sm outline-none cursor-pointer checked:bg-blue-400"
                /><label class="ml-2 text-sm" for="vegan">Vegan</label>
              </div>
            </div>
            <div class="my-6">
              <div class="w-full flex items-center">
                <input
                  type="checkbox"
                  name="halal"
                  class="appearance-none w-6 h-6 border border-gray-300 rounded-sm outline-none cursor-pointer checked:bg-blue-400"
                /><label class="ml-2 text-sm" for="halal">Halal</label>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- On mobile hide and show this section using hidden and flex end -->
    </div>
    <div class="flex-1 lg:pl-12 py-6 px-6 lg:px-0">
      <div class="mt-12">
        <h1 class="text-3xl font-bold">Recommended For You</h1>
        <div class="grid grid-cols-1 sm:grid-cols-3 xl:grid-cols-4 gap-6 mt-12">
          <a href="#"
            ><div
              class="mx-auto cursor-pointer h-full hover:border-gray-400 transform transition-all duration-200 ease hover:-translate-y-1 shadow-sm w-72 max-w-full border border-gray-300 rounded-sm bg-white"
            >
              <div class="w-full h-48">
                <img
                  src="https://images.unsplash.com/photo-1566740933430-b5e70b06d2d5?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60"
                  class="w-full h-full object-cover"
                />
              </div>
              <div class="p-6">
                <div class="text-sm">
                  <h3 class="font-bold text-base">Burritown</h3>
                  <div class="flex items-center text-green-400">
                    <svg
                      aria-hidden="true"
                      focusable="false"
                      data-prefix="fas"
                      data-icon="star"
                      class="svg-inline--fa fa-star fa-w-18 mr-2"
                      role="img"
                      xmlns="http://www.w3.org/2000/svg"
                      viewBox="0 0 576 512"
                    >
                      <path
                        fill="currentColor"
                        d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"
                      ></path>
                    </svg>
                    4.7
                  </div>
                  <p class="mt-1">
                    <span>Burritos · </span><span>Salads · </span
                    ><span>Mexican · </span><span>Chicken </span>
                  </p>
                  <p>1.5 miles away · $$</p>
                </div>
              </div>
            </div></a
          ><a href="#"
            ><div
              class="mx-auto cursor-pointer h-full hover:border-gray-400 transform transition-all duration-200 ease hover:-translate-y-1 shadow-sm w-72 max-w-full border border-gray-300 rounded-sm bg-white"
            >
              <div class="w-full h-48">
                <img
                  src="https://images.unsplash.com/photo-1579871494447-9811cf80d66c?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60"
                  class="w-full h-full object-cover"
                />
              </div>
              <div class="p-6">
                <div class="text-sm">
                  <h3 class="font-bold text-base">Sushi Blue</h3>
                  <div class="flex items-center text-green-400">
                    <svg
                      aria-hidden="true"
                      focusable="false"
                      data-prefix="fas"
                      data-icon="star"
                      class="svg-inline--fa fa-star fa-w-18 mr-2"
                      role="img"
                      xmlns="http://www.w3.org/2000/svg"
                      viewBox="0 0 576 512"
                    >
                      <path
                        fill="currentColor"
                        d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"
                      ></path>
                    </svg>
                    4.2
                  </div>
                  <p class="mt-1">
                    <span>Sushi · </span><span>Japanese </span>
                  </p>
                  <p>1.1 miles away · $$</p>
                </div>
              </div>
            </div></a
          ><a href="#"
            ><div
              class="mx-auto cursor-pointer h-full hover:border-gray-400 transform transition-all duration-200 ease hover:-translate-y-1 shadow-sm w-72 max-w-full border border-gray-300 rounded-sm bg-white"
            >
              <div class="w-full h-48">
                <img
                  src="https://images.unsplash.com/photo-1577859623802-b5e3ca51f885?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60"
                  class="w-full h-full object-cover"
                />
              </div>
              <div class="p-6">
                <div class="text-sm">
                  <h3 class="font-bold text-base">Three Aunts</h3>
                  <div class="flex items-center text-green-400">
                    <svg
                      aria-hidden="true"
                      focusable="false"
                      data-prefix="fas"
                      data-icon="star"
                      class="svg-inline--fa fa-star fa-w-18 mr-2"
                      role="img"
                      xmlns="http://www.w3.org/2000/svg"
                      viewBox="0 0 576 512"
                    >
                      <path
                        fill="currentColor"
                        d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"
                      ></path>
                    </svg>
                    4.9
                  </div>
                  <p class="mt-1">
                    <span>Chinese · </span><span>BBQ · </span
                    ><span>Chicken · </span><span>Noodles </span>
                  </p>
                  <p>2.5 miles away · $$$</p>
                </div>
              </div>
            </div></a
          ><a href="#"
            ><div
              class="mx-auto cursor-pointer h-full hover:border-gray-400 transform transition-all duration-200 ease hover:-translate-y-1 shadow-sm w-72 max-w-full border border-gray-300 rounded-sm bg-white"
            >
              <div class="w-full h-48">
                <img
                  src="https://images.unsplash.com/photo-1542676303584-c8043a6c7618?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60"
                  class="w-full h-full object-cover"
                />
              </div>
              <div class="p-6">
                <div class="text-sm">
                  <h3 class="font-bold text-base">Farmer P</h3>
                  <div class="flex items-center text-green-400">
                    <svg
                      aria-hidden="true"
                      focusable="false"
                      data-prefix="fas"
                      data-icon="star"
                      class="svg-inline--fa fa-star fa-w-18 mr-2"
                      role="img"
                      xmlns="http://www.w3.org/2000/svg"
                      viewBox="0 0 576 512"
                    >
                      <path
                        fill="currentColor"
                        d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"
                      ></path>
                    </svg>
                    4.2
                  </div>
                  <p class="mt-1">
                    <span>Chicken · </span><span>Mediterranean · </span
                    ><span>British · </span><span>Healthy </span>
                  </p>
                  <p>3.5 miles away · $</p>
                </div>
              </div>
            </div></a
          ><a href="#"
            ><div
              class="mx-auto cursor-pointer h-full hover:border-gray-400 transform transition-all duration-200 ease hover:-translate-y-1 shadow-sm w-72 max-w-full border border-gray-300 rounded-sm bg-white"
            >
              <div class="w-full h-48">
                <img
                  src="https://images.unsplash.com/photo-1572137162111-fc6e04414e21?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60"
                  class="w-full h-full object-cover"
                />
              </div>
              <div class="p-6">
                <div class="text-sm">
                  <h3 class="font-bold text-base">Bagel King</h3>
                  <div class="flex items-center text-green-400">
                    <svg
                      aria-hidden="true"
                      focusable="false"
                      data-prefix="fas"
                      data-icon="star"
                      class="svg-inline--fa fa-star fa-w-18 mr-2"
                      role="img"
                      xmlns="http://www.w3.org/2000/svg"
                      viewBox="0 0 576 512"
                    >
                      <path
                        fill="currentColor"
                        d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"
                      ></path>
                    </svg>
                    4.1
                  </div>
                  <p class="mt-1">
                    <span>Bagels · </span><span>Breakfast · </span
                    ><span>Dessert </span>
                  </p>
                  <p>1.6 miles away · $</p>
                </div>
              </div>
            </div></a
          ><a href="#"
            ><div
              class="mx-auto cursor-pointer h-full hover:border-gray-400 transform transition-all duration-200 ease hover:-translate-y-1 shadow-sm w-72 max-w-full border border-gray-300 rounded-sm bg-white"
            >
              <div class="w-full h-48">
                <img
                  src="https://images.unsplash.com/photo-1571917411767-20545014a0bc?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60"
                  class="w-full h-full object-cover"
                />
              </div>
              <div class="p-6">
                <div class="text-sm">
                  <h3 class="font-bold text-base">Mr. Banh Mi</h3>
                  <div class="flex items-center text-green-400">
                    <svg
                      aria-hidden="true"
                      focusable="false"
                      data-prefix="fas"
                      data-icon="star"
                      class="svg-inline--fa fa-star fa-w-18 mr-2"
                      role="img"
                      xmlns="http://www.w3.org/2000/svg"
                      viewBox="0 0 576 512"
                    >
                      <path
                        fill="currentColor"
                        d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"
                      ></path>
                    </svg>
                    4.6
                  </div>
                  <p class="mt-1">
                    <span>Sandwiches · </span><span>Vietnamese · </span
                    ><span>Noodles · </span><span>Drinks </span>
                  </p>
                  <p>1.5 miles away · $$</p>
                </div>
              </div>
            </div></a
          ><a href="#"
            ><div
              class="mx-auto cursor-pointer h-full hover:border-gray-400 transform transition-all duration-200 ease hover:-translate-y-1 shadow-sm w-72 max-w-full border border-gray-300 rounded-sm bg-white"
            >
              <div class="w-full h-48">
                <img
                  src="https://images.unsplash.com/photo-1557872943-16a5ac26437e?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60"
                  class="w-full h-full object-cover"
                />
              </div>
              <div class="p-6">
                <div class="text-sm">
                  <h3 class="font-bold text-base">Fancy Ramen</h3>
                  <div class="flex items-center text-green-400">
                    <svg
                      aria-hidden="true"
                      focusable="false"
                      data-prefix="fas"
                      data-icon="star"
                      class="svg-inline--fa fa-star fa-w-18 mr-2"
                      role="img"
                      xmlns="http://www.w3.org/2000/svg"
                      viewBox="0 0 576 512"
                    >
                      <path
                        fill="currentColor"
                        d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"
                      ></path>
                    </svg>
                    4.8
                  </div>
                  <p class="mt-1">
                    <span>Ramen · </span><span>Noodles · </span
                    ><span>Japanese </span>
                  </p>
                  <p>3.2 miles away · $$$$</p>
                </div>
              </div>
            </div></a
          ><a href="#"
            ><div
              class="mx-auto cursor-pointer h-full hover:border-gray-400 transform transition-all duration-200 ease hover:-translate-y-1 shadow-sm w-72 max-w-full border border-gray-300 rounded-sm bg-white"
            >
              <div class="w-full h-48">
                <img
                  src="https://images.unsplash.com/photo-1579751626657-72bc17010498?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60"
                  class="w-full h-full object-cover"
                />
              </div>
              <div class="p-6">
                <div class="text-sm">
                  <h3 class="font-bold text-base">Pizzzza</h3>
                  <div class="flex items-center text-green-400">
                    <svg
                      aria-hidden="true"
                      focusable="false"
                      data-prefix="fas"
                      data-icon="star"
                      class="svg-inline--fa fa-star fa-w-18 mr-2"
                      role="img"
                      xmlns="http://www.w3.org/2000/svg"
                      viewBox="0 0 576 512"
                    >
                      <path
                        fill="currentColor"
                        d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"
                      ></path>
                    </svg>
                    4.3
                  </div>
                  <p class="mt-1">
                    <span>Pizza · </span><span>Italian · </span
                    ><span>Dessert </span>
                  </p>
                  <p>1.5 miles away · $</p>
                </div>
              </div>
            </div></a
          >
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>