Comment
*** Parameters: ***
{}
*** Markdown input: ***
Here is an example of AppleScript:

    tell application "Foo"
        beep
    end tell
    	tab

*** Output of inspect ***
md_el(:document,[
	md_par(["Here is an example of AppleScript:"]),
	md_el(:code,[],{:raw_code=>"tell application \"Foo\"\n    beep\nend tell\n\ttab", :lang=>nil},[])
],{},[])
*** Output of to_html ***
<p>Here is an example of AppleScript:</p>

<pre><code>tell application "Foo"
    beep
end tell
	tab</code></pre>
*** Output of to_latex ***
Here is an example of AppleScript:

\begin{verbatim}tell application "Foo"
    beep
end tell
	tab\end{verbatim}
*** Output of to_md ***
Here is an example of AppleScript:

     tell application "Foo"
         beep
     end tell
     	tab
*** Output of to_s ***
Here is an example of AppleScript:
