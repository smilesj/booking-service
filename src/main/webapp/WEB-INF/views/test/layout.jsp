<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<tiles:insertAttribute name="title" ignore="true" />
</head>
<body>
    <div class="page">
        <tiles:insertAttribute name="header" />
        <div class="content">
            <tiles:insertDefinition name="content" />
        </div>
        <tiles:insertAttribute name="footer" />
    </div>
</body>
</html>