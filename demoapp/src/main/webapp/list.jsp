<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
    #d{
    background-color:red; 
    }
    #t{padding:50px;
    }
    #d1{
    background-color: yellow;
    }
    #d2{
    background-color: blue;
    }
</style>
</head>
<body>
<div id="d" style="width: 100%;height: 50px;">
<div align="left" id="d1" style="width:200px;">11
</div>
<div  id="d2" align="right" style="width:200px;">222</div>
</div>
<table id="t" align="center" style="width: 100%; height: 100%">
<tr><td>编号</td><td>所属部门</td><td>名字</td></tr>
<tr><td></td><td></td><td></td></tr>
<c:forEach items="${emp}" var="e">
<tr><td>${e.eid}</td><td>${e.dept.dname}</td><td>${e.ename}</td></tr>
</c:forEach>
</table>
</body>
</html>