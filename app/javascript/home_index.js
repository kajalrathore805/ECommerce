
 
  
document.addEventListener('DOMContentLoaded', () => {
    const slider = document.querySelector('.product-slider');
    const prevBtn = document.querySelector('.prev-btn');
    const nextBtn = document.querySelector('.next-btn');
    const productCards = document.querySelectorAll('.product-card');

    const cardWidth = productCards[0].offsetWidth;
    let currentIndex = 0;
    const cardsToShow = 3; // Number of cards to show at once

    function updateSlider() {
      slider.style.transform = `translateX(${-currentIndex * cardWidth}px)`;
      
      // Update button enabled/disabled state
      prevBtn.disabled = (currentIndex === 0);
      nextBtn.disabled = (currentIndex >= productCards.length - cardsToShow);
    }
    
    updateSlider();

    nextBtn.addEventListener('click', () => {
      if (currentIndex < productCards.length - cardsToShow) {
        currentIndex++;
        updateSlider();
      }
    });

    prevBtn.addEventListener('click', () => {
      if (currentIndex > 0) {
        currentIndex--;
        updateSlider();
      }
    });
  });


