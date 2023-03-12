<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../aplika/css/log.css">
</head>
<body>

    <div class="container">
        <h1>LOGIN</h1>
    <form method="post" action="../backend/login.php">
        <div class="form-control">
            <input type="text" required placeholder="Username" name="username"/>
            <label for="Your Username"></label>
        </div>
        <div class="form-control">
            <input type="password" required placeholder="Password" name="password"/>
            <label for="Your password"></label>
        </div>
        <button class="btn" name="login" value="Log In">Submit</button>
        <p>Don't have an account?
            <a href="create.php">Create Account</a></p>

    </form>
    <script>    
        const labels = document.querySelectorAll(".form-control label");
    labels.forEach((label)=>{
    label.innerHTML = label.innertext
    .split("")
    .map(
        (letter, idx )=>
            <span  style="transition-delay:${idx * 50}ms">${letter}</span>
    )
    .join("");
});

    </script>
</div>
</body>
</html>