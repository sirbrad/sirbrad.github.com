<?php

// This file should be the one's URL you give to Github as a callback

$code = $_REQUEST['code'];

$client_id = '4e3a2ccec7c91a9eb26c';
$client_secret = '25a46f5d64f0493093bc9d2bff5dde87b7f00627';

if($code) {
	$ch = curl_init('https://github.com/login/oauth/access_token');
	
	curl_setopt($ch, CURLOPT_POST, 1);
	curl_setopt($ch, CURLOPT_POSTFIELDS, "client_id=$client_id&client_secret=$client_secret&code=$code");
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_HTTPHEADER, array(
		'Origin: http://127.0.0.1:4000/'
	));
	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
	
	$response = curl_exec($ch);

	curl_close($ch);

	if(preg_match('/access_token=([0-9a-f]+)/', $response, $matches)) {
		$token = $matches[1];
	}
}
?>
<script>

var window.token = <?= echo $token ?>;
	
</script>
