<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/commonhead/common_head.jsp" %>
  <meta charset="UTF-8" />
  <title>Doctor Registration | SoulSpace</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background: #0d0d0d;
      color: white;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .container {
      background: #1a1a1a;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 0 20px #7873f5;
      width: 100%;
      max-width: 420px;
    }

    h2 {
      text-align: center;
      margin-bottom: 25px;
      background: linear-gradient(90deg, #ff6ec4, #7873f5);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    input {
      width: 100%;
      padding: 12px;
      margin: 12px 0;
      border: none;
      border-radius: 8px;
      background: #2a2a2a;
      color: white;
      font-size: 1rem;
    }

    button {
      width: 100%;
      padding: 12px;
      background: linear-gradient(90deg, #ff6ec4, #7873f5);
      border: none;
      border-radius: 25px;
      color: white;
      font-weight: bold;
      cursor: pointer;
      margin-top: 20px;
      box-shadow: 0 0 10px #ff6ec4, 0 0 20px #7873f5;
      transition: transform 0.2s;
    }

    button:hover {
      transform: scale(1.03);
    }

    .message {
      margin-top: 10px;
      color: #ff6ec4;
      font-size: 0.9rem;
      text-align: center;
    }

    .link {
      text-align: center;
      margin-top: 15px;
    }

    .link a {
      color: #00ffff;
      text-decoration: none;
    }

    .link a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Doctor Registration</h2>
 <form id="doctorForm" action="#" method="post">
  <input type="text" name="name" placeholder="Full Name" required />
  <input type="email" id="emailInput" name="email" placeholder="Email" required />
  <input type="tel" name="phone" placeholder="Phone Number" pattern="[0-9]{10}" required />
  <input type="password" name="password" placeholder="Password" required />
   <input type="text" name="qualification" placeholder="Educational Qualification" required />
  <input type="number" name="experience" placeholder="Years of Experience" min="0" required />
  <button type="submit">Register</button>
</form>

    <div id="message" class="message"></div>
    <div class="link">
      Already registered? <a href="#">Login</a>
    </div>
  </div>

  <script>
    document.getElementById("emailInput").addEventListener("blur", function () {
      const email = this.value.trim();
      const message = document.getElementById("message");

      if (email.length === 0) {
        message.innerHTML = "";
        return;
      }

      fetch("check-doctor-email?email=" + encodeURIComponent(email))
        .then(response => response.json())
        .then(data => {
          if (data.exists) {
            message.innerHTML = "You are already registered with us.";
          } else {
            message.innerHTML = "";
          }
        })
        .catch(error => {
          console.error("Error checking email:", error);
        });
    });
  </script>
</body>
</html>
