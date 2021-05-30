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
<script type="text/javascript" src="./js/tetris.js"></script>
<style>
.wrapper-container{
	margin-left: 35%;
	margin-top: 30px;
}
</style>
</head>
<body>
    <div class="wrapper-container">
        <span class="tetris-container">
            <canvas id="stage" width="250px" height="500px" style="background-color:black;">
            </canvas>
            <span class="tetris-panel-container">
              <p>Next:</p>
                <canvas id="next" width="150px" height="150px" style="background-color:black;">
                </canvas>
              <p>LINES:<span id="lines">0</span></p>
              <p><span id="message"></span></p>
              <div class="tetris-panel-container-padding"></div>
              <table class="tetris-button-panel">
                <tr>
                  <td></td>
                  <td id="tetris-rotate-button" class="tetris-button">↻</td>
                  <td></td>
                </tr>
                <tr>
                  <td id="tetris-move-left-button"class="tetris-button">←</td>
                  <td id="tetris-fall-button"class="tetris-button">↓</td>
                  <td id="tetris-move-right-button"class="tetris-button">→</td>
                </tr>
              </table>
            </span>
        </span>
    </div>
    <script>
      var tetris = new Tetris();
      tetris.startGame();
    </script>
</body>
</html>
