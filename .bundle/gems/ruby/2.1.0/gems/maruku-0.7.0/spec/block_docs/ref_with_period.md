Write a comment here
*** Parameters: ***
{} # params 
*** Markdown input: ***
[a. b] is a link.

[a. b]: http://site.com/

*** Output of inspect ***
md_el(:document,[
	md_par([md_link(["a. b"],nil), " is a link."]),
	md_ref_def("a. b", "http://site.com/", {:title=>nil})
],{},[])
*** Output of to_html ***
<p><a href="http://site.com/">a. b</a> is a link.</p>
*** Output of to_latex ***
\href{http://site.com/}{a. b} is a link.
*** Output of to_md ***
[a. b] is a link.

[a. b]: http://site.com/

*** Output of to_s ***
a. b is a link.
