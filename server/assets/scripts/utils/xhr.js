define(function(){

	
	var xhr = function(o) {
	
		
		var xhr = new XMLHttpRequest(),
			method = o.method || 'GET',
			data = o.data || '';
			
	
		xhr.open(method, o.url, true);
		
		
		xhr.setRequestHeader('Accept', 'application/vnd.github.full+json');
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState === 4) {
				document.body.removeAttribute('data-loading');
	
				if(xhr.responseText) {
					o.callback(xhr);
				}
			}
		};
	
		xhr.send(method === 'GET' ? null : data);
	
		/*var xhr = new XMLHttpRequest(),
			method = o.method || 'GET',
			data = o.data || '';
	
		xhr.open(method, 'https://api.github.com/repos/sirbrad/sirbrad.github.com/issues/' + o.config.issueID + '/comments', true);
	
		if(method !== 'GET') {
			xhr.setRequestHeader('Accept', 'application/vnd.github.full+json');
		}
	
		if(o.headers) {
			for(var header in o.headers) {
				xhr.setRequestHeader(header, o.headers[header]);
			}
		}
	
		xhr.onreadystatechange = function(){
			if(xhr.readyState === 4) {
				document.body.removeAttribute('data-loading');
	
				if(xhr.responseText) {
					o.callback(xhr);
				}
			}
		};
	
		xhr.send(method === 'GET'? null : data);*/
		
		return xhr;
	
	}	
	
	
	
	
	
	return xhr;
	

	/*function xhr(o) {
	
		var xhr = new XMLHttpRequest(),
			method = o.method || 'GET',
			data = o.data || '';
	
		xhr.open(method, o.url + (method === 'GET' && data? '?' + data : ''), true);
	
		if(method !== 'GET') {
			xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		}
	
		if(o.headers) {
			for(var header in o.headers) {
				xhr.setRequestHeader(header, o.headers[header]);
			}
		}
	
		xhr.onreadystatechange = function(){
			if(xhr.readyState === 4) {
				document.body.removeAttribute('data-loading');
	
				if(xhr.responseText) {
					o.callback(xhr);
				}
			}
		};
	
		xhr.send(method === 'GET'? null : data);
	
		return xhr;
	}*/


})