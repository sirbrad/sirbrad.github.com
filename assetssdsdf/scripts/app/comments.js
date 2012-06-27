define(['require', 'jquery', 'async!https://api.github.com/repos/sirbrad/sirbrad.github.com/issues'], function(require, $, issues){
	
	var issueId = $('body').attr('data-issueID'),
		commentListing = document.createElement('ol'),
		container;
	
	
	if ($('.js-comments').length) {
		
		container = $('.js-comments');
	
	} else {
		return false
	}
		
	// Add ol attributes
	commentListing.className = 'comment__listing';
	
	
	require(['async!https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + issueId + '/comments', 'tpl!../templates/comments.tpl'], function(results, tpl){
	
		var data = results.data,
			comment;
		
		for (var i = 0; i < data.length; i++) {
		
		
			comment = tpl({
				useravatar: data[i].user.avatar_url,
				username: data[i].user.login,
				url: data[i].user.url.split('users/')[1],
				content: data[i].body,
				date: Date(data[i].created_at),
				commenturl: data[i].url
			});
			
			commentListing.innerHTML += comment;
			
		}
		
		
		container.append(commentListing);
		
	})
	

})