module.exports = {
  // Utilise le CSS personnalisé
  stylesheet: 'pdf-style.css',
  
  // Options Puppeteer pour un meilleur rendu
  pdf_options: {
    format: 'A4',
    margin: {
      top: '2cm',
      right: '2cm',
      bottom: '2cm',
      left: '2cm'
    },
    printBackground: true,
    displayHeaderFooter: true,
    headerTemplate: `
      <div style="font-size: 10px; color: #666; width: 100%; text-align: center; margin-top: 10px;">
        Guide d'utilisation TN
      </div>
    `,
    footerTemplate: `
      <div style="font-size: 10px; color: #666; width: 100%; text-align: center; margin-bottom: 10px;">
        <span class="pageNumber"></span> / <span class="totalPages"></span>
      </div>
    `
  },
  
  // Options de lancement de Chrome
  launch_options: {
    args: [
      '--no-sandbox',
      '--disable-setuid-sandbox',
      '--disable-dev-shm-usage',
      '--disable-gpu'
    ]
  },
  
  // Attendre que les images se chargent
  port: 0,
  
  // Extensions supportées
  marked_options: {
    gfm: true,
    breaks: true,
    smartypants: true
  }
};
