# == Class: ldapserver::service
#
# Controls the slapd service
class ldapserver::service {
  $ensure = $ldapserver::start ? {true => running, default => stopped}

  service { 'slapd':
    ensure => $ensure,
    enable => $ldapserver::enable,
  }
}
