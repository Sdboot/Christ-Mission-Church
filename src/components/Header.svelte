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
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 100;
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
    padding: 0.75rem 0;
    position: relative;
    z-index: 2;}

  .logo-img {
    height: 80px;
    width: 80px;
    border-radius:50% ;
    max-width: 120px;
    object-fit: contain;
  }

  .nav-desktop {
    display: flex;
    gap: 2rem;
  }

  .nav-desktop a {
    color: #222;
    font-weight: 500;
    transition: color 0.3s ease;
    text-shadow: 0 1px 3px rgba(0, 0, 0, 0.3);
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
    background: white;
    border-radius: 2px;
    text-shadow: 0 1px 3px rgba(0, 0, 0, 0.3);
  }

  .nav-mobile {
    display: none;
    flex-direction: column;
    gap: 1rem;
    padding: 1rem 0;
    border-top: 1px solid rgba(255, 255, 255, 0.2);
  }

  .nav-mobile a {
    color: white;
    font-weight: 500;
    padding: 0.5rem 0;
    text-shadow: 0 1px 3px rgba(0, 0, 0, 0.3);
  }

  @media (max-width: 768px) {
    .logo-img {
    height: 50px;
    width: 50px;
    border-radius: 50%;
    margin-left: 10px;
    max-width: 80px;}
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
