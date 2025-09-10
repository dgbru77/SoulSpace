<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/commonhead/common_head.jsp" %>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>SoulSpace | Heal. Grow. Thrive.</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    body {
      background-color: #0d0d0d;
      color: #fff;
      
    }

    .intro {
      position: fixed;
      width: 100%;
      height: 100%;
      background-color: #0d0d0d;
      display: flex;
      justify-content: center;
      align-items: center;
      z-index: 999;
      animation: fadeOut 2.5s forwards;
      animation-delay: 2.5s;
    }

    .intro h1 {
      font-size: 3rem;
      color: #ffffff;
      opacity: 0;
      animation: slideUp 2s forwards;
    }
    .glow-text {
  background: linear-gradient(90deg, #ff6ec4, #7873f5);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  text-shadow: 0 0 10px #ff6ec4, 0 0 20px #7873f5;
}
    

    @keyframes slideUp {
      0% {
        transform: translateY(50px);
        opacity: 0;
      }
      100% {
        transform: translateY(0);
        opacity: 1;
      }
    }

    @keyframes fadeOut {
      to {
        opacity: 0;
        visibility: hidden;
      }
    }

    header {
      display: flex;
      justify-content: flex-end;
      padding: 20px 40px;
      background-color: transparent;
      position: absolute;
      top: 0;
      width: 100%;
      z-index: 10;
    }

    header a {
      color: #fff;
      text-decoration: none;
      margin-left: 30px;
      font-weight: 600;
      transition: color 0.3s;
    }

    header a:hover {
      color: #00ffff;
    }

    .hero {
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 40px;
      background: linear-gradient(145deg, #1a1a1a, #111111);
      opacity: 0;
      animation: fadeIn 2s forwards;
      animation-delay: 3s;
    }

    .content {
      text-align: center;
      max-width: 600px;
    }

    .content h1 {
      font-size: 3rem;
      background: linear-gradient(90deg, #ff6ec4, #7873f5);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    .content p {
      margin: 20px 0;
      font-size: 1.1rem;
      color: #ccc;
    }

    .glow-btn {
      padding: 12px 30px;
      font-size: 1rem;
      border: none;
      border-radius: 30px;
      background: linear-gradient(90deg, #ff6ec4, #7873f5);
      color: #fff;
      cursor: pointer;
      box-shadow: 0 0 15px #ff6ec4, 0 0 30px #7873f5;
      transition: transform 0.3s, box-shadow 0.3s;
    }

    .glow-btn:hover {
      transform: scale(1.05);
      box-shadow: 0 0 20px #ff6ec4, 0 0 40px #7873f5;
    }

    @keyframes fadeIn {
      to {
        opacity: 1;
      }
    }

    @media (max-width: 768px) {
      .content h1 {
        font-size: 2.2rem;
      }

      .content p {
        font-size: 1rem;
      }

      .glow-btn {
        padding: 10px 20px;
      }

      header {
        justify-content: center;
      }
    }
  </style>
</head>
<body>
  <div class="intro">
    <h1>Welcome to <span class="glow-text">SoulSpace</span></h1>
  </div>

  <header>
    <a href="/SoulSpace/users/Services.jsp">Services</a>
    <a href="/SoulSpace/users/Contact_us.jsp">Contact</a>
  </header>

  <section class="hero">
    <div class="content">
      <h1>Your Safe Space for Healing</h1>
      <p>
        SoulSpace is your online sanctuary where licensed professionals and safe conversations come together. Let's begin your mental wellness journey.
      </p>
     <a href="/SoulSpace/users/Login.jsp">
  <button class="glow-btn">Get Started</button>
</a>
    </div>
  </section>
 <section class="features">
  <style>
    .features {
      background: #121212;
      padding: 60px 20px;
    }

    .features h2 {
      text-align: center;
      font-size: 2.2rem;
      color: #fff;
      margin-bottom: 40px;
      background: linear-gradient(90deg, #ff6ec4, #7873f5);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    .features-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 30px;
      max-width: 1000px;
      margin: auto;
    }

    .feature-card {
      background: #1f1f1f;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 0 15px rgba(120,115,245,0.2);
      transition: transform 0.3s ease;
    }

    .feature-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 0 20px rgba(255,110,196,0.4);
    }

    .feature-card h3 {
      margin-bottom: 10px;
      font-size: 1.2rem;
      color: #ff6ec4;
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .feature-card p {
      color: #ccc;
      font-size: 0.95rem;
    }

    .feature-card i {
      color: #7873f5;
    }
  </style>

  <h2>Why Choose SoulSpace?</h2>

  <div class="features-grid">
    <div class="feature-card">
      <h3><i class="fas fa-user-md"></i> Certified Psychiatrists</h3>
      <p>All experts are professionally licensed and verified.</p>
    </div>

    <div class="feature-card">
      <h3><i class="fas fa-user-secret"></i> Anonymous Conversations</h3>
      <p>Your identity remains private. No pressure, just care.</p>
    </div>

    <div class="feature-card">
      <h3><i class="fas fa-hand-holding-heart"></i> Empathetic Support</h3>
      <p>Real humans who listen, connect, and support your healing.</p>
    </div>

    <div class="feature-card">
      <h3><i class="fas fa-clock"></i> Flexible Scheduling</h3>
      <p>Choose slots that suit your lifestyle - anytime, anywhere.</p>
    </div>

    <div class="feature-card">
      <h3><i class="fas fa-mobile-alt"></i> Multi-Device Access</h3>
      <p>Join sessions from your phone, tablet, or desktop with ease.</p>
    </div>

    <div class="feature-card">
      <h3><i class="fas fa-lock"></i> End-to-End Encryption</h3>
      <p>Military-grade security ensures complete confidentiality.</p>
    </div>
  </div>
</section>
  <div style="text-align: center; margin-top: 40px;">
    <p style="color: #ccc;">
      Are you a certified psychiatrist? <a href="doctor-register.jsp" style="color: #00ffff; text-decoration: none;">Join our network of trusted mental health experts</a>
    </p>
  </div>
  <div style="text-align: center; margin-top: 10px;">
  <p style="color: #ccc;">
    Already a registered psychiatrist? <a href="DoctorLogin.jsp" style="color: #00ffff; text-decoration: none;">Login here</a>
  </p>
</div>
 
<footer style="background-color: #0b0b0b; padding: 20px 0; text-align: center; color: #888; font-size: 0.9rem;">
  &copy; 2025 SoulSpace. All rights reserved.
</footer>

</body>
</html>