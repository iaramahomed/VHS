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

        <form action="/search" method="get">
            <input class="search-bar" name="query" placeholder="Search movies..."
                   value="${param.query}"> </form>
    </div>

    <div class="top-movie">
        <h2 class="section-title">
            <c:out value="${not empty sectionTitle ? sectionTitle : 'Search'}" />
        </h2>

        <div class="movies-grid">
            <c:forEach items="${movies}" var="movie">
                <div class="movie-img">
                    <a href="/movies/details/${movie.id}">
                        <img src="${movie.imagePath}" alt="${movie.name}" title="${movie.name}"
                             style="width: 100%; border-radius: 10px;">
                    </a>
                </div>
            </c:forEach>

            <c:if test="${empty movies && not empty param.query}">
                <p style="color: #493628;">No movies found for "${param.query}"</p>
            </c:if>
        </div>
    </div>

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
</div>

</body>
</html>



