<?php
	include '../sdks/facebook.php';
	
	$facebook = new Facebook(array(
		'appId' => '148856528505459',
		'secret' => 'c2573fd6cb143b0b7d42affad3e5f4b2',
		'cookie' => false
	));

	if($facebook->getUser())
	{
		session_start();
		$_SESSION[uid] = $facebook->getUser();	
	}
	
    if ($facebook->getSession()) {
      echo '<a href="' . $facebook->getLogoutUrl() . '">Logout</a>';
    } else {
      echo '<a href="' . $facebook->getLoginUrl() . '">Login</a>';
    }
?>
	
<h3>Welcome to the future home of KingdomTracker</h3>