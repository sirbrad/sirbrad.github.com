define(['jquery', 'tpl!../templates/comments.tpl'], function($, tpl){


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
		        $.extend(comm.config, config);
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
				
				window_store = window.localStorage;
				
				window_store.setItem('token', token);
			
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







/*

		var config = {
			user: 'sirbrad',
			//issueID: document.body.getAttribute('data-issueID'),
			path: 'https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + document.body.getAttribute('data-issueID') + '/comments'
		};



		// We need to check if there are any comments to grab
		(function(o){
		
			xhr({ 
				url: o.path,
				callback: function(data) {
					console.log(typeof data.responseText) // the result is a string which is shit. Need to use a json parser so will just use jquery
				}
			})
		
		}(config))
	

	*/















	/*var comm = {
	
		config: {
			user: 'sirbrad',
			issueID: document.body.getAttribute('data-issueID')
		},
		
		init: function(config) {
		
		this.config['path'] = 'https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + this.config.issueID + '/comments';
			
			console.log(this)
			
		
		},
	
	}
	
		
	
	xhr({
		//url: comm.config.path
	})
	
	comm.init();*/
	
	
	//console.log(xhr)
	
	
	
	/*var xhr = new XMLHttpRequest();
	xhr.open('GET', 'https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + o.config.issueID + '/comments', true);
	xhr.onload = function(){  //instead of onreadystatechange
	    //do something
		console.log(xhr)
	};
	xhr.send();*/
	
	
	/*
	
	function createCORSRequest(method, url){
	    var xhr = new XMLHttpRequest();
	    if ("withCredentials" in xhr){
	        xhr.open(method, url, true);
	    } else if (typeof XDomainRequest != "undefined"){
	        xhr = new XDomainRequest();
	        xhr.open(method, url);
	    } else {
	        xhr = null;
	    }
	    return xhr;
	}
	
	var request = createCORSRequest("get", "http://www.nczonline.net/");
	if (request){
	    request.onload = function(){
	        //do something with request.responseText
	    };
	    request.send();
	}

	// Make request
	$.ajax('https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + o.config.issueID + '/comments', {
		headers: {Accept: "application/vnd.github.full+json"},
		success: function(data) {
			//setup(data);
			console.log(data)
		}
	});
	
	*/


})