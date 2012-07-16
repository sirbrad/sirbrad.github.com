define(['jquery'], function($){

	var secretID = 'SECRET';

	var clientID = '4e3a2ccec7c91a9eb26c',
		btn = $('.js-post'),
		token;
	
	
	// Set href for authorisation
	/*btn.attr('href', 'https://github.com/login/oauth/authorize?client_id=' + clientID + '&scope=public_repo,user&redirect_uri=' + location.href);
	
	// Check to see if user is returning with
	// a valid token
	(window.location.href.split('code=').length > 1) ? token = window.location.href.split('code=')[1].split('&')[0] : false;

	//console.log(btn, location, token)
	
	
	var url = 'https://github.com/login/oauth/access_token' + token + '?client_id=' + clientID + '&client_secret=' + secretID + '&code=' + token;	*/
	
	
	
	
	btn.click(function(e){
	
	
		var pop = open('https://github.com/login/oauth/authorize?client_id=' + clientID + '&scope=public_repo,user&redirect_uri=' + location.origin + '/login.html', 'pop', 'width=1015,height=500');
	
	
	})
	
	//var url = 'https://github.com/login/oauth/access_token' + token + '?client_id=' + clientID + '&client_secret=' + secretID + '&code=' + token;
	
	
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
					success: function(data, textStatus, jqXHR){
						console.log(data, textStatus, jqXHR);
					},
					error: function(jqXHR, textStatus, errorThrown){
						console.log(jqXHR, textStatus, errorThrown);
					}
				});
			}
		};
		
		xhr.send();

	
	
	
	
		
		/*	// Create the XHR object.
		function createCORSRequest(method, url) {
		  var xhr = new XMLHttpRequest();
		  if ("withCredentials" in xhr) {
		    // XHR for Chrome/Safari/Firefox.
		    xhr.open(method, url, true);
		  } else if (typeof XDomainRequest != "undefined") {
		    // XDomainRequest for IE.
		    xhr = new XDomainRequest();
		    xhr.open(method, url);
		  } else {
		    // CORS not supported.
		    xhr = null;
		  }
		  return xhr;
		}
		
		
		
		// Make the actual CORS request.
		function makeCorsRequest(url) {
		
		  var xhr = createCORSRequest('POST', url);
		  if (!xhr) {
		    alert('CORS not supported');
		    return;
		  }
		  
		  xhr.setRequestHeader('custom-header', 'value');
		
		  // Response handlers.
		  xhr.onload = function() {
		    var text = xhr.responseText;
		    	console.log(xhr)
		    alert('Response from CORS request to ' + url);
		  };
		
		  xhr.onerror = function() {
		    alert('Woops, there was an error making the request.');
		  };
		
		  xhr.send();
		}
		
		
		makeCorsRequest('http://alanfewcompany.co.uk/oauth.php?code=' + code);*/
		
	
	
	
	
	

	// Step 5
	/*$.get('http://alanfewcompany.co.uk/oauth.php?code=' + code, function (access_token) {
		// Step 7
		//$('#access_token').val(access_token);
		
		console.log(access_token)

		/*$.getJSON('https://api.github.com/user?access_token=' + access_token, function (user) {
			$('#username').val(user.login);
		});*
	});*/
});

	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	


	/*if (token) {
	
		$.ajax({
			type: 'POST',
			url: 'https://github.com/login/oauth/access_token' + token + '?client_id=' + clientID + '&client_secret=' + secretID + '&code=' + token,
			 xhrFields: {
			      withCredentials: true
			   }
		}).done(function() {
			console.log('done')
		});
	
	
	}*/









	// Ok here is where I am.. I'm requesting permission when the user presses the btn.
	// User gets taken to github, and return to me with a query param in url.
	// I run a quick check for a param in url (run this everytime script runs atm) and store it as token
	
	// Now I need to post on the users behalf using the token and my secret key.. (not sure how to keep this secret either)
	// Then I will do some basic js to set the username to the user_name and textarea to the body and so fourth.
	
	// some links to remind you: http://developer.github.com/v3/oauth/  |  https://github.com/LeaVerou/dabblet/blob/master/code/gist.js
	
	
	// Then I can look into websockts to get it automating.
	// Also would like to use xhr instead of jquery ajax.

	/*******var token,
		clientID = '4e3a2ccec7c91a9eb26c',
		authHost = 'https://github.com/login/oauth/authorize?client_id=' + clientID + '&redirect_uri=' + window.location.href + '&scope=public_repo';	
		
	// Check to see if user is returning with
	// a valid token
	(window.location.href.split('code=').length > 1) ? token = window.location.href.split('code=')[1].split('&')[0] : false;

	
	console.log(token)
	
	
	$('.js-form').delegate($('.js-post'), 'click', function(e){
	
	
		var inpVal = $(this).find('input')[0].value;
		var tareaVal = $(this).find('textarea')[0].value;
	
		console.log(inpVal, tareaVal)
		
		this.setAttribute('action', 'https://api.github.com/repos/'+ inpVal +'/repo/issues/'+$('body').attr('data-issueID')+'/comments/1')
		
		this.submit();
		
		e.preventDefault();
		
	
	})*/
	
	
	
	
	
	
	
	
	
	 /*  $(function () {
        var extractToken = function(hash) {
          var match = hash.match(/access_token=(\w+)/);
          return !!match && match[1];
        };
          

		
	
       var endUserAuthorizationEndpoint = authHost + "/connect";

        var token = extractToken(document.location.hash);
        if (token) {
          $('div.authenticated').show();

          $('span.token').text(token);

          $.ajax({
              url: resourceHost + '/me'
            , beforeSend: function (xhr) {
                xhr.setRequestHeader('Authorization', "OAuth " + token);
                xhr.setRequestHeader('Accept',        "application/json");
              }
            , success: function (response) {
                var container = $('span.user');
                if (response) {
                  container.text(response.username);
                } else {
                  container.text("An error occurred.");
                }
              }
          });
        } else {
          $('div.authenticate').show();

          var authUrl = endUserAuthorizationEndpoint + 
            "?response_type=token" +
            "&client_id="    + setting.clientId +
            "&redirect_uri=" + window.location;

          $("a.connect").attr("href", authUrl);
        }
      });*/
	


});