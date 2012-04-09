define(['jquery', 'Utils/getEl', 'Utils/elementSibling'], function($, getId, es) {
	
	// Delegate a click event onto all p tags within container/
	// If any ptag have relevant data attribute on them then
	// show closed div.
	
	var container = getId('dropdown');
	
	jQuery(container).delegate('p', 'click', function(e){
		var targ = e.target;
		
		// Check if our span element is clicked
		if (targ.parentNode.getAttribute('data-peekaboo')) {
			targ = targ.parentNode;
		}
		
		
		if (targ.getAttribute('data-peekaboo')) {
			
			if (targ.getAttribute('data-peekaboo') === 'hide') {
				
				targ.className = 'dd-title';
				jQuery(es.nextElementSibling(targ)).slideUp(200, function() {
					targ.setAttribute('data-peekaboo', 'show');	
				});
			} else {
				
				// Apply class so before slide so active state is shown
				targ.className = 'dd-title open';
				jQuery(es.nextElementSibling(targ)).slideDown(200, function() {
					targ.setAttribute('data-peekaboo', 'hide');	
				});
			}
		}
		
	});
	
});