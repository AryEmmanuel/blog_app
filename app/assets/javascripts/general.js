$(document).ready(function() {
	setTimeout(function() {
		$('.noti').fadeOut('slow', function() {
			$(this).remove();
		});
	}, 3500);
});