# == Class: ldapserver
#
# A module to handle ldap servers
#
# === Parameters
# ["version"]
#   The package version to install
#
# ["enable"]
#   Should the service be enabled during boot time?
#
# ["start"]
#   Should the service be started by Puppet

class ldapserver (
  $version = 'present',
  $enable = true,
  $start = true
  )  {
    class{'ldapserver::install': } ->
    class{'ldapserver::configure': } ~>
    class{'ldapserver::service': } ->
    Class['ldapserver']
  }
