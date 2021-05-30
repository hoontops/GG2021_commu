<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css" />
<title>TETRIS</title>
<script>
import BLOCKS from "./js/blocks.js"

//DOM
const playground = document.querySelector(".playground > ul");
const gameText = document.querySelector(".game-text");
const scoreDisplay = document.querySelector(".score");
const restartButton = document.querySelector(".game-text > button");
//Setting
const GAME_ROWS = 20;
const GAME_COLS = 10;

//variables
let score=0;  //점수
let duration = 500;   //블럭이 떨어지는 시간
let dowInterval;
let tempMovingItem;



const movingItem = {
type: "" ,
direction: 3,
top: 0,
left:0,
}

init()

//functions
function init(){
 tempMovingItem = {...movingItem};
 for(let i=0; i<GAME_ROWS; i++){
   prependNewLine()
 }
 generateNewBlock()
}


function prependNewLine(){
const li = document.createElement("li");
const ul = document.createElement("ul");
for(let j=0; j<GAME_COLS; j++){
    const matrix = document.createElement("li");
    ul.prepend(matrix)
}
li.prepend(ul)
playground.prepend(li)
}
function renderBlocks(moveType=""){
const { type, direction, top, left } = tempMovingItem;
const movingBlocks = document.querySelectorAll(".moving")
movingBlocks.forEach(moving=>{
    moving.classList.remove(type, "moving");
})
BLOCKS[type][direction].some(block => {
  const x= block[0] + left;
  const y = block[1] + top;
  const target = playground.childNodes[y] ? playground.childNodes[y].childNodes[0].childNodes[x] : null;
  const isAvailable = checkEmpth(target);
  if(isAvailable){
    target.classList.add(type, "moving")
  }else{
    tempMovingItem = {...movingItem }
    if(moveType === 'retry'){
      clearInterval(dowInterval)
      showGameoverTex()
    }
     setTimeout(()=>{
       renderBlocks('retry');
       if(moveType === "top"){
         seizeBlock()
       }
     },0)
    // renderBlocks()
    return true;
  }
})
movingItem.left = left;
movingItem.top = top;
movingItem.direction = direction;   
}
function seizeBlock(){
const movingBlocks = document.querySelectorAll(".moving")
movingBlocks.forEach(moving => {
    moving.classList.remove("moving");
    moving.classList.add("seized");
})
checkMatch()
}
function checkMatch(){

const childNodes = playground.childNodes;
childNodes.forEach(child=>{
  let matched = true;
  child.children[0].childNodes.forEach(li=>{
     if(!li.classList.contains("seized")){
      matched = false;
     }
  })
  if(matched){
    child.remove();
    prependNewLine();
    score++;
    scoreDisplay.innerText = score;
    document.login_form.form_name.value=score;
    //자스 코드 score 를 자바의 변수로 쓰기
  }
})

generateNewBlock()
}

function generateNewBlock(){
clearInterval(dowInterval);
dowInterval = setInterval(() => {
  moveBlock('top',1)
}, duration )


const blockArray = Object.entries(BLOCKS);
const randomIndex =Math.floor( Math.random() * blockArray.length)
movingItem.type = blockArray[randomIndex][0]
movingItem.top = 0;
movingItem.left = 3;
movingItem.direction = 0;
tempMovingItem = { ...movingItem };
renderBlocks();
}

function checkEmpth(target){
if(!target || target.classList.contains("seized")){
  return false;
}
return true;
}

function moveBlock(moveType, amount){
tempMovingItem[moveType] += amount;
renderBlocks(moveType)
}
function chageDirection(){
const direction = tempMovingItem.direction;
direction === 3 ? tempMovingItem.direction = 0 : tempMovingItem.direction +=1;
renderBlocks();
}
function dropBlock(){
  clearInterval(dowInterval);
  dowInterval = setInterval(() => {
    moveBlock("top",1)
  }, 10);
}
function showGameoverTex(){
gameText.style.display = "flex"
}

//event handling
document.addEventListener("keydown", e => {
switch(e.keyCode){
  case 39:
    moveBlock("left",1);
    break;
    case 37:
      moveBlock("left",-1);
    case 40:
      moveBlock("top", 1);
      break;
    case 38:
      chageDirection();
      break;
    case 32:
      dropBlock();
      break;
  default:
    break;
}

})

restartButton.addEventListener("click",()=>{
playground.innerHTML="";
gameText.style.display="none";
init();
})
</script>
</head>
<body>
<form method="post" action="tetirspoint.do" name="login_form">
    <div class="wrapper">
       	<div class="score">
       	
       		<input type="hidden" value=""  name="form_name" >${M_POINT }
       </div>
        <div class="game-text">
            게임종료
        <input type="button" name="dd" value="게임종료" onclick=login_form.submit();>

        </div>
        <div class="playground">
            <ul></ul>
        </div>
    </div>
    <script src="./js/tetris.js" type="module"></script>
</form>
</body>
</html>
