<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>
<h2 style="font-size: 12px; font-weight: normal;">${generationTime}</h2>
<h2 style="font-size: 16px;">${currentDirPath}</h2>
<hr class="separator" />
<c:url value="index" var="upUrl">
    <c:param name="path" value="${parentDirPath}"/>
</c:url>
<a href="${upUrl}">Вверх</a>
<style>
    TD, TH {
        padding: 2px;
        border: 2px solid rosybrown;
        background: wheat;
        text-align: left;
    }
</style>
<table>
    <tr>
        <th>Файл</th>
        <th>Размер</th>
        <th>Дата</th>
    </tr>
    <c:forEach var="listElement" items="${list}">
        <tr>
            <td>
                <c:set var="itemName" value="${listElement.name()}"/>
                <c:choose>
                    <c:when test="${fn:endsWith(itemName, '/')}">
                        <c:url value="index" var="downUrl">
                            <c:param name="path" value="${listElement.path()}"/>
                        </c:url>
                        <a href="${downUrl}">${listElement.name()}</a>
                    </c:when>
                    <c:otherwise>
                        <c:url value="DownloadServlet" var="downloadUrl">
                            <c:param name="path" value="${listElement.path()}"/>
                        </c:url>
                        <a href="${downloadUrl}" download>${listElement.name()}</a>
                    </c:otherwise>
                </c:choose>
            </td>
            <td>${listElement.size()}</td>
            <td>${listElement.date()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>