<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link rel="icon" type="image/x-icon" href="/pictures/LogoVHS.svg">
    <link rel="stylesheet" href="/static.styles/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">    <link rel="stylesheet" href="/styles/styles.css">
</head>
<body>


<body class="d-flex justify-content-center align-items-center vh-100">

<div class="login-box">
    <button class="btn-back" onclick="window.location.href='/verify-code'">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#493628" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m15 18-6-6 6-6"/></svg>
    </button>

    <h2 class="welcome-text">Reset password</h2>

    <p class="description-text">
        Please type something you'll remember
    </p>

    <form action="/update-password" method="POST">
        <div class="input-group-custom">
            <label>New password</label>
            <div class="password-wrapper">
                <input type="password" placeholder="must be 15 characters" id="newPass" required>
                <span class="toggle-password" onclick="togglePass('newPass', this)">👁️</span>
            </div>
        </div>

        <div class="input-group-custom">
            <label>Confirm new password</label>
            <div class="password-wrapper">
                <input type="password" placeholder="repeat password" id="confirmNewPass" required>
                <span class="toggle-password" onclick="togglePass('confirmNewPass', this)">👁️</span>
            </div>
        </div>

        <button type="submit" class="btn-login-submit" style="margin-top: 20px;">
            Reset password
        </button>

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