<script lang="ts">
  interface Sermon {
    id: number;
    title: string;
    speaker: string;
    date: string;
    image: string;
    description: string;
  }

  const sermons: Sermon[] = [
    {
      id: 1,
      title: 'The Power of Faith',
      speaker: 'Pastor John',
      date: 'November 17, 2024',
      image: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
      description: 'Discover how faith transforms our lives and brings us closer to God.'
    },
    {
      id: 2,
      title: 'Walking in Grace',
      speaker: 'Pastor Mary',
      date: 'November 10, 2024',
      image: 'linear-gradient(135deg, #f093fb 0%, #f5576c 100%)',
      description: 'Understanding God\'s grace and how it guides our daily journey.'
    },
    {
      id: 3,
      title: 'Community in Christ',
      speaker: 'Pastor David',
      date: 'November 3, 2024',
      image: 'linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)',
      description: 'The importance of unity and fellowship within our church community.'
    }
  ];

  let selectedSermon = sermons[0];
</script>

<section id="sermon" class="sermon-section">
  <div class="container">
    <div class="section-header">
      <h2>Latest Sermons</h2>
      <p>Inspiring messages from our pastors</p>
    </div>

    <div class="sermon-content">
      <div class="sermon-featured">
        <div class="featured-image" style="background: {selectedSermon.image}">
          <div class="play-button">▶</div>
        </div>
        <div class="featured-info">
          <div class="sermon-meta">
            <span class="speaker">{selectedSermon.speaker}</span>
            <span class="date">{selectedSermon.date}</span>
          </div>
          <h3>{selectedSermon.title}</h3>
          <p>{selectedSermon.description}</p>
          <button class="watch-btn">Watch Sermon</button>
        </div>
      </div>

      <div class="sermon-list">
        <h4>More Sermons</h4>
        {#each sermons as sermon}
          <div 
            class="sermon-item"
            class:active={selectedSermon.id === sermon.id}
            on:click={() => selectedSermon = sermon}
          >
            <div class="item-image" style="background: {sermon.image}"></div>
            <div class="item-info">
              <p class="item-title">{sermon.title}</p>
              <p class="item-meta">{sermon.speaker} • {sermon.date}</p>
            </div>
          </div>
        {/each}
      </div>
    </div>
  </div>
</section>

<style>
  .sermon-section {
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

  .sermon-content {
    display: grid;
    grid-template-columns: 2fr 1fr;
    gap: 3rem;
  }

  .sermon-featured {
    display: flex;
    flex-direction: column;
    gap: 2rem;
  }

  .featured-image {
    width: 100%;
    height: 400px;
    border-radius: 16px;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }

  .featured-image::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.3);
    transition: background 0.3s ease;
  }

  .featured-image:hover::before {
    background: rgba(0, 0, 0, 0.5);
  }

  .play-button {
    font-size: 3rem;
    color: white;
    position: relative;
    z-index: 2;
    transition: transform 0.3s ease;
  }

  .featured-image:hover .play-button {
    transform: scale(1.2);
  }

  .featured-info {
    animation: slideInUp 0.5s ease-out;
  }

  @keyframes slideInUp {
    from {
      opacity: 0;
      transform: translateY(20px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .sermon-meta {
    display: flex;
    gap: 1rem;
    margin-bottom: 1rem;
  }

  .speaker {
    background: #2d5016;
    color: white;
    padding: 0.5rem 1rem;
    border-radius: 20px;
    font-size: 0.9rem;
    font-weight: 600;
  }

  .date {
    color: #999;
    font-size: 0.9rem;
    display: flex;
    align-items: center;
  }

  .featured-info h3 {
    font-size: 2rem;
    color: #1a1a1a;
    margin-bottom: 1rem;
  }

  .featured-info p {
    color: #555;
    font-size: 1.1rem;
    margin-bottom: 1.5rem;
  }

  .watch-btn {
    background: #2d5016;
    color: white;
    padding: 12px 28px;
    border-radius: 8px;
    font-weight: 600;
    transition: all 0.3s ease;
    width: fit-content;
  }

  .watch-btn:hover {
    background: #1f3610;
    transform: translateY(-2px);
  }

  .sermon-list {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }

  .sermon-list h4 {
    font-size: 1.2rem;
    color: #1a1a1a;
    margin-bottom: 1rem;
  }

  .sermon-item {
    display: flex;
    gap: 1rem;
    padding: 1rem;
    border-radius: 12px;
    cursor: pointer;
    transition: all 0.3s ease;
    background: #f9f9f9;
    border: 2px solid transparent;
  }

  .sermon-item:hover {
    transform: translateX(4px);
    border-color: #2d5016;
  }

  .sermon-item.active {
    border-color: #2d5016;
    background: white;
  }

  .item-image {
    width: 80px;
    height: 80px;
    border-radius: 8px;
    flex-shrink: 0;
  }

  .item-info {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }

  .item-title {
    font-weight: 600;
    color: #1a1a1a;
    margin: 0;
  }

  .item-meta {
    font-size: 0.85rem;
    color: #999;
    margin: 0;
  }

  @media (max-width: 768px) {
    .sermon-section {
      padding: 4rem 0;
    }

    .sermon-content {
      grid-template-columns: 1fr;
      gap: 2rem;
    }

    .featured-image {
      height: 250px;
    }

    .featured-info h3 {
      font-size: 1.5rem;
    }

    .sermon-list {
      order: -1;
    }
  }
</style>
