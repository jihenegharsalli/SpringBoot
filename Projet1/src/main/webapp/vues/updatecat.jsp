<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
          crossorigin="anonymous">
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <title>Modifier Catégorie</title>
</head>

<body>
<div class="container">
    <div class="card">
        <div class="card-header">
            <h2>Modifier Catégorie</h2>
        </div>
        <div class="card-body">
            <form action="modifierc" method="post">
            	 <input type="hidden" name="id" value="${categorie.id}" />
                <div class="form-group">
                	
                    <label for="nomc">Nom Catégorie</label>
                    <input type="text" class="form-control" id="nomc" name="nomc" value="${categorie.nom}" />
                </div>
                <button type="submit" class="btn btn-primary">Enregistrer</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
