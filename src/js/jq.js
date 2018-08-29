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

    nav:true,
    navText : [
      '<i class="icon-chevron-left"><span class="label">Next</span>',
      '<i class="icon-chevron-right"><span class="label">Previous</span>'
    ],

    dots: true,

    //autoplay:true,
    autoplay:false,
    //autoplayTimeout:5000,
    autoplayTimeout:50000000000000000,
    autoplayHoverPause:true,

    singleItem: 1

  });


  // var heroCarousel = $('.hero-carousel');
  // heroCarousel.addClass('owl-carousel');
  // var heroCarouselWrap = $(heroCarousel).parents('.hero-carousel-wrap')[0];
  //
  // heroCarousel.owlCarousel({
  //
  //   items: 1,
  //
  //   loop:true,
  //   margin:10,
  //
  //   nav:true,
  //   navText : [
  //     '<i class="icon-chevron-left"><span class="label">Next</span>',
  //     '<i class="icon-chevron-right"><span class="label">Previous</span>'
  //   ],
  //
  //   dots: true,
  //
  //   //autoplay:true,
  //   autoplay:false,
  //   //autoplayTimeout:5000,
  //   autoplayTimeout:50000000000000000,
  //   autoplayHoverPause:true,
  //
  //   singleItem: 1
  //
  // });



})( jQuery, window, document );
