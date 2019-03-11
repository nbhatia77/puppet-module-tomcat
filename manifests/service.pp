class tomcat::service inherits tomcat {
  
  service { $::tomcat::params::service_name :
     ensure   => $::tomcat::service_state, 
     enable   => true,
     require  => Class['tomcat::install'],
  }
}