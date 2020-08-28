<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>네비게이션</title>
  <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            flex-flow: column nowrap;
            justify-content: center;
            align-items: center;
            overflow-x: hidden;
        }

        h1 {
            margin: 2em 0 1.5em 0;
        }

        nav {
            width: 100%;
            display: flex;
            justify-content: center;
            position: relative;
        }

        ul, li {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        #main-menu>li {
            float: left;
            position: relative;
        }

        #main-menu>li>a {
            font-size: 0.85rem;
            color: #373737;
            text-align: center;
            text-decoration: none;
            letter-spacing: 0.05em;
            display: block;
            padding: 14px 36px;
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
            border-right: 1px solid rgba(0,0,0,0.15);
        }

        #main-menu>li:nth-child(1)>a {
            border-left: 1px solid rgba(0, 0, 0, 0.15);
        }

        #sub-menu {
            position: absolute;
            background-color: #f2f2f4;
            opacity: 0;
            visibility: hidden;
            transition: all 0.15s ease-in;
            width: 100%;
            text-align: center;
            display: block;
        }

        #sub-menu>li {
            padding: 16px 28px;
        }

        #sub-menu>li>a {
            display: block;
            color: #373737;
            text-decoration: none;
        }

        #main-menu>li:hover #sub-menu {
            opacity: 1;
            visibility: visible;
        }

        #sub-menu>li>a:hover {
            background-color: #c60d22;
            color: white;
        }

        section {
            column-width: 15em;
            background: #dadadf;
            padding: 2em 12em;
        }
    </style>
</head>
<body>
  <nav role="navigation">
        <ul id="main-menu">
            <li><a href="#">일본술(お酒)</a></li>
            <li><a href="#">일본소주(焼酒)</a>
                <ul id="sub-menu">
                    <li><a href="#" id="subemnu">일본소주1</a></li>
                    <li><a href="#" id="subemnu">일본소주2</a></li>
                    <li><a href="#" id="subemnu">일본소주3</a></li>
                    <li><a href="#" id="subemnu">일본소주4</a></li>
                </ul>
            </li>
            <li><a href="#">리큐르(リキュール)</a>
                <ul id="sub-menu">
                    <li><a href="#" id="subemnu">리큐르1</a></li>
                    <li><a href="#" id="subemnu">리큐르2</a></li>
                    <li><a href="#" id="subemnu">리큐르3</a></li>
                    <li><a href="#" id="subemnu">리큐르4</a></li>
                </ul>
            </li>
            <li><a href="#">술잔/술병(酒器等)</a></li>
            <li><a href="#">이벤트</a></li>
            <li><a href="#">공지사항</a></li>
        </ul>
    </nav>
</body>
</html>