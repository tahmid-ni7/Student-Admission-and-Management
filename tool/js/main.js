(function ($) {
	'use strict';

	jQuery(document).ready(function () {

		$('.slider-content').owlCarousel({
			items: 1,
			nav: false,
			dots: true,
			loop: true,
			autoplay: false
		});

		/*=== Confirmation of delete ===*/
		$('.delete').on("click", function (e) {
		    e.preventDefault();

		    var choice = confirm($(this).attr('data-confirm'));

		    if (choice) {
		        window.location.href = $(this).attr('href');
		    }
		});

	});


})(jQuery);