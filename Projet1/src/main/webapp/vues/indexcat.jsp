<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<form action="chercher" method="get">
<br><br>
<!--     <div class="ms-3">
    <label>Mot cle:</label>
    <input type="text" name="keyword">
    <button type="submit" class="btn btn-info" > search </button>
    </div> -->
</form>
<div class="d-flex flex-row-reverse" style=" margin-right: 1270px">
    <a class="btn btn-warning"  href="index" >Liste Produits</a>
</div>
<div class="d-flex flex-row-reverse" style=" margin-right: 25px">
    <a class="btn btn-dark"  href="ajoutcategorie" >Ajouter categorie</a>
</div>
<br>


<table class="table container">
    <div class="card">
        <div class="card-head">
            <h2 class="container">Liste Categories</h2>
        </div>
    </div>
    <div class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Nom</th>
        
        </tr>
        </thead>
        <tbody class="table-group-divider">
        <c:forEach items="${categories}" var="c" >
        <tr>
            <th scope="row">${c.id}</th>
            <td>${c.nom}</td>
          
          
          <td>  <a href="<c:url value='firas?id=${c.id}'/>" class="fa-solid fa-wrench"></a></td>
    		<%-- <td> <a class="fa-solid fa-wrench"href="modifierc?id=${c.id}" ></a>  </td> --%>
            <td> <a class="fa-solid fa-trash" href="supprimerc?id=${c.id}"></a></td>
        </tr>
        </c:forEach>
        </tbody>
    </div>
</table>

</body>
</html>