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
        <h2 class="text-info">New Identity Creation </h2>
        <a href="welcome.jsp">&lt;&lt; back</a>
    </div>
    <form class="form-horizontal" role="form">
        <div class="form-group">
            <label class="col-sm-2 control-label" for="firstName">First Name</label>

            <div class="col-sm-10">
                <input class="form-control" id="firstName" type="email" placeholder="First Name" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="lastName">Last Name</label>

            <div class="col-sm-10">
                <input class="form-control" id="email" type="email" placeholder="Last Name" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="lastName">Email</label>

            <div class="col-sm-10">
                <input class="form-control" id="lastName" type="email" placeholder="Email" />
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label" for="date">Birth Date</label>

            <div class="col-sm-10">
                <input class="form-control" id="date" type="date" placeholder="Birth Date" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">...</label>
        </div>


        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button class="btn btn-default" type="submit">Submit</button>
            </div>
        </div>
    </form>

</div>
</body>
</html>