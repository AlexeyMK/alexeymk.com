// Simple Experiment Module with Override Support
window.Experiment = {
  getVariant: function(experimentName) {
    const key = `experiment_${experimentName}`;
    
    // Check for query parameter override (e.g., ?experiment_scarcity_cta=treatment)
    const urlParams = new URLSearchParams(window.location.search);
    const override = urlParams.get(key);
    if (override && ['control', 'treatment'].includes(override)) {
      localStorage.setItem(key, override);
      return override;
    }
    
    // Check for existing stored variant
    let variant = localStorage.getItem(key);
    
    if (!variant) {
      variant = Math.random() < 0.5 ? 'control' : 'treatment';
      localStorage.setItem(key, variant);
      
      // Log assignment for tracking
      if (typeof gtag !== 'undefined') {
        gtag('event', 'experiment_assignment', {
          'experiment': experimentName,
          'variant': variant
        });
      }
    }
    
    return variant;
  }
};