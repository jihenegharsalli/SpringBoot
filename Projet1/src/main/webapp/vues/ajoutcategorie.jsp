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
<title>Insert title here</title>
</head>

<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h2>Ajouter Cat�gorie</h2>
            </div>
            <div class="card-body">
                <form action="saveCategorie" method="post"> 
                    <label for="nomc">Nom Cat�gorie</label>
                    <input type="text" class="form-control" id="nomc" name="nomc">
                    <button type="submit" class="btn btn-primary">Enregistrer</button>
                </form>
            </div>
        </div>
    </div>
</body>



</html>