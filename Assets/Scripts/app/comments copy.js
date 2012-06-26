define(['require', 'jquery', 'async!https://api.github.com/repos/sirbrad/sirbrad.github.com/issues'], function(require, $, issues){

	var documentTitle = document.title,
		issueId,
		commentListing = document.createElement('ol'),
		container = document.getElementsByClassName('js-comments')[0];
		
	// Add ol attributes
	commentListing.className = 'comment__listing';
	
	
	// Locate our repo with same title and store id
	for (var i = 0; i < issues.data.length; i++) {
		
		if (issues.data[i].title === documentTitle) {
		
				issueId = issues.data[i].number;
			}
	}
	
	
	require(['async!https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + issueId + '/comments', 'tpl!../templates/comments.tpl'], function(results, tpl){
	
		var data = results.data,
			comment;
		
		
			console.log(Date.prototype)
		
		for (var i = 0; i < data.length; i++) {
		
		
			comment = tpl({
				useravatar: data[i].user.avatar_url,
				username: data[i].user.login,
				url: data[i].user.url.split('users/')[1],
				content: data[i].body,
				date: data[i].created_at,
				commenturl: data[i].url
			});
			
			commentListing.innerHTML += comment;
			
		}
		
		
		container.appendChild(commentListing);
		
	})
	
	// so im setting this dynamically..
	//$('.js-form').attr('action', 'https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + issueId + '/comments');
	
	
	
	$('.js-form').delegate('input[type=submit]', 'click', function(e){
		//$.post('https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + issueId + '/comments', { body: this.find('textarea')[0].value } );
		//console.log(this)
		
		alert(this.find('textarea')[0].value)
		
		e.preventDefault();
		
	});
	

})