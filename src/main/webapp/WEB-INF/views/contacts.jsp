<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FAQ</title>
    <link rel="icon" type="image/x-icon" href="/images/FavIcon.svg">
    <link rel="stylesheet" href="/styles/reset.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/pages.css">

</head>

<body class="d-flex justify-content-center align-items-center vh-100">

<div class="sidebar">

    <div class="logo-box">
        <img src="/images/Logo_v4.svg" alt="logo">
    </div>

    <div class="menu-section">
        <p class="menu-title">Discover</p>

        <a href="/homepage"><button class="menu-btn">🏠 Home</button></a>
        <a href="/search"><button class="menu-btn">🔍 Browse</button></a>
    </div>

    <div class="menu-section">
        <p class="menu-title">Account</p>

        <button class="menu-btn">❤️ Favorites</button>
        <button class="menu-btn">⚙️ Settings</button>
    </div>

    <button class="help-btn">Help</button>

</div>

<div class="main-content">
    <div class="top-bar">
        <div class="nav-links">
            <a href="homepage">Home</a>
            <a href="shop">Shop</a>
            <a href="faq">FAQ</a>
            <a href="contacts">Contacts</a>
        </div>

        <form action="/logout" method="post">
            <button type="submit" class="btn-logout">Logout</button>
        </form>
    </div>





</div>
</body>
</html>