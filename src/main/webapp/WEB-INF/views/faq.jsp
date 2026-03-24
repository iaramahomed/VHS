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

    <div class="faq">
        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                        How can I rent a movie?
                    </button>
                </h2>
                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">You can browse the catalog, select a movie, and click “Rent” or “Add to your list”.</div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                        Do I need an account to use the video store?
                    </button>
                </h2>
                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Yes, you need to create an account to rent movies and save favorites.</div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                        I forgot my password. What should I do?
                    </button>
                </h2>
                <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">You can use the “Forgot Password” option on the login page.</div>
                </div>
            </div>
        </div>
    </div>
    <div class="question-form">
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Email address</label>
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
        </div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Any Question?</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
        <div class="bottom-btn">
                <button class="select-btn">Send</button>
                <button class="select-btn">Cancel</button>
        </div>
    </div>


</div>
</body>
</html>