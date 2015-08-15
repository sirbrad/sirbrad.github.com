Write a comment here
*** Parameters: ***
{} # params 
*** Markdown input: ***
* [Maruku]: good.

[maruku]: http://maruku.org/

*** Output of inspect ***
md_el(:document,[
	md_el(:ul,[
		md_el(:li,[md_link(["Maruku"],nil), ": good."],{:want_my_paragraph=>false},[])
	],{},[]),
	md_ref_def("maruku", "http://maruku.org/", {:title=>nil})
],{},[])
*** Output of to_html ***
<ul>
<li><a href="http://maruku.org/">Maruku</a>: good.</li>
</ul>
*** Output of to_latex ***
\begin{itemize}%
\item \href{http://maruku.org/}{Maruku}: good.

\end{itemize}
*** Output of to_md ***
-aruku: good.
*** Output of to_s ***
Maruku: good.
