<script>
  let mobileMenuOpen = false;

  const toggleMenu = () => {
    mobileMenuOpen = !mobileMenuOpen;
  };

  const scrollToSection = (id) => {
    const element = document.getElementById(id);
    if (element) {
      element.scrollIntoView({ behavior: 'smooth' });
      mobileMenuOpen = false;
    }
  };
</script>

<header class="header">
  <div class="container">
    <div class="nav-wrapper">
      <div class="logo">
        <img src="/assets/cmc logo2.jpeg" alt="CMC Logo" class="logo-img" />
      </div>
      
      <nav class="nav-desktop">
        <a href="#meetings" on:click={() => scrollToSection('meetings')}>Meetings</a>
        <a href="#sermon" on:click={() => scrollToSection('sermon')}>Sermons</a>
        <a href="#giving" on:click={() => scrollToSection('giving')}>Giving</a>
        <a href="#location" on:click={() => scrollToSection('location')}>Location</a>
      </nav>

      <button class="mobile-toggle" on:click={toggleMenu}>
        <span></span>
        <span></span>
        <span></span>
      </button>
    </div>

    {#if mobileMenuOpen}
      <nav class="nav-mobile">
        <a href="#meetings" on:click={() => scrollToSection('meetings')}>Meetings</a>
        <a href="#sermon" on:click={() => scrollToSection('sermon')}>Sermons</a>
        <a href="#giving" on:click={() => scrollToSection('giving')}>Giving</a>
        <a href="#location" on:click={() => scrollToSection('location')}>Location</a>
      </nav>
    {/if}
  </div>
</header>

<style>
  .header {
    background: white;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
    position: sticky;
    top: 0;
    z-index: 100;
    position: relative;
    overflow: hidden;
  }

  .header::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: url('/assets/salvation.jpg') center/cover no-repeat;
    filter: blur(5px);
    z-index: 0;
  }

  .header::after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(255, 255, 255, 0.95);
    z-index: 1;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    position: relative;
    z-index: 2;
  }

  .nav-wrapper {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0.5rem 0;
    position: relative;
    z-index: 2;
  }

  .logo-img {
    height: 100px;
    width: 100px;
    max-width: 150px;
    object-fit: contain;
  }

  .nav-desktop {
    display: flex;
    gap: 2rem;
  }

  .nav-desktop a {
    color: #1a1a1a;
    font-weight: 500;
    transition: color 0.3s ease;
  }

  .nav-desktop a:hover {
    color: #2d5016;
  }

  .mobile-toggle {
    display: none;
    flex-direction: column;
    background: none;
    padding: 0;
    gap: 6px;
  }

  .mobile-toggle span {
    width: 25px;
    height: 3px;
    background: #1a1a1a;
    border-radius: 2px;
  }

  .nav-mobile {
    display: none;
    flex-direction: column;
    gap: 1rem;
    padding: 1rem 0;
    border-top: 1px solid #eee;
  }

  .nav-mobile a {
    color: #1a1a1a;
    font-weight: 500;
    padding: 0.5rem 0;
  }

  @media (max-width: 768px) {
    .nav-desktop {
      display: none;
    }

    .mobile-toggle {
      display: flex;
    }

    .nav-mobile {
      display: flex;
    }
  }
</style>
