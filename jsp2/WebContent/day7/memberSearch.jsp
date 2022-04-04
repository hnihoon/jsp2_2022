<%@page import="hrd.vo.Member"%>
<%@page import="java.util.List"%>
<%@page import="hrd.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		String column = request.getParameter("column");
		String find = request.getParameter("find");
		
		MemberDao dao = MemberDao.getInstance();
		List<Member> list = dao.search(column, find);
		request.setAttribute("list", list);
		pageContext.forward("4_memberlist.jsp");
%>