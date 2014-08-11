# == Class: ldapserver::install
#
# Installs the ldap server packages
class ldapserver::install {
  package { 'slapd':
    ensure => $ldapserver::version,
  }
}
