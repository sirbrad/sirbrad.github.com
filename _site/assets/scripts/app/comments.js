define(['jquery', 'tpl!../templates/comments.tpl'], function($, tpl){
	
	var issueId = $('body').attr('data-issueID'),
		commentListing = document.createElement('ol'),
		container = $('.js-comments'),
		comment;
		
	// Add ol attributes
	commentListing.className = 'comment__listing';
	
	// Format date
	function formatDate(str) {
	
		var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
			newDate = new Date(str),
			currentDay = newDate.getDate(),
			currentMonth = newDate.getMonth(),
			currentYear = newDate.getFullYear();
			
		return currentDay + ' ' + months[currentMonth] + ' ' + currentYear;
		
	}
	
	
	function setup(data){
	
		$.each(data, function(i){
				
			comment = tpl({
				useravatar: data[i].user.avatar_url,
				username: data[i].user.login,
				url: data[i].user.url.split('users/')[1],
				content: data[i].body_html,
				date: formatDate(data[i].created_at),
				commenturl: data[i].url
			});
			
			commentListing.innerHTML += comment;
		
		
		});
		
		// Append node
		container.append(commentListing);
		
	};
	
	
	// Make request
	$.ajax('https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + issueId + '/comments', {
		headers: {Accept: "application/vnd.github.full+json"},
		success: function(data) {
			setup(data);
		}
	});
	
	
	
	$('input[type=submit]').click(function(e){
	
		
		var val = this.previousElementSibling.value;
		
		$.post('https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + issueId + '/comments', { body: val },
	   		function(data) {
	     	console.log("Data Loaded: " + data);
	   	});
		
		
		
		e.preventDefault();
	
	});
	

})