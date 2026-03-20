<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <link rel="icon" type="image/x-icon" href="/pictures/LogoVHS.svg">
    <link rel="stylesheet" href="/styles/reset.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/styles.css">
</head>
<body class="d-flex justify-content-center align-items-center vh-100">

<div class="login-box">
    <button class="btn-back" onclick="window.location.href='/login'">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#493628" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m15 18-6-6 6-6"/></svg>
    </button>

    <h2 class="welcome-text">Forgot password?</h2>

    <p class="description-text">
        Don't worry! It happens. Please enter the email associated with your account.
    </p>

    <form action="/send-code" method="POST">
        <div class="input-group-custom">
            <label>Email address</label>
            <input type="email" placeholder="Enter your email address" required>
        </div>

        <button type="submit" class="btn-login-submit" style="margin-top: 20px;">
            Send code
        </button>

        <p class="signup-text">
            Remember password? <a href="/login" class="signup-link">Log in</a>
        </p>
    </form>
</div>

</script>
</body>

</div>
</body>
</html>