<script lang="ts">
  import { onMount } from 'svelte';
  
  let mapContainer: HTMLDivElement;
  let mapInitialized = false;

  onMount(async () => {
    if (!mapInitialized && mapContainer) {
      // Dynamically load Leaflet CSS and JS
      const link = document.createElement('link');
      link.rel = 'stylesheet';
      link.href = 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.9.4/leaflet.min.css';
      document.head.appendChild(link);

      const script = document.createElement('script');
      script.src = 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.9.4/leaflet.min.js';
      script.async = true;
      script.onload = () => {
        // Initialize map after Leaflet is loaded
        // @ts-ignore
        const map = L.map(mapContainer).setView([6.6654, 3.5477], 13);
        // @ts-ignore
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
          attribution: '© OpenStreetMap contributors',
          maxZoom: 19
        }).addTo(map);

        // Add marker for Ilaro
        // @ts-ignore
        L.marker([6.6654, 3.5477]).addTo(map)
          .bindPopup('<b>Christ Mission Church</b><br>Ilaro, Ogun State, Nigeria')
          .openPopup();

        mapInitialized = true;
      };
      document.head.appendChild(script);
    }
  });
</script>

<section id="location" class="location-section">
  <div class="container">
    <div class="section-header">
      <h2>Visit Us</h2>
      <p>Find our church location in beautiful Ilaro, Ogun State</p>
    </div>

    <div class="location-content">
      <div class="location-info">
        <h3>Church Address</h3>
        <div class="info-item">
          <span class="icon">📍</span>
          <div>
            <h5>Location</h5>
            <p>Ilaro, Ogun State, Nigeria</p>
          </div>
        </div>
        <div class="info-item">
          <span class="icon">📞</span>
          <div>
            <h5>Phone</h5>
            <p>+234 (0) 123 456 7890</p>
          </div>
        </div>
        <div class="info-item">
          <span class="icon">✉️</span>
          <div>
            <h5>Email</h5>
            <p>info@christmissionchurch.org</p>
          </div>
        </div>
        <div class="info-item">
          <span class="icon">🕐</span>
          <div>
            <h5>Service Times</h5>
            <p>Sunday: 9:00 AM<br>Wednesday: 5:00 PM<br>Friday: 5:00 PM<br>Saturday: 5:30 PM</p>
          </div>
        </div>

        <button class="get-directions">
          🗺️ Get Directions
        </button>
      </div>

      <div class="map-container" bind:this={mapContainer}></div>
    </div>
  </div>
</section>

<style>
  .location-section {
    padding: 6rem 0;
    background: linear-gradient(to bottom, #f5f7fa, white);
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
  }

  .section-header {
    text-align: center;
    margin-bottom: 4rem;
  }

  .section-header h2 {
    font-size: 2.5rem;
    color: #1a1a1a;
    margin-bottom: 1rem;
  }

  .section-header p {
    font-size: 1.1rem;
    color: #666;
  }

  .location-content {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 3rem;
    align-items: stretch;
  }

  .location-info {
    background: white;
    border-radius: 12px;
    padding: 2.5rem;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
  }

  .location-info h3 {
    font-size: 1.8rem;
    color: #1a1a1a;
    margin-bottom: 2rem;
  }

  .info-item {
    display: flex;
    gap: 1.5rem;
    margin-bottom: 2rem;
  }

  .icon {
    font-size: 1.8rem;
    display: flex;
    align-items: flex-start;
    padding-top: 0.25rem;
  }

  .info-item h5 {
    font-size: 1rem;
    color: #1a1a1a;
    margin-bottom: 0.25rem;
  }

  .info-item p {
    color: #666;
    font-size: 0.95rem;
    margin: 0;
  }

  .get-directions {
    background: linear-gradient(135deg, #2d5016 0%, #1f3610 100%);
    color: white;
    width: 100%;
    padding: 1rem;
    border-radius: 8px;
    font-weight: 600;
    font-size: 1rem;
    margin-top: 1rem;
    transition: all 0.3s ease;
  }

  .get-directions:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(45, 80, 22, 0.2);
  }

  .map-container {
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
    height: 400px;
    min-height: 400px;
  }

  :global(.map-container .leaflet-container) {
    height: 100% !important;
  }

  @media (max-width: 768px) {
    .location-section {
      padding: 4rem 0;
    }

    .location-content {
      grid-template-columns: 1fr;
      gap: 2rem;
    }

    .map-container {
      height: 300px;
    }
  }
</style>
