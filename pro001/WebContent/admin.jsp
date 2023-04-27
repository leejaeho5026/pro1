<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>메인 페이지</title>
<style>
</style>
</head>
<body>
	<hr>
	<h2>관리자 페이지</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
	</nav>
	<nav>
		<ul>
			<li><span>학생별 목록</span>
				<ul>
					<li><a href="studentList.jsp">전체 학생 목록 보기</a></li>
					<li><a href="studentInsert.jsp">수강생 추가하기</a></li>
				</ul>
			</li>
			<li><span>교사별 목록</span>
				<ul>
					<li><a href="teacherList.jsp">전체 교사 목록 보기</a></li>
					<li><a href="teacherInsert.jsp">교사 추가하기</a></li>
				</ul>
			</li>
			<li><span>과정별 목록</span>
				<ul>
					<li><a href="courseList.jsp">전체 과정 목록 보기</a></li>
					<li><a href="courseInsert.jsp">과정 추가하기</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</body>
</html>