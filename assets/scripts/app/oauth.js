define(['jquery'], function($){

	var clientID = '4e3a2ccec7c91a9eb26c';
	
	
	
	var authHost = 'https://github.com/login/oauth/authorize?client_id=' + clientID + '&redirect_uri=' + window.location.href + '&scope=public_repo';	

	
	$('.js-post').click(function(e){
	
	
		window.location.href = authHost;
		
	
	
		e.preventDefault();
	})
	

	
	
	
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