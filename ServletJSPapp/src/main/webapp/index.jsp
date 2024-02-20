<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
</head>
    <body>
    <h2>Сгенерировано: ${generationTime}</h2>
    <h2>Список файлов и папок в текущей директории: ${currentDirPath}</h2>
    <table>
        <tr>
            <th>Файл</th>
            <th>Размер</th>
            <th>Дата</th>
        </tr>
    </table>
    </body>
</html>