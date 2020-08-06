<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(function(){
  //document.getElementBy('nalja').value = new Date().toISOString().substring(0, 10);
  $('#fin').on('click', function() {
		$('.temp').each(function() {
			$(this).click();
		});//each
	});//onclick
});
</script>
</head>
<body>
	<h1>출석부</h1>
			<c:forEach items="${list}" varStatus="status" var="bean">
	<form method="post" action=result.bit>
		<label for="nalja">날짜:</label>
		<input type="date" class="nalja" name="nalja">
	<div id="table">
		<table>
			<tr>
				<th>학번</th>
				<th>상태</th>
			</tr>
			<tr>
				<td>
				${list.get(status.index).num }
				<input type="hidden" name="num" value="${list.get(status.index).num }">
				<label for="ra">출석</label>
				<input type="radio" class="state" name="state" value="attend">
				<label for="ra">지각</label>
				<input type="radio" class="state" name="state" value="late">
				<label for="ra">결석</label>
				<input type="radio" class="state" name="state" value="absent">
				</td>
				<td><button class="temp">temp</button></td>	
			</tr>
		</table>
	</div>
	</form>
			</c:forEach>
			<button id="fin">완료</button>
</body>
</html>