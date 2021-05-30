<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../main/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지뢰찾기</title>
<style>
 .closeblock {width:25px;height:25px;border: 2px solid black;}
 .openblock {width:25px;height:25px;font-weight:bold;}
 .questioncheck{font-weight:bold;color:#9900CC}
 .bombcheck{font-weight:bold;color:black}
 .failcheck{font-weight:bold;color:red}
 .st_0 {color:#eeeeee}
 .st_1 {color:blue}
 .st_2 {color:green}
 .st_3 {color:red}
 .st_4 {color:#000099}
 .st_5 {color:#CC0033}
 .st_6 {color:#00CCCC}
 .st_7 {color:#9900CC}
 .st_8 {color:black}
.landmine{
	margin-top: 5%;
    margin-left: 40%;
}
</style>
<script>
var set_col=10;
var set_row=10;
var set_bomb=10;
var bomb=new Array();
var opencheck=0;
var gamestop=1;
var timerid=0;

//랜덤함수
function bomb_rand(max){
 rand=0;
 while(rand==0)rand=(Math.floor(Math.random()*max));
 return rand;
}

//그리기
function make_map(){
 temp="";
 for(y=1;y<=set_row;y++){
  for(x=1;x<=set_col;x++){
   temp+=("<input type=button name='block_"+x+"_"+y+"' value='' onmousedown='block_open("+x+","+y+")' oncontextmenu='return false;' class='closeblock'>");
  }
  temp+=("<br>");
 }
 return temp;
}


//게임초기화
function game_init(){
 
 //변수초기화
 set_col = game.game_col.value*1;
 set_row = game.game_row.value*1;
 set_bomb = game.game_bomb.value*1;
 game.bomb_point.value = game.game_bomb.value;
 game.game_time.value = 0;
 opencheck=0;
 gamestop=2;

 //데이터초기화
 for(x=0;x<=set_col+1;x++){
  bomb[x]=new Array();
  for(y=0;y<=set_row+1;y++){
   bomb[x][y]=0;
  }
 }
 
 //폭탄 생성
 check=1;
 while(set_bomb>=check){
  x=bomb_rand(set_col+1);
  y=bomb_rand(set_row+1);
  if(bomb[x][y]!=-1){
   bomb[x][y]=-1;
   check++;
  }
 }

 //맵제작
 for(x=1;x<=set_col;x++){
  for(y=1;y<=set_row;y++){
   check_bomb=0;
   if(bomb[x][y]!=-1){
    //주위블럭체크
    if(bomb[x-1][y-1]==-1)check_bomb++;
    if(bomb[x][y-1]==-1)check_bomb++;
    if(bomb[x+1][y-1]==-1)check_bomb++;
    if(bomb[x-1][y]==-1)check_bomb++;
    if(bomb[x+1][y]==-1)check_bomb++;
    if(bomb[x-1][y+1]==-1)check_bomb++;
    if(bomb[x][y+1]==-1)check_bomb++;
    if(bomb[x+1][y+1]==-1)check_bomb++;
    bomb[x][y]=check_bomb;
   }
  }
 }

 //그리기
 map = make_map();
 document.getElementById("game_div").innerHTML=map;
 //타이머작동

}

//주변찾기
function bomb_find(x,y){
  block_open(x-1,y-1);
  block_open(x,y-1);
  block_open(x+1,y-1);
  block_open(x-1,y);
  block_open(x+1,y);
  block_open(x-1,y+1);
  block_open(x,y+1);
  block_open(x+1,y+1);
}

//블록체크하기 - 왼쪽마우스
function block_open(x,y){
  if(gamestop==2){gamestop=0;game_timer();}
  if(gamestop>0)return false;
  if(window.event.button==2){bomb_check(x,y);return false;} //마우스오른쪽버튼 처리
  tempname = eval("game.block_"+x+"_"+y+"");
  if(x<=0 || y<=0 || y>set_row || x>set_col)return false;   //블록범위체크
  if(tempname.value != "")return false;         //빈블록이 아니면 그만
  if(bomb[x][y]==-1){game_end(); return false;}     //폭탄이라면 게임 종료
  tempname.className="st_"+bomb[x][y]+" openblock";  //스타일지정
  tempname.value=bomb[x][y];           //숫자넣기
  opencheck++;                 //오픈한 블록수 증가
  if(bomb[x][y]==0)bomb_find(x,y);          //0블럭의 경우 주변블럭 체크
  check_end();                 //게임이 끝났는가 검사
}

//지뢰표시 - 오른쪽마우스
function bomb_check(x,y){
 tempname = eval("game.block_"+x+"_"+y+"");
 if(tempname.value=="ⓑ"){             //현재 블록상태가 폭탄지정일경우 ?로 변경
  tempname.value="?";
  tempname.className="closeblock questioncheck"
  game.bomb_point.value=game.bomb_point.value*1+1;
 }else if (tempname.value==""){            //아무상태가 아니면 폭탄표시
  if(game.bomb_point.value*1==0)return false;      //폭탄을 표시할수있는 상태인지 검사
  tempname.value="ⓑ";
  tempname.className="closeblock bombcheck"
  game.bomb_point.value=game.bomb_point.value*1-1;   //폭탄지정수 줄이기
  if(game.bomb_point.value*1==0)check_end();      //게임끝났는지 검사
 }else if(tempname.value=="?"){            //현재 상태가 ?이면 표시지우기
  tempname.value="";
  tempname.className="closeblock"
 }
}

//게임끝인가 체크
function check_end(){
 if((opencheck+set_bomb == set_col*set_row) && game.bomb_point.value*1==0){ //폭탄지정은 다 했는지, 다른블록은 다 열었는지 체크
  clearTimeout(timerid);                     //타이머종료
  alert("성공!\n"+game.game_time.value/10+"초 만에 성공하였습니다");
  gamestop=1;
 }
}

//게임실패
function game_end(){
 alert("game over");
 clearTimeout(timerid);                  //타이머종료
 for(x=1;x<=set_col;x++){                 //블록들 모두열기
  for(y=1;y<=set_row;y++){ 
   tempname = eval("game.block_"+x+"_"+y+"");
   if(tempname.value=="ⓑ" && bomb[x][y]!=-1){       //폭탄지정이 틀렸을경우 x표시
    tempname.value="X";
    tempname.className="closeblock failcheck"
   }else if(bomb[x][y]==-1){
    tempname.value="ⓑ";
    tempname.className="closeblock bombcheck"
   }else{
    tempname.value=bomb[x][y];
    tempname.className="st_"+bomb[x][y]+" openblock";
   }
  }
 }
 gamestop=1;
}

//타이머
function game_timer(){
 game.game_time.value = Number(game.game_time.value)+1;
 timerid=setTimeout("game_timer()",100);
}

//잠시멈춤
function game_pause(){
 if(gamestop>0)return false;
 document.getElementById("game_div").style.display="none";
 alert("pause");
 document.getElementById("game_div").style.display="block";
}
</script>
</head>
<body>
<form name=game class="landmine">
  <table style="border: 1px solid black; text-align: center;">
   <tr>
    <td align=center>
     <input TYPE="radio" name=mode onclick="game.game_row.value=9;game.game_col.value=9;game.game_bomb.value=10" checked>초급
     <input TYPE="radio" name=mode onclick="game.game_row.value=16;game.game_col.value=16;game.game_bomb.value=40">중급
     <input TYPE="radio" name=mode onclick="game.game_row.value=16;game.game_col.value=30;game.game_bomb.value=99">상급
    <br>
      가로<input name=game_row value=9 size=3>
      세로<input name=game_col value=9 size=3>
      폭탄<input name=game_bomb value=10 size=3>
      <input type=button value="시작" onclick="game_init()">
    </td>
   </tr>
   <tr>
    <td style="text-align: center;">
      남은폭탄<input name=bomb_point readonly size=3 value=10>
      시간<input name=game_time readonly size=3 value=0>
      <input name=pause type=button onclick="game_pause()" size=3 value="잠시멈춤">
    </td>
   </tr>
   <tr>
    <td style="text-align: center;">
     <div id="game_div">
     </div>
    </td>
    </tr>
  </table>
 </form>
    
</body>
</html>
