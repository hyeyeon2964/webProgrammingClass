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
  <h1>책목록</h1>
      <div class="pull-right mb5">
  <a href="create" class="btn btn-info">
    <span class="glyphicon glyphicon-user"></span> 책등록</a>
  </div>    
  <table class="table table-bordered mt5">
    <thead>
      <tr>
            <th>ID</th>
            <th>제목</th>
            <th>저자</th>
            <th>카테고리</th>
            <th>가격</th>
            <th>출판사</th>
            <th>재고</th>
      </tr>
    </thead>
    <tbody>

      <c:forEach var="book" items="${ books }">
        <tr data-url="edit?id=${ book.id }">
          <td>${ book.id }</td>
          <td>${ book.getTitle() }</td>
          <td>${ book.getAuthor() }</td>
          <td>${ book.getCategoryId() }</td>
          <td>${ book.getPrice() }</td>
          <td>${ book.getPublisherId() }</td>
          <td>${ book.isAvailable() }</td>
          </tr>
      </c:forEach>

    </tbody>
  </table>
</div>
</body>
</html>
