<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        rel="stylesheet" media="screen">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="${R}res/common.js"></script>
  <link rel="stylesheet" href="${R}res/common.css">
</head>
<body>
<div class="container">
  <h1>å���</h1>
 
  <table class="table table-bordered mt5">
    <thead>
      <tr>
            <th>ID</th>
            <th>����</th>
            <th>����</th>
            <th>ī�װ�</th>
            <th>����</th>
            <th>���ǻ�</th>
            <th>���</th>
      </tr>
    </thead>
    <tbody>

      <c:forEach var="book" items="${ books }">
        <tr>
          <td>${ book.id }</td>
          <td>${ book.title }</td>
          <td>${ book.author }</td>
          <td>${ book.category.categoryName}</td>
          <td>${ book.price }</td>
          <td>${ book.publisher.title }</td>
          <td>${ book.available == true ? "����" : " "}</td>
          </tr>
      </c:forEach>

    </tbody>
  </table>
</div>
</body>
</html>
