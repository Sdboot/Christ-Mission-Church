<script>
  import Hero from './components/Hero.svelte';
  import Header from './components/Header.svelte';
  import Meetings from './components/Meetings.svelte';
  import Sermon from './components/Sermon.svelte';
  import Giving from './components/Giving.svelte';
  import Location from './components/Location.svelte';
  import Footer from './components/Footer.svelte';
</script>

<svelte:window />

<Header />
<Hero />
<Meetings />
<Sermon />
<Giving />
<Location />
<Footer />

<style global>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  body {
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
    color: #1a1a1a;
    background-color: #f9f9f9;
    line-height: 1.6;
  }

  h1, h2, h3, h4, h5, h6 {
    font-weight: 700;
    margin-bottom: 1rem;
  }

  p {
    margin-bottom: 1rem;
  }

  button {
    cursor: pointer;
    border: none;
    border-radius: 8px;
    font-size: 1rem;
    padding: 12px 24px;
    transition: all 0.3s ease;
  }

  a {
    text-decoration: none;
    color: inherit;
  }
</style>
