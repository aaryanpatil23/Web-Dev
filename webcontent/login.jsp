<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>VYRA | Account</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&family=Montserrat:wght@300;400;500;600&display=swap" rel="stylesheet">

<!-- Custom CSS -->
<link rel="stylesheet" href="style.css">

<style>

/* Background with reduced exposure */
.auth-bg{
    min-height:100vh;
    background:
        linear-gradient(rgba(0,0,0,0.75), rgba(0,0,0,0.85)),
        url("/static/shop.png");
    background-size:cover;
    background-position:center;
    background-attachment:fixed;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:40px 20px;
}

/* Glass Card */
.auth-card{
    width:420px;
    background:rgba(10,10,10,0.85);
    backdrop-filter:blur(20px);
    border:1px solid var(--gold-glow);
    border-radius:8px;
    padding:45px 35px;
    box-shadow:0 30px 60px rgba(0,0,0,0.8);
}

/* Brand Title */
.brand-title{
    text-align:center;
    font-family:'Playfair Display', serif;
    font-size:36px;
    letter-spacing:6px;
    color:var(--gold);
    margin-bottom:5px;
}

.brand-sub{
    text-align:center;
    font-size:12px;
    letter-spacing:3px;
    color:var(--gold);
    opacity:0.7;
    margin-bottom:35px;
}

/* Inputs */
.auth-input{
    width:100%;
    padding:13px 15px;
    margin-bottom:18px;
    background:transparent;
    border:1px solid var(--gold-glow);
    color:var(--text-light);
    font-size:14px;
    letter-spacing:1px;
    outline:none;
    transition:0.3s;
}

.auth-input:focus{
    border-color:var(--gold);
    box-shadow:0 0 12px var(--gold-glow);
}

/* Button */
.auth-btn{
    width:100%;
    padding:14px;
    background:linear-gradient(to right, #cfaa6a, #e6d1a8, #cfaa6a);
    border:none;
    color:var(--maroon-dark);
    font-weight:600;
    letter-spacing:2px;
    text-transform:uppercase;
    transition:0.3s;
}

.auth-btn:hover{
    transform:translateY(-2px);
    box-shadow:0 10px 25px rgba(207,170,106,0.4);
}

/* Toggle */
.toggle-text{
    text-align:center;
    margin-top:20px;
    font-size:13px;
    letter-spacing:1px;
}

.toggle-text span{
    color:var(--gold);
    cursor:pointer;
}

.toggle-text span:hover{
    text-decoration:underline;
}

</style>
</head>

<body>

<div class="auth-bg">

    <div class="auth-card">

        <div class="brand-title">VYRA</div>
        <div class="brand-sub">ACCESS YOUR ESSENCE</div>

        <h5 class="text-center text-warning mb-4" id="formTitle">LOGIN</h5>

        <form action="LoginServlet" method="post">
            <input type="email" name="email" class="auth-input" placeholder="Email Address" required>
            <input type="password" name="password" class="auth-input" placeholder="Password" required>
            <button type="submit" class="auth-btn">Enter</button>
        </form>

        <div class="toggle-text text-light">
            Don’t have an account? 
            <span onclick="toggleForm()">Sign Up</span>
        </div>

    </div>

</div>

<script>

let isLogin = true;

function toggleForm(){
    const form = document.getElementById("authForm");
    const title = document.getElementById("formTitle");
    const toggleText = document.querySelector(".toggle-text");

    if(isLogin){
        form.innerHTML = `
            <input type="text" class="auth-input" placeholder="Full Name" required>
            <input type="email" class="auth-input" placeholder="Email Address" required>
            <input type="password" class="auth-input" placeholder="Password" required>
            <button type="submit" class="auth-btn">Create Account</button>
        `;
        title.innerText = "SIGN UP";
        toggleText.innerHTML = `Already have an account? <span onclick="toggleForm()">Login</span>`;
    }else{
        form.innerHTML = `
            <input type="email" class="auth-input" placeholder="Email Address" required>
            <input type="password" class="auth-input" placeholder="Password" required>
            <button type="submit" class="auth-btn">Enter</button>
        `;
        title.innerText = "LOGIN";
        toggleText.innerHTML = `Don’t have an account? <span onclick="toggleForm()">Sign Up</span>`;
    }

    isLogin = !isLogin;
}

</script>

</body>
</html>