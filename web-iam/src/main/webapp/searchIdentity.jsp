<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Identity Module</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div xmlns="http://www.w3.org/1999/xhtml" class="bs-example">
    <div class="container">
        <h2 class="text-info">Identity Search </h2>
        <a href="welcome.jsp">&lt;&lt; back</a>

        <h3 class="text-info">Search Criteria</h3>
    </div>


    <form class="form-horizontal" role="form">
        <div class="form-group">
            <label class="col-sm-2 control-label" for="firstName">First Name</label>

            <div class="col-sm-10">
                <input class="form-control" id="firstNameSearch" type="text" placeholder="First Name" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="lastName">Last Name</label>

            <div class="col-sm-10">
                <input class="form-control" id="lastNameSearch" type="text" placeholder="Last Name" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="lastName">...</label>

        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10 text-right">
                <button class="btn btn-primary" type="submit">Search</button>
            </div>
        </div>
    </form>
    <div class="container">
        <h3 class="text-info">Search Results</h3>

        <form class="form-horizontal">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>Selection</th>
                        <th>UID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input name="selection" type="radio" /></td>
                        <td>1</td>
                        <td>Thomas</td>
                        <td>Broussard</td>
                        <td>tbr@acompany.com</td>
                    </tr>

                    <tr>
                        <td><input name="selection" type="radio" /></td>
                        <td>2</td>
                        <td>David</td>
                        <td>Mahery</td>
                        <td>dma@acompany.com</td>
                    </tr>

                    <tr>
                        <td><input name="selection" type="radio" /></td>
                        <td>3</td>
                        <td>Quentin</td>
                        <td>Serrano</td>
                        <td>qse@acompany.com</td>
                    </tr>

                    </tbody>
                </table>
            </div>
            <div class="form-group">
                <div class=" col-sm-offset-2 col-sm-10 text-right">
                    <button class="btn btn-primary" type="submit">Modify</button>
                    <button class="btn btn-primary" type="submit">Delete</button>
                    <button class="btn btn-default" type="submit">Cancel</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>