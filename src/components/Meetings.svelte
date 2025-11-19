<script lang="ts">
  interface Meeting {
    day: string;
    time: string;
    icon: string;
  }

  const meetings: Meeting[] = [
    { day: 'Wednesday', time: '5:00 PM', icon: '📖' },
    { day: 'Friday', time: '5:00 PM', icon: '🙏' },
    { day: 'Saturday', time: '5:30 PM', icon: '✨' },
    { day: 'Sunday', time: '9:00 AM', icon: '⛪' }
  ];
</script>

<section id="meetings" class="meetings">
  <div class="container">
    <div class="section-header">
      <h2>Weekly Meetings</h2>
      <p>Join us for worship, prayer, and fellowship throughout the week</p>
    </div>

    <div class="meetings-grid">
      {#each meetings as meeting}
        <div class="meeting-card">
          <div class="meeting-icon">{meeting.icon}</div>
          <h3>{meeting.day}</h3>
          <p class="meeting-time">{meeting.time}</p>
        </div>
      {/each}
    </div>
  </div>
</section>

<style>
  .meetings {
    padding: 6rem 0;
    background: white;
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
    max-width: 500px;
    margin: 0 auto;
  }

  .meetings-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
  }

  .meeting-card {
    background: #f9f9f9;
    border-radius: 12px;
    padding: 2rem;
    text-align: center;
    transition: all 0.3s ease;
    border: 2px solid transparent;
  }

  .meeting-card:hover {
    transform: translateY(-8px);
    border-color: #2d5016;
    box-shadow: 0 12px 32px rgba(45, 80, 22, 0.1);
  }

  .meeting-icon {
    font-size: 3rem;
    margin-bottom: 1rem;
    display: inline-block;
  }

  .meeting-card h3 {
    font-size: 1.5rem;
    color: #1a1a1a;
    margin-bottom: 0.5rem;
  }

  .meeting-time {
    font-size: 1.1rem;
    color: #2d5016;
    font-weight: 600;
  }

  @media (max-width: 768px) {
    .meetings {
      padding: 4rem 0;
    }

    .section-header h2 {
      font-size: 2rem;
    }

    .meetings-grid {
      grid-template-columns: 1fr;
      gap: 1.5rem;
    }
  }
</style>
