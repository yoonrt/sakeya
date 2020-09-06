<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>네비게이션</title>
	 <link rel="stylesheet" type="text/css" href="css/navigationcss.css">
</head>
<body>
	<div class ="wrapper2">
  <nav role="navigation">
        <ul id="main-menu">
            <li><a href="#">일본술(お酒)</a></li>
            <li><a href="#">일본소주(焼酒)</a>
                <ul id="sub-menu">
                    <li><a href="SakeyaServlet?command=catagory&kind=1" id="subemnu">일본 소주1</a></li>
                    <li><a href="SakeyaServlet?command=catagory&kind=2" id="subemnu">일본소주2</a></li>
                    <li><a href="SakeyaServlet?command=catagory&kind=3" id="subemnu">일본소주3</a></li>
                    <li><a href="SakeyaServlet?command=catagory&kind=4" id="subemnu">일본소주4</a></li>
                </ul>
            </li>
            <li><a href="#">리큐르(リキュール)</a>
                <ul id="sub-menu">
                    <li><a href="SakeyaServlet?command=catagory&kind=5" id="subemnu">리큐르1</a></li>
                    <li><a href="SakeyaServlet?command=catagory&kind=6" id="subemnu">리큐르2</a></li>
                    <li><a href="SakeyaServlet?command=catagory&kind=7" id="subemnu">리큐르3</a></li>
                    <li><a href="SakeyaServlet?command=catagory&kind=8" id="subemnu">리큐르4</a></li>
                </ul>
            </li>
            <li><a href="SakeyaServlet?command=catagory&kind=9">술잔/술병(酒器等)</a></li>
            <li><a href="#">이벤트</a></li>
            <li><a href="#">공지사항</a></li>
        </ul>
    </nav>
    </div>
</body>
</html>