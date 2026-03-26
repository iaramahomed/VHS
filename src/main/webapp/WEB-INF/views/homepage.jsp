<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Homepage</title>
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


        <div class="categories">
            <a href="/vhs" class="category-image"><img src="/images/VHS_botao.svg"></a>
            <a href="/dvd" class="category-image"><img src="/images/DVD_1.svg"></a>
            <a href="/digital" class="category-image"><img src="/images/Digital_botao.jpg"></a>
        </div>
        <div class="top-movies">


            <div class="movies-grid">
                <div class="top-movies">
                    <h2 class="section-title">
                        <c:out value="${not empty selectedDecade ? selectedDecade : sectionTitle}" />
                    </h2>

                    <div class="movies-grid">
                        <c:forEach items="${movies}" var="movie">
                            <div class="movie-img">
                                <a href="/movies/details/${movie.id}">
                                    <img src="${movie.imagePath}" alt="${movie.name}" title="${movie.name}">
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>