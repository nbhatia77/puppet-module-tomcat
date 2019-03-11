class tomcat::config inherits tomcat {
  
  file { $::tomcat::params::config_path :
    content => template('tomcat/tomcat.conf.erb'),
    mode   => '0644',
    owner  => $::tomcat::user,
    group  => $::tomcat::group,
    notify => Service['tomcat'],
  }
}