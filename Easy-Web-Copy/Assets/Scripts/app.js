define(['jquery', 'Utils/getEl'], function(jQuery, getId){
	var input = getId('input'),
		output = getId('output'),
		group;
		
	function render(val) {
		
		// Reset values
		output.innerHTML = "";
		group = [];
		
		// Check for new line, when one is found wrap in P tags
		var newtext = val.replace(/([^\n]+)/g, function(found, cg1){
			var temp = '<p>' + cg1 + '</p>';
			
			// Stripping out any spaces before the closing p tag. CODE OCD
			temp = temp.replace(/\s(<\/p>)/, function(found, cg1){
				return cg1;
			});
			
			group.push(temp);
			return temp;
		});
		
		for (var i = 0; i < group.length; i++) {
			var txt = document.createTextNode(group[i]),
				p = document.createElement('p');
				
			p.appendChild(txt);
			output.appendChild(p)
		}
	}
		 
	
	jQuery(input).bind('keyup', function(e){
		var targ = e.target,
			val = targ.value;
		
		render(val);
		
	});

});