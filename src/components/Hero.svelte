<script>
  let isHovering = false;

  const handleJoinClick = () => {
    const meetingsSection = document.getElementById('meetings');
    if (meetingsSection) {
      meetingsSection.scrollIntoView({ behavior: 'smooth' });
    }
  };
</script>

<section class="hero">
  <div class="container">
    <div class="hero-content">
      <h1 class="hero-title">Christ Mission Church</h1>
      <p class="hero-subtitle">
        A community devoted to faith and bringing all the earth to Christ.
      </p>
      <button 
        class="cta-button"
        on:click={handleJoinClick}
        on:mouseenter={() => isHovering = true}
        on:mouseleave={() => isHovering = false}
      >
        <span class="button-text">Join us this Sunday</span>
        <span class="button-arrow" class:active={isHovering}>→</span>
      </button>
    </div>
  </div>
</section>

<style>
  .hero {
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
    overflow: hidden;
    padding-top: 80px;
  }

  .hero::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: url('/assets/salvation.jpg') center/cover no-repeat;
    filter: blur(2px);
    z-index: 0;
  }

  .hero::after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(245, 247, 250, 0.5);
    z-index: 0;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    width: 100%;
    position: relative;
    z-index: 1;
  }

  .hero-content {
    text-align: center;
    animation: fadeInUp 0.8s ease-out;
  }

  @keyframes fadeInUp {
    from {
      opacity: 0;
      transform: translateY(30px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .hero-title {
    font-size: 4rem;
    font-weight: 800;
    color: #1a1a1a;
    margin-bottom: 1.5rem;
    line-height: 1.2;
  }

  .hero-subtitle {
    font-size: 1.3rem;
    color: #555;
    margin-bottom: 3rem;
    line-height: 1.6;
    max-width: 600px;
    margin-left: auto;
    margin-right: auto;
  }

  .cta-button {
    display: inline-flex;
    align-items: center;
    gap: 12px;
    padding: 16px 32px;
    background: linear-gradient(135deg, #2d5016 0%, #1f3610 100%);
    color: white;
    font-size: 1.1rem;
    font-weight: 600;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(45, 80, 22, 0.2);
    transition: all 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
    position: relative;
    overflow: hidden;
  }

  .cta-button::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.1);
    transition: left 0.3s ease;
  }

  .cta-button:hover {
    transform: translateY(-2px);
    box-shadow: 0 15px 40px rgba(45, 80, 22, 0.3);
  }

  .cta-button:hover::before {
    left: 100%;
  }

  .button-text {
    position: relative;
    z-index: 2;
  }

  .button-arrow {
    font-size: 1.3rem;
    transition: transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
    position: relative;
    z-index: 2;
  }

  .button-arrow.active {
    transform: translateX(4px);
  }

  @media (max-width: 768px) {
    .hero {
      min-height: 70vh;
    }

    .hero-title {
      font-size: 2.5rem;
    }

    .hero-subtitle {
      font-size: 1.1rem;
      margin-bottom: 2rem;
    }

    .cta-button {
      padding: 14px 28px;
      font-size: 1rem;
    }
  }

  @media (max-width: 480px) {
    .hero-title {
      font-size: 1.8rem;
    }

    .hero-subtitle {
      font-size: 1rem;
    }
  }
</style>
