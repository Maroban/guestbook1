<%@page import="java.util.List"%>
<%@page import="com.javaex.vo.GuestbookVo"%>
<%@page import="com.javaex.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
// 파라미터 값 가져오기

int num = Integer.parseInt(request.getParameter("no"));
String pass = request.getParameter("pass");
String pw = request.getParameter("pw");

//사전 준비
GuestbookDao guestbookDao = new GuestbookDao();
GuestbookVo guestbookVo = new GuestbookVo();

//리스트 가져오기
List<GuestbookVo> guestList = guestbookDao.getGuestbookList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if (pass.equals(pw)) {
		// 값 삭제
		guestbookDao.delete(num);

		// 리다이렉트
		response.sendRedirect("./addList.jsp");
	} else {
		// 리다이렉트
		response.sendRedirect("./addList.jsp");
	}
	%>
</body>
</html>