<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SignUp</title>
    <link rel="icon" type="image/x-icon" href="/images/FavIcon.svg">
    <link rel="stylesheet" href="/styles/reset.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/styles.css">
</head>
<body class="d-flex justify-content-center align-items-center vh-100">

<div class="login-box">
    <h2 class="welcome-text">Create account</h2>

    <form action="/perform_register" method="POST">

        <div class="input-group-custom">
            <label>Name</label>
            <input type="text" placeholder="Your name" required>
        </div>

        <div class="input-group-custom">
            <label>Email</label>
            <input type="email" placeholder="example@gmail.com" required>
        </div>

        <div class="input-group-custom">
            <label>Create a password</label>
            <div class="password-wrapper">
                <input type="password" placeholder="must be 15 characters" id="regPass" required>
                <span class="toggle-password" onclick="togglePass('regPass', this)">👁️</span>
            </div>
        </div>

        <div class="input-group-custom">
            <label>Confirm password</label>
            <div class="password-wrapper">
                <input type="password" placeholder="repeat password" id="confirmPass" required>
                <span class="toggle-password" onclick="togglePass('confirmPass', this)">👁️</span>
            </div>

            <%-- quero um pop up a dizer que as passwords nao fazem match --%>
            <%-- POP UP PARA CONFIRMAÇÃO DE IDADE, MAIOR DE 18 --%>


        </div>

        <button type="submit" class="btn-login-submit" onclick="window.location.href='/login'" style="margin-top: 20px;">Create account</button>

        <p class="signup-text">
            Already have an account? <a href="/login" class="signup-link">Log in</a>
        </p>
    </form>
</div>

<script>
    function togglePass(inputId, element) {
        const input = document.getElementById(inputId);
        if (input.type === 'password') {
            input.type = 'text';
            element.innerHTML = '🙈';
        } else {
            input.type = 'password';
            element.innerHTML = '👁️';
        }
    }
</script>
</body>


</div>
</body>
</html>