return {
    database => [
        'dbi:mysql:jobeet', 'root', '',
         {
             mysql_enable_utf8 => 1,
             on_connect_do     => ['SET NAMES utf8'],
         },
    ],
};
