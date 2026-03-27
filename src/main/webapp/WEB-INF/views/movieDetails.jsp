<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${movie.name} - Details</title>
    <link rel="icon" type="image/x-icon" href="/images/FavIcon.svg">
    <link rel="stylesheet" href="/styles/reset.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
        <button class="menu-btn">📋 Lists</button>
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

    <div class="container-fluid mt-5"> <h1 class="movie-header-title mb-4">${movie.name}</h1>

        <div class="row gx-2 align-items-start">

            <div class="col-auto">
                <img src="${movie.imagePath}" alt="${movie.name}" class="poster-detail">
            </div>

            <div class="col ps-4">
                <div class="d-flex align-items-center justify-content-between mb-3">
                    <div class="stars rating-stars">★★★★★</div>

                    <div class="action-icons-detail">
                        <span>♡</span>
                        <span class="ms-3">➦</span>
                    </div>
                </div>

                <div class="movie-year">
                    <p class="meta-value">${movie.year}</p>
                </div>

                <p class="meta-label">Genre</p>
                <p class="meta-value">${movie.genre.name}</p>

                <p class="meta-label">Director</p>
                <p class="meta-value">${movie.director.name}</p>

                <p class="meta-label">Actors</p>
                <div class="meta-value">
                    <c:forEach items="${movie.actors}" var="actor">
                        <div class="actor-name">${actor.name}</div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-12">
                <div class="meta-value">
                    <div class="description-text">${movie.description}</div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>