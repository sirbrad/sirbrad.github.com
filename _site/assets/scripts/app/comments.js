define(['jquery', 'tpl!../templates/comments.tpl'], function($, tpl){
	
	var issueId = $('body').attr('data-issueID'),
		commentListing = document.createElement('ol'),
		container = $('.js-comments'),
		comment;
		
	// Add ol attributes
	commentListing.className = 'comment__listing';
	
	
	function setup(data){
	
		$.each(data, function(i){
				
			comment = tpl({
				useravatar: data[i].user.avatar_url,
				username: data[i].user.login,
				url: data[i].user.url.split('users/')[1],
				content: data[i].body_html,
				date: Date(data[i].created_at),
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

})