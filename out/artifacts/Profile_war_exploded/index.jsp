<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 03.11.2019
  Time: 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">

    <title>Profile</title>
</head>
<body>
<% String lastName = (String) session.getAttribute("user_in"); %>
<% if (lastName == null || "".equals(lastName)) { %>
<form action="/login" method="POST">
    <div class="form-group row">
        <label for="firstName" class="col-sm-2 col-form-label">First name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="firstName" id="firstName" placeholder="First name">
        </div>
    </div>
    <div class="form-group row">
        <label for="lastName" class="col-sm-2 col-form-label">Last name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last name">
        </div>
    </div>
    <div class="form-group row">
        <label for="age" class="col-sm-2 col-form-label">Age</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="age" id="age" placeholder="Age">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-10">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>
</form>
<% } else { %>
<form action="/questionAnalyse" method="POST">
    <fieldset class="form-group">
        <div class="row">
            <legend class="col-form-label col-sm-3 pt-0">Do you like Java?</legend>
            <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="question1" id="gridRadios1" value="Yes">
                    <label class="form-check-label" for="gridRadios1">
                        Yes
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="question1" id="gridRadios2" value="No">
                    <label class="form-check-label" for="gridRadios2">
                        No
                    </label>
                </div>
            </div>
        </div>
        <div class="row">
            <legend class="col-form-label col-sm-3 pt-0">Do you like JavaScript?</legend>
            <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="question2" id="gridRadios3" value="Yes">
                    <label class="form-check-label" for="gridRadios3">
                        Yes
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="question2" id="gridRadios4" value="No">
                    <label class="form-check-label" for="gridRadios4">
                        No
                    </label>
                </div>
            </div>
        </div>
        <div class="row">
            <legend class="col-form-label col-sm-3 pt-0">Do you like MySQL?</legend>
            <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="question3" id="gridRadios5" value="Yes">
                    <label class="form-check-label" for="gridRadios5">
                        Yes
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="question3" id="gridRadios6" value="No">
                    <label class="form-check-label" for="gridRadios6">
                        No
                    </label>
                </div>
            </div>
        </div>
    </fieldset>
    <div class="form-group row">
        <div class="col-sm-10">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>
</form>
<% } %>
</body>
</html>
