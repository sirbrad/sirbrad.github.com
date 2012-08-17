---
layout: post
title: Github powered comments
date: 2012-07-27
issueID: 3
---

Github is awesome. I use it pretty much everyday for my work, personal projects, my blog and now I use it to power my blog comments. [This blog](https://github.com/sirbrad/sirbrad.github.com 'View the source of this blog') is hosted on github pages and built by their static blog generator [Jekyll](https://github.com/mojombo/jekyll/ 'Check out the Jekyll repository'), so it made sense to keep the comments in the same place. It is built upon their issue api which made it super easy to list and create comments straight from the blog. 

I'm sure someone a tad smarter than me could make this into more of a plugin, so it can be intergrated easily on any github hosted blog. Also, because it uses oAuth it had to be set up as a github application so I think it is only useable on my domain at the moment. It be would great if someone could advise me on a way to update the callback url depending on which domain it was on or if that was even possible. This would be great  because once the user is authenticated once they would be able to add comments to any other blog using **Comcom** - what I ingeniously named it!

Anyway, I'll aim to write a more technical post detailing more about how I built it in the near future. But for now, you can [view the code on github](https://github.com/sirbrad/comcom 'View the Comcom repository'). Let me know what you think by using it below :D 


