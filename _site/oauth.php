<?php
// Step 6
$data = 'client_id=' . '4e3a2ccec7c91a9eb26c' . '&' .
		'client_secret=' . '25a46f5d64f0493093bc9d2bff5dde87b7f00627' . '&' .
		'code=' . urlencode($_GET['code']);

$ch = curl_init('https://github.com/login/oauth/access_token');
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$response = curl_exec($ch);

preg_match('/access_token=([0-9a-f]+)/', $response, $out);
echo $out[1];
curl_close($ch);
?>
