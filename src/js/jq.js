// Hero Carousel
;( function( $, window, document, undefined ) {
  'use strict';

  console.log('jq');

  var bannerBox = $('.banner-box');
  var bannerBoxItems = $('.banner-box-item');

  bannerBox.addClass('owl-carousel');
  bannerBoxItems.removeClass('hide');

  bannerBox.owlCarousel({
    items: 1,
    loop:true,
    margin:10,
    nav:false,
    dots: true,
    autoplay:true,
    autoplayTimeout:5000,
    autoplayHoverPause:true,
    singleItem: 1
  });

})( jQuery, window, document );
