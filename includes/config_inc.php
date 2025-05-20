<?php
function getFooter(): void
{
    ?>
    <footer id="footer" class="footer accent-background">
        <div class="container">
            <div class="footer-top">
                <div class="row gy-4">
                    <!-- Column 1: Vikas Advertising (2x wider) -->
                    <div class="col-lg-4 col-md-6">
                        <div class="footer-info">
                            <a href="index.php" class="logo d-flex align-items-center">
                                <span class="sitename">Vikas Advertising</span>
                            </a>
                            <p class="mt-3">Your trusted printing partner in Mumbai since 2009. We specialize in
                                high-quality flex, mug, t-shirt, and eco-friendly printing solutions.</p>
                            <div class="social-links mt-4">
                                <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                                <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                                <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>
                    </div>

                    <!-- Column 2: Quick Links -->
                    <div class="col-lg-2 col-md-3 footer-links">
                        <h4>Quick Links</h4>
                        <ul>
                            <li><i class="bi bi-chevron-right"></i> <a href="index.php#home">Home</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="index.php#about">About</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="index.php#services">Services</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="index.php#gallery">Gallery</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="index.php#contact">Contact</a></li>
                        </ul>
                    </div>

                    <!-- Column 3: Our Services -->
                    <div class="col-lg-2 col-md-3 footer-links">
                        <h4>Our Services</h4>
                        <ul>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">Flex Printing</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">Mug Printing</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">T-Shirt Printing</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">Eco Printing</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">Digital Printing</a></li>
                        </ul>
                    </div>

                    <!-- Column 4: Contact Us -->
                    <div class="col-lg-2 col-md-6 footer-contact">
                        <h4>Contact Us</h4>
                        <p>
                            Shop No. 5, Andheri West <br>
                            Mumbai, MH 400058<br>
                            India <br><br>
                            <strong>Phone:</strong> +91 98765 43210<br>
                            <strong>Email:</strong> contact@vikasadvertising.com<br>
                        </p>
                    </div>

                    <!-- Column 5: Newsletter -->
                    <div class="col-lg-2 col-md-6 footer-newsletter">
                        <h4>Our Newsletter</h4>
                        <p>Subscribe for printing tips and exclusive offers</p>
                        <form action="" method="post">
                            <input type="email" name="email" placeholder="Your Email">
                            <button type="submit" class="btn-subscribe">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>


            <div class="footer-bottom">
                <div class="container d-flex flex-wrap justify-content-between align-items-center">
                    <div class="copyright">
                        &copy; Copyright <strong><span>Vikas Advertising</span></strong>. All Rights Reserved
                    </div>
                    <div class="credits">
                        Designed by <a href="http://weknowtech.in" target="_blank">Weknow Technologies</a> with 💖
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
    <?php
}
?>