<%@page import="rentcar.dto.MemberDTO"%>
<%@page import="rentcar.dao.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerPro</title>
</head>
<body>

	<%
	
		request.setCharacterEncoding("utf-8");
	
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setMemberId(request.getParameter("memberId"));
		memberDTO.setPasswd(request.getParameter("passwd"));
		memberDTO.setAge(Integer.parseInt(request.getParameter("age")));
		memberDTO.setEmail(request.getParameter("email"));
		memberDTO.setContact(request.getParameter("contact"));
		memberDTO.setInfo(request.getParameter("info"));
	
		RentcarDAO.getInstance().joinMember(memberDTO);
		
	%>
		
	<script>
		alert("회원가입 되었습니다.");
		location.href = "login.jsp";
	</script>

</body>
</html>