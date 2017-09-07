<?php defined('SYSPATH') or die('No direct access allowed.');

return array(

	'driver'       => 'oc',
	'hash_method'  => 'sha256',
	'hash_key'     => '$xta5m@vcm7p8@vb',
	'lifetime'     => 90*24*60*60,
	'session_type' => Session::$default,
	'session_key'  => 'auth_user',
	'cookie_salt'  => 'cookie_$xta5m@vcm7p8@vb',
    'ql_lifetime'  => 7*24*60*60,
    'ql_separator' => '|',
);