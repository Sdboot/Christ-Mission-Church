<script>
  const currentYear = new Date().getFullYear();
</script>

<footer class="footer">
  <div class="container">
    <div class="footer-content">
      <div class="footer-section">
        <h4>Christ Mission Church</h4>
        <p>Bringing people closer to God through faith, fellowship, and service.</p>
        <div class="social-links">
          <a href="#" title="Facebook">f</a>
          <a href="#" title="Twitter">𝕏</a>
          <a href="#" title="Instagram">📷</a>
          <a href="#" title="YouTube">▶</a>
        </div>
      </div>

      <div class="footer-section">
        <h5>Quick Links</h5>
        <ul>
          <li><a href="#meetings">Meetings</a></li>
          <li><a href="#sermon">Sermons</a></li>
          <li><a href="#giving">Giving</a></li>
          <li><a href="#location">Location</a></li>
        </ul>
      </div>

      <div class="footer-section">
        <h5>Contact Info</h5>
        <ul>
          <li>📍 Ilaro, Ogun State, Nigeria</li>
          <li>📞 +234 (0) 123 456 7890</li>
          <li>✉️ info@christmissionchurch.org</li>
        </ul>
      </div>

      <div class="footer-section">
        <h5>Service Times</h5>
        <ul>
          <li>🕐 Sunday: 9:00 AM</li>
          <li>📖 Wednesday: 5:00 PM</li>
          <li>🙏 Friday: 5:00 PM</li>
          <li>✨ Saturday: 5:30 PM</li>
        </ul>
      </div>
    </div>

    <div class="footer-bottom">
      <p>&copy; {currentYear} Christ Mission Church. All rights reserved.</p>
      <p>Made with ❤️ by <a href="#">CMC Web Team</a></p>
    </div>
  </div>
</footer>

<style>
  .footer {
    background: #1a1a1a;
    color: #eee;
    padding: 4rem 0 2rem;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
  }

  .footer-content {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 3rem;
    margin-bottom: 3rem;
  }

  .footer-section h4,
  .footer-section h5 {
    color: white;
    margin-bottom: 1rem;
    font-size: 1.1rem;
  }

  .footer-section p {
    color: #aaa;
    font-size: 0.95rem;
    line-height: 1.6;
  }

  .social-links {
    display: flex;
    gap: 1rem;
    margin-top: 1rem;
  }

  .social-links a {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 40px;
    height: 40px;
    background: #2d5016;
    border-radius: 50%;
    color: white;
    transition: all 0.3s ease;
    font-weight: 600;
  }

  .social-links a:hover {
    background: #1f3610;
    transform: translateY(-3px);
  }

  .footer-section ul {
    list-style: none;
  }

  .footer-section li {
    color: #aaa;
    margin-bottom: 0.75rem;
    font-size: 0.95rem;
  }

  .footer-section a {
    color: #2d5016;
    transition: color 0.3s ease;
  }

  .footer-section a:hover {
    color: #4a7c21;
  }

  .footer-bottom {
    border-top: 1px solid #333;
    padding-top: 2rem;
    text-align: center;
    color: #aaa;
    font-size: 0.9rem;
  }

  .footer-bottom p {
    margin: 0.5rem 0;
  }

  .footer-bottom a {
    color: #2d5016;
    transition: color 0.3s ease;
  }

  .footer-bottom a:hover {
    color: #4a7c21;
  }

  @media (max-width: 768px) {
    .footer {
      padding: 3rem 0 1.5rem;
    }

    .footer-content {
      gap: 2rem;
    }
  }
</style>
