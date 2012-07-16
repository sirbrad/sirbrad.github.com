define(['jquery'], function($){

	var clientID = '4e3a2ccec7c91a9eb26c',
		btn = $('.js-post'),
		token,
		issueId = $('body').attr('data-issueID');
	
	
	btn.click(function(e){
	
	
		var pop = open('https://github.com/login/oauth/authorize?client_id=' + clientID + '&scope=public_repo,user&redirect_uri=' + location.origin + '/login.html', 'pop', 'width=1015,height=500');
	
		
		e.preventDefault();
		
	})
	
	
	function addComment() {
		
				
		
	}
	
	
	window.addEventListener('message', function (event) {
		var code = event.data.split('&')[0];
	
	
	
	
		
		var xhr = new XMLHttpRequest();
		
		xhr.open('GET', 'http://alanfewcompany.co.uk/oauth.php?code=' + code);
		
		xhr.onreadystatechange = function () {
			if (this.status == 200 && this.readyState == 4) {
				
				var accessToken = this.responseText;
				
				
				$.ajax({
					url: 'https://api.github.com/user?access_token=' + this.responseText,
					type: 'GET',
					success: function(data, status, jqXHR){
						
						if (status === 'success') {
							var form = $('.js-form'),
								textarea = form.find('textarea')[0];
							
							var comment = {
									'body': textarea.value
								};
								
							
							$.ajax({
								url: 'https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + issueId + '/comments',
								type: 'POST',
								data: JSON.stringify(comment),
								dataType: 'json',
								headers:  {
									 Authorization: 'token '+ accessToken, 
									 Accept: 'application/vnd.github.raw'
									//'Content-Type': 'application/json; charset=UTF-8'
								},
								success: function(data, status, jqXHR){
									
									console.log(data, status, jqXHR);
									
								},
								error: function(jqXHR, textStatus, errorThrown){
									console.log(jqXHR, textStatus, errorThrown);
								}
							});
							
						}
						
					},
					error: function(jqXHR, textStatus, errorThrown){
						console.log(jqXHR, textStatus, errorThrown);
					}
				});
			}
		};
		
		xhr.send();
	});
	


});