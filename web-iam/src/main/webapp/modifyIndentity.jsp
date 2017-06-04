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

<form xmlns="http://www.w3.org/1999/xhtml" class="form-horizontal" role="form" method="post" action="update">
        <div class="form-group">
            <label class="col-sm-2 control-label" for="usertNameModif">Username</label>

            <div class="col-sm-10">
                <input class="form-control" id="usertNameModif" type="text" placeholder="Username" value="${username}" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="emailModif">Last Name</label>

            <div class="col-sm-10">
                <input class="form-control" id="emailModif" type="email" placeholder="Email" value="${email}" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="birthdateModif">Email</label>

            <div class="col-sm-10">
                <input disabled="disabled" class="form-control" id="birthdateModif" type="date" placeholder="yyyy-MM-dd" value="${birthDate}" />
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label" for="typeModif">User type</label>

            <div class="col-sm-10">
                <input class="form-control" id="typeModif" type="date" placeholder="Birth Date" value="09/04/1986" />
                <select>
                	<option></option>
                </select>
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

</body>
</html>