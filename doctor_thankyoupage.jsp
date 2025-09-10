<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/commonhead/common_head.jsp" %>
  <meta charset="UTF-8" />
  <title>Registration Successful | SoulSpace</title>
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
      text-align: center;
    }

    .message-box {
      background: #1a1a1a;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 0 20px #7873f5;
      max-width: 500px;
    }

    h1 {
      background: linear-gradient(90deg, #ff6ec4, #7873f5);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      font-size: 2rem;
      margin-bottom: 20px;
    }

    p {
      font-size: 1rem;
      color: #ccc;
    }

    a {
      display: inline-block;
      margin-top: 30px;
      color: #00ffff;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="message-box">
    <h1>Thank You for Registering!</h1>
    <p>We have received your details. Our team will contact you shortly for the next steps.</p>
    <a href="index.jsp">← Back to Homepage</a>
  </div>
</body>
</html>
