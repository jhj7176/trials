<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

var selectDate;
$(function(){
  document.getElementById('nalja').value = new Date().toISOString().substring(0, 10);
  selectDate = $('#nalja').val();
  $('.nalja').val(selectDate);
  
   $('.nalja').css('display','none')
   
});
</script>
<style type="text/css">
tr{
   border:1px solid;
}
td{
   border:1px solid;
}
</style>
</head>
<body>
   <h1>출석부</h1>
      <label for="nalja">날짜:</label>
      <input type="date" id="nalja" name="nalja">
   <form method="post" action=result.bit>
         <c:forEach items="${list}" varStatus="status" var="bean">
   <div id="table">
      <table>
         <tr>
            <th>학번</th>
            <th>상태</th>
         </tr>
         <tr>
            <td align ="center" >
            ${bean.num }
            <input type="hidden" name="num${bean.num }" value="${bean.num }">
            <input type="date" class="nalja" name="nalja${bean.num }">
            
            </td>
            <td>
            <label for="ra">출석</label>
            <input type="radio" class="state" name="state${bean.num }" value="attend">
            <label for="ra">지각</label>
            <input type="radio" class="state" name="state${bean.num }" value="late">
            <label for="ra">결석</label>
            <input type="radio" class="state" name="state${bean.num }" value="absent">
               </td>
         </tr>
      </table>
   </div>
         </c:forEach>
         <button id="fin">완료</button>
   </form>
</body>
</html>