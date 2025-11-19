<script>
  const accounts = [
    {
      bank: 'First Bank',
      accountName: 'Christ Mission Church',
      accountNumber: '0123456789',
      icon: '🏦'
    },
    {
      bank: 'GTBank',
      accountName: 'Christ Mission Church',
      accountNumber: '0987654321',
      icon: '💳'
    },
    {
      bank: 'Access Bank',
      accountName: 'Christ Mission Church',
      accountNumber: '1122334455',
      icon: '💰'
    }
  ];

  let copied = false;

  const copyToClipboard = (text) => {
    navigator.clipboard.writeText(text);
    copied = true;
    setTimeout(() => copied = false, 2000);
  };
</script>

<section id="giving" class="giving-section">
  <div class="container">
    <div class="section-header">
      <h2>Partner With Us</h2>
      <p>Your giving enables us to continue our mission of spreading God's word and serving our community</p>
    </div>

    <div class="giving-content">
      <div class="giving-message">
        <h3>Why Support Christ Mission Church?</h3>
        <ul>
          <li>✓ Community outreach programs</li>
          <li>✓ Spiritual development and mentoring</li>
          <li>✓ Facility maintenance and improvement</li>
          <li>✓ Missionary work and evangelism</li>
          <li>✓ Support for those in need</li>
        </ul>
        <p class="quote">"It is more blessed to give than to receive." - Acts 20:35</p>
      </div>

      <div class="accounts-grid">
        {#each accounts as account}
          <div class="account-card">
            <div class="account-icon">{account.icon}</div>
            <h4>{account.bank}</h4>
            <p class="account-name">{account.accountName}</p>
            <div class="account-number-box">
              <code>{account.accountNumber}</code>
              <button 
                class="copy-btn"
                on:click={() => copyToClipboard(account.accountNumber)}
                title="Copy account number"
              >
                {copied ? '✓ Copied!' : '📋 Copy'}
              </button>
            </div>
          </div>
        {/each}
      </div>
    </div>

    <div class="giving-methods">
      <h3>Other Ways to Give</h3>
      <div class="methods-grid">
        <div class="method">
          <span class="method-icon">📱</span>
          <h5>Mobile Transfer</h5>
          <p>Send funds via bank apps directly to our accounts</p>
        </div>
        <div class="method">
          <span class="method-icon">🏪</span>
          <h5>In-Person</h5>
          <p>Visit us during service and give your offering</p>
        </div>
        <div class="method">
          <span class="method-icon">💻</span>
          <h5>Online</h5>
          <p>Quick and secure online giving through our portal</p>
        </div>
      </div>
    </div>
  </div>
</section>

<style>
  .giving-section {
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
    max-width: 600px;
    margin: 0 auto;
  }

  .giving-content {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 3rem;
    margin-bottom: 4rem;
  }

  .giving-message h3 {
    font-size: 1.8rem;
    color: #1a1a1a;
    margin-bottom: 1.5rem;
  }

  .giving-message ul {
    list-style: none;
    margin-bottom: 2rem;
  }

  .giving-message li {
    font-size: 1.1rem;
    color: #555;
    margin-bottom: 1rem;
    line-height: 1.6;
  }

  .quote {
    font-style: italic;
    color: #2d5016;
    font-size: 1.1rem;
    padding: 1.5rem;
    background: #f0f4e8;
    border-left: 4px solid #2d5016;
    border-radius: 4px;
  }

  .accounts-grid {
    display: grid;
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }

  .account-card {
    background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
    border-radius: 12px;
    padding: 2rem;
    text-align: center;
    transition: all 0.3s ease;
    border: 2px solid transparent;
  }

  .account-card:hover {
    transform: translateY(-4px);
    border-color: #2d5016;
    box-shadow: 0 8px 24px rgba(45, 80, 22, 0.1);
  }

  .account-icon {
    font-size: 2.5rem;
    margin-bottom: 1rem;
  }

  .account-card h4 {
    color: #1a1a1a;
    margin-bottom: 0.5rem;
  }

  .account-name {
    color: #666;
    font-size: 0.95rem;
    margin-bottom: 1rem;
  }

  .account-number-box {
    background: white;
    border-radius: 8px;
    padding: 1rem;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 0.5rem;
  }

  .account-number-box code {
    font-family: 'Courier New', monospace;
    font-weight: 600;
    color: #2d5016;
    flex: 1;
  }

  .copy-btn {
    background: #2d5016;
    color: white;
    padding: 0.5rem 1rem;
    border-radius: 6px;
    font-size: 0.85rem;
    font-weight: 600;
    transition: all 0.3s ease;
    white-space: nowrap;
  }

  .copy-btn:hover {
    background: #1f3610;
  }

  .giving-methods {
    background: #f9f9f9;
    border-radius: 12px;
    padding: 3rem;
    text-align: center;
  }

  .giving-methods h3 {
    font-size: 1.8rem;
    color: #1a1a1a;
    margin-bottom: 2rem;
  }

  .methods-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
  }

  .method {
    background: white;
    border-radius: 12px;
    padding: 2rem;
    transition: all 0.3s ease;
  }

  .method:hover {
    transform: translateY(-4px);
    box-shadow: 0 8px 24px rgba(45, 80, 22, 0.1);
  }

  .method-icon {
    font-size: 2.5rem;
    display: block;
    margin-bottom: 1rem;
  }

  .method h5 {
    color: #1a1a1a;
    margin-bottom: 0.5rem;
  }

  .method p {
    color: #666;
    font-size: 0.95rem;
  }

  @media (max-width: 768px) {
    .giving-section {
      padding: 4rem 0;
    }

    .giving-content {
      grid-template-columns: 1fr;
      gap: 2rem;
    }

    .methods-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
