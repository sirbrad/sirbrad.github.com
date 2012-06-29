define(['jquery'], function($){


	// Ok here is where I am.. I'm requesting permission when the user presses the btn.
	// User gets taken to github, and return to me with a query param in url.
	// I run a quick check for a param in url (run this everytime script runs atm) and store it as token
	
	// Now I need to post on the users behalf using the token and my secret key.. (not sure how to keep this secret either)
	// Then I will do some basic js to set the username to the user_name and textarea to the body and so fourth.
	
	// some links to remind you: http://developer.github.com/v3/oauth/  |  https://github.com/LeaVerou/dabblet/blob/master/code/gist.js
	
	
	// Then I can look into websockts to get it automating.
	// Also would like to use xhr instead of jquery ajax.

	var token;
	
	
	
	function listen() {
	
		$('.js-post').click(function(e){
			
		
			window.location.href = authHost;
		
		
			e.preventDefault();
		})
		
	}
		
	// Check to see if user is returning with
	// a valid token
	(window.location.href.split('code=').length > 1) ? token = window.location.href.split('code=')[1] : listen();
	
	var clientID = '4e3a2ccec7c91a9eb26c',
		authHost = 'https://github.com/login/oauth/authorize?client_id=' + clientID + '&redirect_uri=' + window.location.href + '&scope=public_repo';	

	
	
	

	
	
	
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