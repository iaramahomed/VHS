<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search</title>
    <link rel="icon" type="image/x-icon" href="/images/FavIcon.svg">
    <link rel="stylesheet" href="/styles/reset.css">
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
            <a href="/homepage">Home</a>
            <a href="/shop">Shop</a>
            <a href="/faq">FAQ</a>
            <a href="/contacts">Contacts</a>
        </div>

        <form action="/logout" method="post">
            <button type="submit" class="btn-logout">Logout</button>
        </form>
    </div>

    <div class="search-field">

        <h2 class="welcome-text">
            Hello user! What do you want to watch today?
        </h2>

        <input class="search-bar" placeholder="Search movies...">
    </div>
    <div class="top-movie">

        <select class="form-select" aria-label="Default select example">
            <option selected> Genre</option>
            <option value="1">Animation</option>
            <option value="2">Comedy</option>
            <option value="3">Crime</option>
            <option value="4">Drama</option>
            <option value="5">Fantasy</option>
            <option value="6">Horror</option>
            <option value="7">Musical</option>
            <option value="8">Romance</option>
            <option value="9">Sci-Fi</option>
            <option value="10">Western</option>
        </select>

        <h2 class="section-title">Search</h2>

        <div class="movies-grid">
            <div class="movie-img">Animção</div>
            <div class="movie-img">Comedy</div>
            <div class="movie-img">Crime</div>
            <div class="movie-img">Drama</div>
            <div class="movie-img">Fantasy</div>
            <div class="movie-img">Horror</div>
            <div class="movie-img">Musical</div>
            <div class="movie-img">Romance</div>
            <div class="movie-img">Sci-Fi</div>
            <div class="movie-img">Western</div>
        </div>
    </div>


</div>

</body>
</html>



