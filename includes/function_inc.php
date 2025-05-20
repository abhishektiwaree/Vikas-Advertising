<?php
function loadHeader(): void
{
  ?>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Vikas Advertising - Printing Solutions in Mumbai</title>
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
      rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">


    <!-- Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet">
  </head>

  <body class="index-page">
    <header id="header" class="header sticky-top">
      <div class="topbar d-flex align-items-center">
        <div class="container d-flex justify-content-center justify-content-md-between">
          <div class="d-none d-md-flex align-items-center">
            <i class="bi bi-clock me-1"></i> Monday - Saturday, 9AM to 7PM
          </div>
          <div class="d-flex align-items-center">
            <i class="bi bi-phone me-1"></i> Call us now +91 98765 43210
            <span class="ms-3"><i class="bi bi-envelope me-1"></i> contact@vikasadvertising.com</span>
          </div>
        </div>
      </div>

      <div class="branding d-flex align-items-center">
        <div class="container position-relative d-flex align-items-center justify-content-end">
          <a href="index.html" class="logo d-flex align-items-center me-auto">
            <img src="assets/img/logo.png" alt="Vikas Advertising Logo">
          </a>

          <nav id="navmenu" class="navmenu">
            <ul>
              <li><a href="#hero" class="active">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#services">Services</a></li>
              <li><a href="#testimonials">Testimonials</a></li>
              <li><a href="#gallery">Gallery</a></li>
              <li><a href="#pricing">Pricing</a></li>
              <li><a href="#faq">FAQs</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
            <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
          </nav>

          <a class="cta-btn" href="#contact">Request a Quote</a>
        </div>
      </div>

    </header>
    <?php
}
?>
</body>