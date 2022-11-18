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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>이용후기 글 등록</title>
    <jsp:include page="/head.jsp" />
  </head>
  <body>
  <jsp:include page="../header.jsp" />
  <section class="section">
    <div class="container">
      <h1 class="title">이용후기 글 등록하기</h1>
      	<form action="${path1 }/AddImpressCtrl.do" method="post">
			<table class="table">
			   <tbody>
			   <tr>
			   <td>
					  	<label class="label">분류</label>
					  	<div class="select">
						  <select name="cate" id="cate" class="select" onchange="changeImpressNo()" required>
						  	<option value="">선택</option>
						    <option value="A">관광</option>
						    <option value="B">체험</option>
						    <option value="C">행사</option>
						    <option value="D">축제</option>
						    <option value="E">숙박</option>
						    <option value="F">음식</option>
						    <option value="G">쇼핑</option>
						    <option value="H">기타</option>
						  </select>
						  <input type="hidden" id="tourno" name="tourno" value="">
						</div>
					</td>
					
					
						<td>
						<div class="field">
					  <label class="label">장소이름</label>
					  <div class="control has-icons-left has-icons-right">
					    <input class="input is-success" type="text" name="place" id="place" placeholder="장소 입력" required>
					    <span class="icon is-small is-left">
					      <i class="fas fa-user"></i>
					    </span>
					    <span class="icon is-small is-right">
					      <i class="fas fa-check"></i>
					    </span>
					  </div>
					  <p class="help is-success">장소명을 입력하세요</p>
					</div>
						</td>
					</tr>
			    <tr>
			      <th><label for="content">내용</label></th>
			      <td><textarea rows="8" cols="100" name="content" id="content" class="textarea" required></textarea></td>
			    </tr>
			    <tr>
			    <td><label for=""></label>
			    </tr>
			    <div class="field">
					  <label class="label">이미지 추가</label>
					  <div class="control">
						<input type="hidden" name="pic_ck1" id="pic_ck1" value="no"/>
						<button type="button" class="button is-link" onclick="imgUpload(1)">이미지 추가</button>
					  </div>
					</div>
			  </tbody>
			</table>
			<div class="buttons">
			  <button type="submit" class="button is-success">등록</button>
			  <button type="reset" class="button is-warning">취소</button>
			  <a href="${path1 }/GetImpressListCtrl.do" class="button is-info">목록</a>
			</div>
		</form>
		<script>
				function imgUpload(no){
					var tourno = document.frm1.tourno.value;
					if(tourno==""){
						alert("카테고리를 선택하지 않으셨습니다.");
						return;
					}
					var win1 = window.open("imgUpload.jsp?no="+no+"&tourno="+tourno,"win","width=850, height=400");
				}
				function changeTourNo(){
					var cate = document.frm1.cate.value; 
					if(cate==""){
						alert("분류를 선택하지 않으셨습니다. 기본값인 A 카테고리로 진행합니다.");
						cate = "A";
					}
					//ajax로 현재 마지막 레코드의 번호를 불러옴
					$.ajax({
						url:"${path1 }/NoLoadCtrl.do",
						type:"post",
						dataType:"json",
						success:function(data){
							console.log(data.no);
							$("#tourno").val(cate + data.no);
						}
					});
				}
				</script>
				<script>
				function tourCheck(f){
					if(f.pic_ck1.value!="yes"){
						alert("이미지가 등록되어 있지 않습니다.");
						return;
					}
				}
				</script>
    </div>
  </section>
  <jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>