<!doctype html>
<!--[if IE 7]><html class="no-js ie7" lang="en"><![endif]-->
<!--[if IE 8]><html class="no-js ie8" lang="en"><![endif]-->
<!--[if IE 9]><html class="no-js ie9" lang="en"><![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>	
    <title><?= (basename($_SERVER['PHP_SELF']) === 'index.php') ? 'Welcome' : ucwords(str_replace(array('.php', '-'), array('', ' '), basename($_SERVER['PHP_SELF']))); ?> | Site Name</title>
    <script src="Assets/Scripts/Utils/modernizr.min.js"></script>
    <meta charset="utf-8">
    <meta name="author" content="sirBrad" />
    <link type="text/plain" rel="author" href="humans.txt">
    <link rel="stylesheet" href="Assets/Styles/fonts.css" />
    <link rel="stylesheet" href="Assets/Styles/structure.css" />
    <!--[if IE]>
    	<link rel="stylesheet" href="Assets/Styles/IE.css" />
    <![endif]-->
    <script src="Assets/Scripts/Utils/respond.min.js"></script>
</head>
<?php flush(); ?>
<body>	
	// Content
    <script data-main="Assets/Scripts/main" src="Assets/Scripts/Require.min.js"></script>
</body>
</html>