<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Video Heal my Soul</title>
    <link rel="icon" type="image/x-icon" href="/images/FavIcon.svg">
    <link rel="stylesheet" href="/static.styles/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">    <link rel="stylesheet" href="/styles/styles.css">
</head>
<body>
<div class="login-container">
    <div class="logo-section">
        <img src="/images/Logo_v4.svg" alt="VHS Logo" class="logo-img">
    </div>

    <div class="button-container">
        <button class="btn-login" onclick="window.location.href='/auth/login'">Login</button>

        <button class="btn-create" onclick="window.location.href='/auth/signup'">Create account</button>
    </div>
</div>
</body>
</html>