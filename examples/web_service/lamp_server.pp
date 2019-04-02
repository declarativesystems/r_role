class { 'r_profile::web_service::apache': }
$db = {
  'quote' => {
    user     => 'quote',
    password => 'quote',
    host     => 'localhost',
    grant    => ['CREATE', 'SELECT', 'UPDATE', 'INSERT', 'DELETE'],
  }
}

class { 'r_profile::database::mysql_server':
  db => $db,
}
class { 'r_profile::webapp::git_site':
  sites  => {
    '/var/www/html' => {
      source => 'https://github.com/GeoffWilliams/phpquote',
    }
  }
}
