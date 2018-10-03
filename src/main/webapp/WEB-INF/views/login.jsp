<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
    <head>
        <title>Spring Security Example</title>
        <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
                <link rel="stylesheet" href="../../assests/css/bootstrap.min.css">

                    </head>
                    <body>
                        <div class="container">

                            <c:choose>
                                <c:when test="${param.error==false}" class="alert alert-danger">Invalid username and password.
                                    <br />
                                </c:when>

                            </c:choose>
                            <c:choose>
                                <c:when test="${param.logout==false}" class="alert alert-info">You have been logged out.
                                    <br />
                                </c:when>

                            </c:choose>
                            <form action="@{/login}" method="post">
                                <div class="form-group">
                                    <label for="username">Username:</label>
                                    <input class="form-control" id="username" type="text" name="username" />
                                </div>
                                <div class="form-group">
                                    <label class="password">Password:</label>
                                    <input class="form-control" id="password" type="password" name="password" />
                                </div>
                                <div>
                                    <input class="btn btn-primary" type="submit" value="Sign In" />
                                </div>
                            </form>
                        </div>
                        <script src="/js/jquery.min.js"></script>
                        <script src="/js/popper.min.js"></script>
                        <script src="/js/bootstrap.min.js"></script>

                    </body>
                    </html>