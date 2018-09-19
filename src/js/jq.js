// Hero Carousel
;( function( $, window, document, undefined ) {
  'use strict';

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

//FAQ
;( function( $, window, document, undefined ) {
  'use strict';

  var faq = $('.faq');
  faq.addClass('faq-js');

  var entryQuestions = $('.faq dt');
  var entryAnswers = $('.faq dd');

  // Add raquo to each question
  entryQuestions.each(function(index, node) {
    var html = $(node).html();
    var html = html + ' &raquo;';
    $(node).html(html);
  });

  // Hide all answers
  entryAnswers.hide();

  // Bind click callback to questions
  entryQuestions.click(function(e) {
    var entryNode = $(e.currentTarget);
    var answerNode = entryNode.next();

    if(answerNode) {
      if(answerNode.css('display') == 'none') {
        console.log('answerNode has class hide');
        answerNode.show();
      } else {
        answerNode.hide();
      }
    }

  });

})( jQuery, window, document );

// Select filter
;( function( $, window, document, undefined ) {
  'use strict';

  $('.js-select-filter').each(function(index, node) {

    var filterCtnId = $(node).data('filterctn');
    var filterItemSelector = $(node).data('filteritemselector');

    var select = $(node).find('select');
    var filterCtn = $(node).parent().find('#' + filterCtnId);

    if(select && filterCtn && filterItemSelector) {

      $(select).change(function(e) {
        var currentSelect = $(e.currentTarget);

        var currentSelectValue = currentSelect.val();


        var allFilterItems = filterCtn.find('.' + filterItemSelector);
        var filteredItems = filterCtn.find('.' + currentSelectValue);

				if(currentSelectValue == "0") {
					allFilterItems.show();
				} else {
					allFilterItems.hide();
					filteredItems.show();
				}

      });

      $(node).addClass('select-filter-ready');
    }


  });

})( jQuery, window, document );
