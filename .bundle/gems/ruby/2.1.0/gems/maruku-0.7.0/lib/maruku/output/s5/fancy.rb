module MaRuKu
  S5_external =<<EOF

  <meta name="defaultView" content="slideshow" />
  <meta name="controlVis" content="hidden" />
  <link rel="stylesheet" href="ui/default/slides.css" type="text/css" media="projection" id="slideProj" />
  <link rel="stylesheet" href="ui/default/outline.css" type="text/css" media="screen" id="outlineStyle" />
  <link rel="stylesheet" href="ui/default/print.css" type="text/css" media="print" id="slidePrint" />
  <link rel="stylesheet" href="ui/default/opera.css" type="text/css" media="projection" id="operaFix" />
  <script src="ui/default/slides.js" type="text/javascript"> </script>
EOF


  S5_Fancy =<<EOF

<meta name="defaultView" content="slideshow" />
<meta name="controlVis" content="hidden" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style type="text/css" media="projection" id="slideProj">
/* Do not edit or override these styles! The system will likely break if you do. */

div#header, div#footer, div#controls, .slide {position: absolute;}
html>body div#header, html>body div#footer,
  html>body div#controls, html>body .slide {position: fixed;}
.handout {display: none;}
.layout {display: block;}
.slide, .hideme, .incremental {visibility: hidden;}
#slide0 {visibility: visible;}

/* The following styles size, place, and layer the slide components.
   Edit these if you want to change the overall slide layout.
   The commented lines can be uncommented (and modified, if necessary)
    to help you with the rearrangement process. */

/* target = 1024x768 */

div#header, div#footer, .slide {width: 100%; top: 0; left: 0;}
div#header {top: 0; height: 3em; z-index: 1;}
div#footer {top: auto; bottom: 0; height: 2.5em; z-index: 5;}
.slide {top: 0; width: 92%; padding: 3.5em 4% 4%; z-index: 2;  list-style: none;}
div#controls {left: 50%; bottom: 0; width: 50%; z-index: 100;}
div#controls form {position: absolute; bottom: 0; right: 0; width: 100%;
  margin: 0;}
#currentSlide {position: absolute; width: 10%; left: 45%; bottom: 1em; z-index: 10;}
html>body #currentSlide {position: fixed;}

/*
div#header {background: #FCC;}
div#footer {background: #CCF;}
div#controls {background: #BBD;}
div#currentSlide {background: #FFC;}
*/

/* Following are the presentation styles -- edit away! */

body {background: #FFF url(bodybg.gif) -16px 0 no-repeat; color: #000; font-size: 2em;}
:link, :visited {text-decoration: none; color: #00C;}
#controls :active {color: #88A !important;}
#controls :focus {outline: 1px dotted #227;}
h1, h2, h3, h4 {font-size: 100%; margin: 0; padding: 0; font-weight: inherit;}
ul, pre {margin: 0; line-height: 1em;}
html, body {margin: 0; padding: 0;}

blockquote, q {font-style: italic;}
blockquote {padding: 0 2em 0.5em; margin: 0 1.5em 0.5em; text-align: center; font-size: 1em;}
blockquote p {margin: 0;}
blockquote i {font-style: normal;}
blockquote b {display: block; margin-top: 0.5em; font-weight: normal; font-size: smaller; font-style: normal;}
blockquote b i {font-style: italic;}

kbd {font-weight: bold; font-size: 1em;}
sup {font-size: smaller; line-height: 1px;}

.slide code {padding: 2px 0.25em; font-weight: bold; color: #533;}
.slide code.bad, code del {color: red;}
.slide code.old {color: silver;}
.slide pre {padding: 0; margin: 0.25em 0 0.5em 0.5em; color: #533; font-size: 90%;}
.slide pre code {display: block;}
.slide ul {margin-left: 5%; margin-right: 7%; list-style: disc;}
.slide li {margin-top: 0.75em; margin-right: 0;}
.slide ul ul {line-height: 1;}
.slide ul ul li {margin: .2em; font-size: 85%; list-style: square;}
.slide img.leader {display: block; margin: 0 auto;}

div#header, div#footer {background: #005; color: #AAB;
  font-family: Verdana, Helvetica, sans-serif;}
div#header {background: #005 url(bodybg.gif) -16px 0 no-repeat;
  line-height: 1px;}
div#footer {font-size: 0.5em; font-weight: bold; padding: 1em 0;}
#footer h1, #footer h2 {display: block; padding: 0 1em;}
#footer h2 {font-style: italic;}

div.long {font-size: 0.75em;}
.slide h1 {position: absolute; top: 0.7em; left: 87px; z-index: 1;
  margin: 0; padding: 0.3em 0 0 50px; white-space: nowrap;
  font: bold 150%/1em Helvetica, sans-serif; text-transform: capitalize;
  color: #DDE; background: #005;}
.slide h3 {font-size: 130%;}
h1 abbr {font-variant: small-caps;}

div#controls {position: absolute; left: 50%; bottom: 0;
  width: 50%;
  text-align: right; font: bold 0.9em Verdana, Helvetica, sans-serif;}
html>body div#controls {position: fixed; padding: 0 0 1em 0;
  top: auto;}
div#controls form {position: absolute; bottom: 0; right: 0; width: 100%;
  margin: 0; padding: 0;}
#controls #navLinks a {padding: 0; margin: 0 0.5em;
  background: #005; border: none; color: #779;
  cursor: pointer;}
#controls #navList {height: 1em;}
#controls #navList #jumplist {position: absolute; bottom: 0; right: 0; background: #DDD; color: #227;}

#currentSlide {text-align: center; font-size: 0.5em; color: #449;}

#slide0 {padding-top: 3.5em; font-size: 90%;}
#slide0 h1 {position: static; margin: 1em 0 0; padding: 0;
   font: bold 2em Helvetica, sans-serif; white-space: normal;
   color: #000; background: transparent;}
#slide0 h2 {font: bold italic 1em Helvetica, sans-serif; margin: 0.25em;}
#slide0 h3 {margin-top: 1.5em; font-size: 1.5em;}
#slide0 h4 {margin-top: 0; font-size: 1em;}

ul.urls {list-style: none; display: inline; margin: 0;}
.urls li {display: inline; margin: 0;}
.note {display: none;}
.external {border-bottom: 1px dotted gray;}
html>body .external {border-bottom: none;}
.external:after {content: " \274F"; font-size: smaller; color: #77B;}

.incremental, .incremental *, .incremental *:after {color: #DDE; visibility: visible;}
img.incremental {visibility: hidden;}
.slide .current {color: #B02;}


/* diagnostics

li:after {content: " [" attr(class) "]"; color: #F88;}
 */
</style>
<style type="text/css" media="projection" id="operaFix">
/* DO NOT CHANGE THESE unless you really want to break Opera Show */
.slide {
  visibility: visible !important;
  position: static !important;
  page-break-before: always;
}
#slide0 {page-break-before: avoid;}

</style>
<style type="text/css" media="screen" id="outlineStyle">
/* don't change this unless you want the layout stuff to show up in the outline view! */

.layout div, #footer *, #controlForm * {display: none;}
#footer, #controls, #controlForm, #navLinks, #toggle {
  display: block; visibility: visible; margin: 0; padding: 0;}
#toggle {float: right; padding: 0.5em;}
html>body #toggle {position: fixed; top: 0; right: 0;}

/* making the outline look pretty-ish */

#slide0 h1, #slide0 h2, #slide0 h3, #slide0 h4 {border: none; margin: 0;}
#slide0 h1 {padding-top: 1.5em;}
.slide h1 {margin: 1.5em 0 0; padding-top: 0.25em;
  border-top: 1px solid #888; border-bottom: 1px solid #AAA;}
#toggle {border: 1px solid; border-width: 0 0 1px 1px; background: #FFF;}

</style>
<style type="text/css" media="print" id="slidePrint">
/* The following rule is necessary to have all slides appear in print! DO NOT REMOVE IT! */
.slide, ul {page-break-inside: avoid; visibility: visible !important;}
h1 {page-break-after: avoid;}

body {font-size: 12pt; background: white;}
* {color: black;}

#slide0 h1 {font-size: 200%; border: none; margin: 0.5em 0 0.25em;}
#slide0 h3 {margin: 0; padding: 0;}
#slide0 h4 {margin: 0 0 0.5em; padding: 0;}
#slide0 {margin-bottom: 3em;}

h1 {border-top: 2pt solid gray; border-bottom: 1px dotted silver;}
.extra {background: transparent !important;}
div.extra, pre.extra, .example {font-size: 10pt; color: #333;}
ul.extra a {font-weight: bold;}
p.example {display: none;}

#header {display: none;}
#footer h1 {margin: 0; border-bottom: 1px solid; color: gray; font-style: italic;}
#footer h2, #controls {display: none;}

/* The following rule keeps the layout stuff out of print.  Remove at your own risk! */
.layout, .layout * {display: none !important;}

</style>
<script type="text/javascript">
<![CDATA[
// S5 v1.1 slides.js -- released into the Public Domain
//
// Please see http://www.meyerweb.com/eric/tools/s5/credits.html for information
// about all the wonderful and talented contributors to this code!

var undef;
var slideCSS = '';
var snum = 0;
var smax = 1;
var incpos = 0;
var number = undef;
var s5mode = true;
var defaultView = 'slideshow';
var controlVis = 'visible';

var isIE = navigator.appName == 'Microsoft Internet Explorer' && navigator.userAgent.indexOf('Opera') < 1 ? 1 : 0;
var isOp = navigator.userAgent.indexOf('Opera') > -1 ? 1 : 0;
var isGe = navigator.userAgent.indexOf('Gecko') > -1 && navigator.userAgent.indexOf('Safari') < 1 ? 1 : 0;

function hasClass(object, className) {
  if (!object.className) return false;
  return (object.className.search('(^|\\s)' + className + '(\\s|$)') != -1);
}

function hasValue(object, value) {
  if (!object) return false;
  return (object.search('(^|\\s)' + value + '(\\s|$)') != -1);
}

function removeClass(object,className) {
  if (!object) return;
  object.className = object.className.replace(new RegExp('(^|\\s)'+className+'(\\s|$)'), RegExp.$1+RegExp.$2);
}

function addClass(object,className) {
  if (!object || hasClass(object, className)) return;
  if (object.className) {
    object.className += ' '+className;
  } else {
    object.className = className;
  }
}

function GetElementsWithClassName(elementName,className) {
  var allElements = document.getElementsByTagName(elementName);
  var elemColl = new Array();
  for (var i = 0; i< allElements.length; i++) {
    if (hasClass(allElements[i], className)) {
      elemColl[elemColl.length] = allElements[i];
    }
  }
  return elemColl;
}

function isParentOrSelf(element, id) {
  if (element == null || element.nodeName=='BODY') return false;
  else if (element.id == id) return true;
  else return isParentOrSelf(element.parentNode, id);
}

function nodeValue(node) {
  var result = "";
  if (node.nodeType == 1) {
    var children = node.childNodes;
    for (var i = 0; i < children.length; ++i) {
      result += nodeValue(children[i]);
    }
  }
  else if (node.nodeType == 3) {
    result = node.nodeValue;
  }
  return(result);
}

function slideLabel() {
  var slideColl = GetElementsWithClassName('*','slide');
  var list = document.getElementById('jumplist');
  smax = slideColl.length;
  for (var n = 0; n < smax; n++) {
    var obj = slideColl[n];

    var did = 'slide' + n.toString();
    obj.setAttribute('id',did);
    if (isOp) continue;

    var otext = '';
    var menu = obj.firstChild;
    if (!menu) continue; // to cope with empty slides
    while (menu && menu.nodeType == 3) {
      menu = menu.nextSibling;
    }
    if (!menu) continue; // to cope with slides with only text nodes

    var menunodes = menu.childNodes;
    for (var o = 0; o < menunodes.length; o++) {
      otext += nodeValue(menunodes[o]);
    }
    list.options[list.length] = new Option(n + ' : '  + otext, n);
  }
}

function currentSlide() {
  var cs;
  if (document.getElementById) {
    cs = document.getElementById('currentSlide');
  } else {
    cs = document.currentSlide;
  }
  cs.innerHTML = '<span id="csHere">' + snum + '<\/span> ' +
    '<span id="csSep">\/<\/span> ' +
    '<span id="csTotal">' + (smax-1) + '<\/span>';
  if (snum == 0) {
    cs.style.visibility = 'hidden';
  } else {
    cs.style.visibility = 'visible';
  }
}

function go(step) {
  if (document.getElementById('slideProj').disabled || step == 0) return;
  var jl = document.getElementById('jumplist');
  var cid = 'slide' + snum;
  var ce = document.getElementById(cid);
  if (incrementals[snum].length > 0) {
    for (var i = 0; i < incrementals[snum].length; i++) {
      removeClass(incrementals[snum][i], 'current');
      removeClass(incrementals[snum][i], 'incremental');
    }
  }
  if (step != 'j') {
    snum += step;
    lmax = smax - 1;
    if (snum > lmax) snum = lmax;
    if (snum < 0) snum = 0;
  } else
    snum = parseInt(jl.value);
  var nid = 'slide' + snum;
  var ne = document.getElementById(nid);
  if (!ne) {
    ne = document.getElementById('slide0');
    snum = 0;
  }
  if (step < 0) {incpos = incrementals[snum].length} else {incpos = 0;}
  if (incrementals[snum].length > 0 && incpos == 0) {
    for (var i = 0; i < incrementals[snum].length; i++) {
      if (hasClass(incrementals[snum][i], 'current'))
        incpos = i + 1;
      else
        addClass(incrementals[snum][i], 'incremental');
    }
  }
  if (incrementals[snum].length > 0 && incpos > 0)
    addClass(incrementals[snum][incpos - 1], 'current');
  ce.style.visibility = 'hidden';
  ne.style.visibility = 'visible';
  jl.selectedIndex = snum;
  currentSlide();
  number = 0;
}

function goTo(target) {
  if (target >= smax || target == snum) return;
  go(target - snum);
}

function subgo(step) {
  if (step > 0) {
    removeClass(incrementals[snum][incpos - 1],'current');
    removeClass(incrementals[snum][incpos], 'incremental');
    addClass(incrementals[snum][incpos],'current');
    incpos++;
  } else {
    incpos--;
    removeClass(incrementals[snum][incpos],'current');
    addClass(incrementals[snum][incpos], 'incremental');
    addClass(incrementals[snum][incpos - 1],'current');
  }
}

function toggle() {
  var slideColl = GetElementsWithClassName('*','slide');
  var slides = document.getElementById('slideProj');
  var outline = document.getElementById('outlineStyle');
  if (!slides.disabled) {
    slides.disabled = true;
    outline.disabled = false;
    s5mode = false;
    fontSize('1em');
    for (var n = 0; n < smax; n++) {
      var slide = slideColl[n];
      slide.style.visibility = 'visible';
    }
  } else {
    slides.disabled = false;
    outline.disabled = true;
    s5mode = true;
    fontScale();
    for (var n = 0; n < smax; n++) {
      var slide = slideColl[n];
      slide.style.visibility = 'hidden';
    }
    slideColl[snum].style.visibility = 'visible';
  }
}

function showHide(action) {
  var obj = GetElementsWithClassName('*','hideme')[0];
  switch (action) {
  case 's': obj.style.visibility = 'visible'; break;
  case 'h': obj.style.visibility = 'hidden'; break;
  case 'k':
    if (obj.style.visibility != 'visible') {
      obj.style.visibility = 'visible';
    } else {
      obj.style.visibility = 'hidden';
    }
  break;
  }
}

// 'keys' code adapted from MozPoint (http://mozpoint.mozdev.org/)
function keys(key) {
  if (!key) {
    key = event;
    key.which = key.keyCode;
  }
  if (key.which == 84) {
    toggle();
    return;
  }
  if (s5mode) {
    switch (key.which) {
      case 10: // return
      case 13: // enter
        if (window.event && isParentOrSelf(window.event.srcElement, 'controls')) return;
        if (key.target && isParentOrSelf(key.target, 'controls')) return;
        if(number != undef) {
          goTo(number);
          break;
        }
      case 32: // spacebar
      case 34: // page down
      case 39: // rightkey
      case 40: // downkey
        if(number != undef) {
          go(number);
        } else if (!incrementals[snum] || incpos >= incrementals[snum].length) {
          go(1);
        } else {
          subgo(1);
        }
        break;
      case 33: // page up
      case 37: // leftkey
      case 38: // upkey
        if(number != undef) {
          go(-1 * number);
        } else if (!incrementals[snum] || incpos <= 0) {
          go(-1);
        } else {
          subgo(-1);
        }
        break;
      case 36: // home
        goTo(0);
        break;
      case 35: // end
        goTo(smax-1);
        break;
      case 67: // c
        showHide('k');
        break;
    }
    if (key.which < 48 || key.which > 57) {
      number = undef;
    } else {
      if (window.event && isParentOrSelf(window.event.srcElement, 'controls')) return;
      if (key.target && isParentOrSelf(key.target, 'controls')) return;
      number = (((number != undef) ? number : 0) * 10) + (key.which - 48);
    }
  }
  return false;
}

function clicker(e) {
  number = undef;
  var target;
  if (window.event) {
    target = window.event.srcElement;
    e = window.event;
  } else target = e.target;
  if (target.getAttribute('href') != null || hasValue(target.rel, 'external') || isParentOrSelf(target, 'controls') || isParentOrSelf(target,'embed') || isParentOrSelf(target,'object')) return true;
  if (!e.which || e.which == 1) {
    if (!incrementals[snum] || incpos >= incrementals[snum].length) {
      go(1);
    } else {
      subgo(1);
    }
  }
}

function findSlide(hash) {
  var target = null;
  var slides = GetElementsWithClassName('*','slide');
  for (var i = 0; i < slides.length; i++) {
    var targetSlide = slides[i];
    if ( (targetSlide.name && targetSlide.name == hash)
     || (targetSlide.id && targetSlide.id == hash) ) {
      target = targetSlide;
      break;
    }
  }
  while(target != null && target.nodeName != 'BODY') {
    if (hasClass(target, 'slide')) {
      return parseInt(target.id.slice(5));
    }
    target = target.parentNode;
  }
  return null;
}

function slideJump() {
  if (window.location.hash == null) return;
  var sregex = /^#slide(\d+)$/;
  var matches = sregex.exec(window.location.hash);
  var dest = null;
  if (matches != null) {
    dest = parseInt(matches[1]);
  } else {
    dest = findSlide(window.location.hash.slice(1));
  }
  if (dest != null)
    go(dest - snum);
}

function fixLinks() {
  var thisUri = window.location.href;
  thisUri = thisUri.slice(0, thisUri.length - window.location.hash.length);
  var aelements = document.getElementsByTagName('A');
  for (var i = 0; i < aelements.length; i++) {
    var a = aelements[i].href;
    var slideID = a.match('\#slide[0-9]{1,2}');
    if ((slideID) && (slideID[0].slice(0,1) == '#')) {
      var dest = findSlide(slideID[0].slice(1));
      if (dest != null) {
        if (aelements[i].addEventListener) {
          aelements[i].addEventListener("click", new Function("e",
            "if (document.getElementById('slideProj').disabled) return;" +
            "go("+dest+" - snum); " +
            "if (e.preventDefault) e.preventDefault();"), true);
        } else if (aelements[i].attachEvent) {
          aelements[i].attachEvent("onclick", new Function("",
            "if (document.getElementById('slideProj').disabled) return;" +
            "go("+dest+" - snum); " +
            "event.returnValue = false;"));
        }
      }
    }
  }
}

function externalLinks() {
  if (!document.getElementsByTagName) return;
  var anchors = document.getElementsByTagName('a');
  for (var i=0; i<anchors.length; i++) {
    var anchor = anchors[i];
    if (anchor.getAttribute('href') && hasValue(anchor.rel, 'external')) {
      anchor.target = '_blank';
      addClass(anchor,'external');
    }
  }
}

function createControls() {
  var controlsDiv = document.getElementById("controls");
  if (!controlsDiv) return;
  var hider = ' onmouseover="showHide(\'s\');" onmouseout="showHide(\'h\');"';
  var hideDiv, hideList = '';
  if (controlVis == 'hidden') {
    hideDiv = hider;
  } else {
    hideList = hider;
  }
  controlsDiv.innerHTML = '<form action="#" id="controlForm"' + hideDiv + '>' +
  '<div id="navLinks">' +
  '<a accesskey="t" id="toggle" href="javascript:toggle();">&#216;<\/a>' +
  '<a accesskey="z" id="prev" href="javascript:go(-1);">&laquo;<\/a>' +
  '<a accesskey="x" id="next" href="javascript:go(1);">&raquo;<\/a>' +
  '<div id="navList"' + hideList + '><select id="jumplist" onchange="go(\'j\');"><\/select><\/div>' +
  '<\/div><\/form>';
  if (controlVis == 'hidden') {
    var hidden = document.getElementById('navLinks');
  } else {
    var hidden = document.getElementById('jumplist');
  }
  addClass(hidden,'hideme');
}

function fontScale() {  // causes layout problems in FireFox that get fixed if browser's Reload is used; same may be true of other Gecko-based browsers
  if (!s5mode) return false;
  var vScale = 22;  // both yield 32 (after rounding) at 1024x768
  var hScale = 32;  // perhaps should auto-calculate based on theme's declared value?
  if (window.innerHeight) {
    var vSize = window.innerHeight;
    var hSize = window.innerWidth;
  } else if (document.documentElement.clientHeight) {
    var vSize = document.documentElement.clientHeight;
    var hSize = document.documentElement.clientWidth;
  } else if (document.body.clientHeight) {
    var vSize = document.body.clientHeight;
    var hSize = document.body.clientWidth;
  } else {
    var vSize = 700;  // assuming 1024x768, minus chrome and such
    var hSize = 1024; // these do not account for kiosk mode or Opera Show
  }
  var newSize = Math.min(Math.round(vSize/vScale),Math.round(hSize/hScale));
  fontSize(newSize + 'px');
  if (isGe) {  // hack to counter incremental reflow bugs
    var obj = document.getElementsByTagName('body')[0];
    obj.style.display = 'none';
    obj.style.display = 'block';
  }
}

function fontSize(value) {
  if (!(s5ss = document.getElementById('s5ss'))) {
    if (!isIE) {
      document.getElementsByTagName('head')[0].appendChild(s5ss = document.createElement('style'));
      s5ss.setAttribute('media','screen, projection');
      s5ss.setAttribute('id','s5ss');
    } else {
      document.createStyleSheet();
      document.s5ss = document.styleSheets[document.styleSheets.length - 1];
    }
  }
  if (!isIE) {
    while (s5ss.lastChild) s5ss.removeChild(s5ss.lastChild);
    s5ss.appendChild(document.createTextNode('body {font-size: ' + value + ' !important;}'));
  } else {
    document.s5ss.addRule('body','font-size: ' + value + ' !important;');
  }
}

function notOperaFix() {
  slideCSS = document.getElementById('slideProj').href;
  var slides = document.getElementById('slideProj');
  var outline = document.getElementById('outlineStyle');
  slides.setAttribute('media','screen');
  outline.disabled = true;
  if (isGe) {
    slides.setAttribute('href','null');   // Gecko fix
    slides.setAttribute('href',slideCSS); // Gecko fix
  }
  if (isIE && document.styleSheets && document.styleSheets[0]) {
    document.styleSheets[0].addRule('img', 'behavior: url(ui/default/iepngfix.htc)');
    document.styleSheets[0].addRule('div', 'behavior: url(ui/default/iepngfix.htc)');
    document.styleSheets[0].addRule('.slide', 'behavior: url(ui/default/iepngfix.htc)');
  }
}

function getIncrementals(obj) {
  var incrementals = new Array();
  if (!obj)
    return incrementals;
  var children = obj.childNodes;
  for (var i = 0; i < children.length; i++) {
    var child = children[i];
    if (hasClass(child, 'incremental')) {
      if (child.nodeName == 'OL' || child.nodeName == 'UL') {
        removeClass(child, 'incremental');
        for (var j = 0; j < child.childNodes.length; j++) {
          if (child.childNodes[j].nodeType == 1) {
            addClass(child.childNodes[j], 'incremental');
          }
        }
      } else {
        incrementals[incrementals.length] = child;
        removeClass(child,'incremental');
      }
    }
    if (hasClass(child, 'show-first')) {
      if (child.nodeName == 'OL' || child.nodeName == 'UL') {
        removeClass(child, 'show-first');
        if (child.childNodes[isGe].nodeType == 1) {
          removeClass(child.childNodes[isGe], 'incremental');
        }
      } else {
        incrementals[incrementals.length] = child;
      }
    }
    incrementals = incrementals.concat(getIncrementals(child));
  }
  return incrementals;
}

function createIncrementals() {
  var incrementals = new Array();
  for (var i = 0; i < smax; i++) {
    incrementals[i] = getIncrementals(document.getElementById('slide'+i));
  }
  return incrementals;
}

function defaultCheck() {
  var allMetas = document.getElementsByTagName('meta');
  for (var i = 0; i< allMetas.length; i++) {
    if (allMetas[i].name == 'defaultView') {
      defaultView = allMetas[i].content;
    }
    if (allMetas[i].name == 'controlVis') {
      controlVis = allMetas[i].content;
    }
  }
}

// Key trap fix, new function body for trap()
function trap(e) {
  if (!e) {
    e = event;
    e.which = e.keyCode;
  }
  try {
    modifierKey = e.ctrlKey || e.altKey || e.metaKey;
  }
  catch(e) {
    modifierKey = false;
  }
  return modifierKey || e.which == 0;
}

function startup() {
  defaultCheck();
  if (!isOp)
    createControls();
  slideLabel();
  fixLinks();
  externalLinks();
  fontScale();
  if (!isOp) {
    notOperaFix();
    incrementals = createIncrementals();
    slideJump();
    if (defaultView == 'outline') {
      toggle();
    }
    document.onkeyup = keys;
    document.onkeypress = trap;
    document.onclick = clicker;
  }
}

window.onload = startup;
window.onresize = function(){setTimeout('fontScale()', 50);}
]]></script>

EOF

end

