<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 24. 10. 14.
  Time: 오후 2:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../includes/header.jsp"%>
<div class="row-content">
  <div class="card">
    <div class="card-header">
      Todo Modify
    </div>
    <div class="card-body">
      <h5 class="card-title">Todo Modify 페이지</h5>
      <form>
        <div class="input-group mb-3">
          <label class="input-group-text">Tno</label>
          <input class="form-control" type="text" name="tno" value="${dto.tno}" readonly>
        </div>
        <div class="input-group mb-3">
          <label class="input-group-text">Title</label>
          <input class="form-control" type="text" name="title" value="${dto.title}" >
        </div>
        <div class="input-group mb-3">
          <label class="input-group-text">DueDate</label>
          <input class="form-control" type="date" name="dueDate" value="${dto.dueDate}" >
        </div>
        <div class="input-group mb-3">
          <label class="input-group-text">Writer</label>
          <input class="form-control" type="text" name="writer" value="${dto.writer}" readonly>
        </div>
        <div class="form-check">
          <label class="form-check-label">Finished</label>
          <input class="form-check-input" type="checkbox" name="finished" ${dto.finished?"checked":""} >
        </div>
        <div class="my-4">
          <div class="float-end">
            <button type="button" class="btn btn-primary">Modify</button>
            <button type="button" class="btn btn-danger">Delete</button>
            <button type="button" class="btn btn-secondary">List</button>
          </div>
        </div>
      </form>
    </div>
    <script>
      const formObj = document.querySelector("form")

      document.querySelector(".btn-primary").addEventListener("click", function (e) {
        e.preventDefault(); //default값 막음
        e.stopPropagation();
        formObj.action="/todo/modify";
        formObj.method="POST";
        formObj.submit();
      }, false);

      document.querySelector(".btn-danger").addEventListener("click", function (e) {
        e.preventDefault(); //default값 막음
        e.stopPropagation();
        formObj.action="/todo/remove";
        formObj.method="POST";
        formObj.submit();
      }, false);

      document.querySelector(".btn-secondary").addEventListener("click", function (e) {
        e.preventDefault(); //default값 막음
        e.stopPropagation();
        self.location="/todo/list";
      }, false);
    </script>
  </div>
</div>
<%@include file="../includes/footer.jsp"%>
