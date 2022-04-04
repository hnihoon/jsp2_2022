<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
	<h3>여기는 HOME 입니다.</h3>
	<hr>
	<div>
		로그인 상태 : ${user!=null }
	</div>
	<div>
		<button type="button" onclick="location.href='3_loginForm.jsp'">
		로그인
		</button>
	</div>
	<div>
	<c:if test="">
		<button type="button" onclick="location.href='kogout.jsp'">
		로그아웃
		</button>
	</c:if>
	</div>
	<script type="text/javascript">
		setTimeout(function(){
			//파라미터 처리하는 방법
			if('${param.logout}'=='y')
				alert('로그아웃 되었습니다.')
			if('${param.logout}'=='y')
				alert('로그인 완료 되었습니다.')
			if('${param.logout}'=='n')
				alert('로그인 정보가 옳지 않습니다.')
			//애트리뷰트를 이용하는 방법
			//if(${not empty message})	//message 라는 이름 애트리뷰트가 null 이나 길이가
			// alert('${message}')
		}, 100);
	</script>
</body>
</html>