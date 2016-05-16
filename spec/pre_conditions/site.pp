unless $concat_basedir {
  $concat_basedir = '/concat'
}
$sudoversion = '1.8.0'

service { 'mcollective':
  ensure => running,
}

service { 'pe-mcollective':
  ensure => running,
}
