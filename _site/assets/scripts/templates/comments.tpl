<li class="comment__item">
	<a href="http://github.com/<%= url %>" class="img" title="http://github.com/<%= url %>"><img src="<%= useravatar %>" class="comment__avatar" alt="<%= username %>'s avatar" width="80" height="80" /></a>
	<div class="bod">			
		<a href="http://github.com/<%= url %>" class="comment__id" title="<%= username %>"><%= username %></a>
		<time datetime="<%= date %>" class="comment__date" pubdate=""><%= date %></time>
		<%= content %>
	</div>
</li>