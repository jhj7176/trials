<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bitgrid.css">
<meta charset="UTF-8">
<%@ include file="template/lmshead.jspf" %>
<title>BITCAMP JEJU: LMS강사-출석조회</title>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	function popup(num,nalja){
		var date= getFormatDate(nalja);
		var url ="lmsteacherattupdate.bit?num="+num+"&nalja="+nalja;	
		var title="new window";
		var option = "width=600,height=400,top=200,left=400, toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no";
		window.open(url,title,option);
	}
	$(function(){
			$('.analja').on('click',function(){
				var a = $('.aname').text();
				var b = $(this).text();
				popup(a,b);
				return false;
			});click
	});
</script>
</head>
<body>
<%@ include file="template/lmsheader.jspf" %>
<%@ include file="template/menu.jspf" %>
   <div id="contents">
   <!--*****************lms메뉴******************-->
       <div class="grid2">
        <div id="lmsmenu">
            <p>강사</p>
            <ul>
                <li class="bigletter">출결관리</li>
                <li>
                    <a href="lmsteacherattendance.bit">출석체크</a>    
                </li>
                <li>
                    <a href="lmsteacherattlist.bit">출석조회</a>    
                </li>
                <li class="bigletter">수강생관리</li>
                <li>
                    <a href="#">수강생정보</a>    
                </li>
                <li>
                    <a href="#">성적입력</a>    
                </li>
                <li>
                    <a href="#" class="bigletter">자료실</a>    
                </li>
                <li></li>
            </ul>
        </div>
       </div>
        <!--*****************lms메뉴******************-->
       <div  id="content" class="grid6">&nbsp;
       <!--*************content start****************-->
	<h1>출석조회</h1>
	<form action="lmsteacherattsearchbydate.bit" method="post">
		<input type="date" class="date" name="nalja1"><span>~</span>
		<input type="date" class="date" name="nalja2">
		<button id="datechoice">조회</button>
	</form>
	<form action="lmsteacherattsearchbyname.bit" method="post">
		<input type="text" class="searchbyname" name="name">
		<button id="namesearch">조회</button>
	</form>
	<div id="attendtable">
		<table>
			<tr>
				<th>날짜</th>
				<th>이름</th>
				<th>학번</th>
				<th>상태</th>
			</tr>
			<c:forEach items="${list}" var="list">
			<tr>
				<td><a class="analja"><c:formatDate value="${list.nalja}" pattern="yyyy-MM-dd"/></a></td>
				<td><a class="anum">${list.name }</a></td>
				<td>${list.name }</td>
				<td>${list.state }</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	 <!--*************content end******************-->
<%@ include file="template/footer.jspf" %>
</body>
</html>