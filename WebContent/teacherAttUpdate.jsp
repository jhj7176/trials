<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<c:set value="${bean }" var="bean" />
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

$(function(){
	$("input:radio[name=state][value=" + '<c:out value="${ bean.state }"/>' + "]").attr("checked","checked");	
});//���� �� �޾ƿ���

</script>
</head>
<body>
	<h1>�⼮ ����</h1>
	<form action="lmsteacherattupdate.bit" method="post">
		<table>
		<tr>
			<th>��¥</th>
			<td>${bean.nalja }</td>
		</tr>
		<tr>
			<th>�й�</th>
			<td>${bean.num }</td>
		</tr>
		<tr>
			<th>�̸�</th>
			<td>${bean.name }</td>
		</tr>
		<tr>
			<th>����</th>
			<td>
				<label for="ra">�⼮</label>
			    <input type="radio" class="state" name="state" value="�⼮">
			    <label for="ra">����</label>
			    <input type="radio" class="state" name="state" value="����">
			    <label for="ra">����</label>
			    <input type="radio" class="state" name="state" value="����">
			    <label for="ra">�Ἦ</label>
			    <input type="radio" class="state" name="state" value="�Ἦ">
			</td>
		</tr>
		</table>
		<button type="submit">����</button>
	</form>
</body>
</html>