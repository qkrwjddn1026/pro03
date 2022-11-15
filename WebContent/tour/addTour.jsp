<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>이미지 업로드</title>
<jsp:include page="/head.jsp" />
<style>
.title { padding-top:36px; padding-bottom:20px; }
#id { width:780px; float:left; margin-right:30px; margin-left:6px; }
</style>
</head>
<body>
<jsp:include page="/header.jsp" />
  <section class="section">
    <div class="container">
	<h2 class="title">이미지 업로드</h2>
	<form name="upload" id="upload" action="${path1 }/ImgUploadCtrl.do" method="post" >
		<table class="table">
			<tbody>
				<tr>
					<th>위치</th>
					<td>
						<input type="number" name="pos" id="pos" class="input" value="no">
					</td>
				</tr>
				<tr>
					<th>장소 번호</th>
					<td><input type="text" name="tourno" id="tourno" class="input" value="no" /></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="text" name="picname" id="picname" class="input" value="no"/></td>
				</tr>
				<tr>
					<th>회원이름</th>
					<td><input type="text" name="name" id="name" placeholder="이름 입력" class="input" required /></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email" id="email" placeholder="이메일 입력" class="input" required></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="date" name="birth" id="birth" placeholder="생년월일 입력" class="input" required></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="tel" name="tel" id="tel" maxlength="11" placeholder="전화번호 숫자만 입력 00000000000" class="input" required></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address1" id="address1" placeholder="기본 주소 입력" class="input" required /><br>
					<input type="text" name="address2" id="address2" placeholder="상세 주소 입력" class="input" required /><br>
					<input type="text" name="postcode" id="postcode" style="width:160px;float:left;margin-right:20px;" placeholder="우편번호" class="input">
					<button id="post_btn" onclick="findAddr()" class="button is-info">우편번호 검색</button>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="button button-info" value="회원가입">
			<input type="reset" name="reset-btn" class="button button-info" value="취소">
			<a href="<%=request.getContextPath() %>/user/login.jsp" class="button button-danger">로그인</a>
		</div>
	</form>	
<script >
		function changeTourNo(){
			var cate = document.frm1.cate.value;
			if(cate ==""){
				alert("분류 선택 x");
				document.frm1.cate.focus();
				return;
			}
			// ajax로 현재 마지막 레코드의 번호 불러옴
			$.ajax({
				url:"${path1} /NoLoadCtrl.do",
				type:"post",
				dataType:"json",
				success:function(data){
					console.log(data.no);
					$("#tourno").val(cate + data.no);
				}
			});
		}
		
	</script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</div>
</section>
<%@ include file="../footer.jsp" %>
</body>
</html>