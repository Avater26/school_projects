/*jslint browser, for*/

document.addEventListener('DOMContentLoaded', function () {
    'use strict';
    var heroSlider = document.getElementById('heroslider');
    var slides = Array.from(heroSlider.getElementsByTagName('li'));
    var slideIndex = 0;


    function showSlide(n) {
        slides.forEach(function (slide) {
            slide.style.display = 'none';
        });
        slides[n].style.display = 'block';
    }

    function slideChanger(direction = 'next') {
        if (direction === 'next' && slideIndex === slides.length - 1) {
            slideIndex = 0;
        } else {
            slideIndex += 1;
        }
        showSlide(slideIndex);
    }


    var slideInterval = setInterval(slideChanger, 5000);

    function pauseSlideshow() {
        clearInterval(slideInterval);
    }

    function playSlideshow() {
        slideInterval = setInterval(slideChanger, 5000);
    }

    showSlide(slideIndex);
    heroSlider.addEventListener('mouseover', pauseSlideshow);
    heroSlider.addEventListener('mouseout', playSlideshow);
});