<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="icon" type="image/x-icon" href="/images/Logo_v4.svg">
    <link rel="stylesheet" href="/styles/reset.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/styles.css">
</head>
<body class="d-flex justify-content-center align-items-center vh-100">

<div class="login-box">
    <h2 class="welcome-text">Hi, Welcome!</h2>

    <form action="/perform_login" method="POST">
        <div class="input-group-custom">
            <label>Email address</label>
            <input type="email" placeholder="Your email" required>
        </div>

        <div class="input-group-custom">
            <label>Password</label>
            <div class="password-wrapper">
                <input type="password" placeholder="Password" id="passInput" required>
                <span class="toggle-password" id="toggleText" onclick="togglePassword()">👁️</span>
            </div>
        </div>

        <div class="form-options">
            <label class="remember-me">
                <input type="checkbox" checked>
                <span class="checkmark"></span>
                Remember me
            </label>
            <a href="/forgotpass" class="forgot-link">Forgot password?</a>
        </div>

        <button class="btn-login mb-4" onclick="window.location.href='/home'">Login</button>

        <p class="signup-text">
            Don't have an account? <a href="signup" class="login-link">Sign up</a>
        </p>
    </form>
</div>

<script>
    function togglePassword() {
        const passwordInput = document.getElementById('passInput');
        const toggleText = document.getElementById('toggleText');
        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            toggleText.innerHTML = '🙈';
        } else {
            passwordInput.type = 'password';
            toggleText.innerHTML = '👁️';
        }
    }
</script>

</body>
</html>