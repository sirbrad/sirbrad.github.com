define(['jquery', 'tpl!../templates/comments.tpl'], function($, tpl){

	window.store = window.localStorage;

	var bod = document.body,
		listing,
		o = {
	
		config: {
				user: 'sirbrad',
				clientID: '4e3a2ccec7c91a9eb26c',
				container: $('.js-comments'),
				path: 'https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + bod.getAttribute('data-issueID') + '/comments'
		},
		init: function(config) {
		
			if (config && typeof(config) == 'object') {
		        $.extend(o.config, config);
		    }
		    
		    o.$container = o.config.container;
		    
		    listing = document.createElement('ol');
		    listing.className = 'comment__listing';
				
			o.grabData();
		
		},
		grabData: function(){
		
			// Make request
			$.ajax(this.config.path, {
				headers: {Accept: "application/vnd.github.full+json"},
				dataType: 'json',
				success: function(data) {
					
					if (data.length) {
						o.appendData(data);
					}
				}
			});
		
		
		},
		appendData: function(data){
			
			$.each(data, function(i){
				
			comment = tpl({
				useravatar: data[i].user.avatar_url,
				username: data[i].user.login,
				url: data[i].user.url.split('users/')[1],
				content: data[i].body_html,
				date: o.formatDate(data[i].created_at),
				commenturl: data[i].url
			});
			
			listing.innerHTML += comment;
		
		});
	
			o.$container
				.append(listing)
				.addClass('has-comments');
		
		},
		formatDate: function(str){
		
			var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
				newDate = new Date(str),
				currentDay = newDate.getDate(),
				currentMonth = newDate.getMonth(),
				currentYear = newDate.getFullYear();
				
			return currentDay + ' ' + months[currentMonth] + ' ' + currentYear;
			
		},
		authenticate: function(){},
		postComment: function(){
			
			var popup = open('https://github.com/login/oauth/authorize?client_id=' + o.config.clientID + '&scope=public_repo,user&redirect_uri=' + location.origin + '/login.html', 'popup', 'width=920,height=500');
			
		},
		validate: function(elem){
		
			// Need to make this check for linebreaks aswell as empty string
		
			var $area = $(elem).find('textarea');
		
			if ($area.val() === '') {
				
				elem.addClass('comment--error');
				
				$area.on('keyup', function(){
				
					if ($area.val() !== '') {
						elem.removeClass('comment--error');
					} 
					
				})
			} else {
			
				console.log(window.store)
			
				o.postComment();
			}
		
		}
	
	}
	
	// Events
	
	$('.js-post-comment').on('click', 'input', function(e){
	
		o.validate($(this).parent());
	
		e.preventDefault();
	})
	
	window.addEventListener('message', function (e) {
		
		$.ajax({
			url: 'http://alanfewcompany.co.uk/oauth.php?code=' + e.data.split('&')[0],
			type: 'GET',
			success: function(token) {
			
				/* OK I GOT UP TO HERE. BASICALLY NEED TO FIGURE OUT THE WAY
					OF CHECKING LOCAL STORAGE BEFORE CALLIGN THE POP UP WINDOW
					TO VERIFY USER. NEED TO SET A GLOBAL BUT WILL BE GOOD TO
					SLEEP ON IT. SO CLOSE.!
				 */
				
				
				window.store.setItem('token', token);
				
				
			
			}
		})
	})
	
	/*$(window).on('message', function(event){
	
		console.log(eve)
		
		//var code = e.data.split('&')[0];
		
		
		/*$.ajax({
			url: 'http://alanfewcompany.co.uk/oauth.php?code=' + code,
			type: 'GET',
			success: function(data) {
				console.log(data)
			}
		})*
		
	})*/


$(document).ready(function() {
    o.init();
});

console.log(window.store)



})