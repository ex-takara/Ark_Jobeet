return {
    default_view    => 'MT',
    active_days     => 30,
	max_jobs_on_homepage => 10,
	max_jobs_on_category => 20,
    database => [
        'dbi:mysql:jobeet', 'root', '',
         {
             mysql_enable_utf8 => 1,
             on_connect_do     => ['SET NAMES utf8'],
         },
    ],
};
