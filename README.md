# continuent-percona_repo

To get the Percona repositories setup on your system, just include the percona_repo module. The repository will be setup before any package classes are evaluated.

# Usage

    class { 'percona_repo' : }

# Parameters

## `apt_ensure`

  Sets the ensure param for apt::source. Valid options: present,absent  Default: present

## `apt_include_src`

  Sets the include_src param for apt::source. Valid options: Boolean  Default: true

## `apt_key`

  Sets the key param for apt::source. Valid options: String  Default: 'CD2EFD2A'

## `apt_location`

  Sets the location param for apt::source. Valid options: String  Default: 'http://repo.percona.com/apt'

## `apt_release`

  Sets the release param for apt::source. Valid options: String  Default: $::lsbdistcodename

## `apt_repos`

  Sets the main param for apt::source. Valid options: String  Default: 'main'

## `yum_baseurl`

  Sets the baseurl param for yumrepo. Valid options: String  Default: Arch dependent

## `yum_descr`

  Sets the descr param for yumrepo. Valid options: String  Default: 'CentOS $releasever - Percona'

## `yum_enabled`

  Sets the enabled param for yumrepo. Valid options: Integer  Default: 1

## `yum_gpgcheck`

  Sets the gpgcheck param for yumrepo. Valid options: Integer  Default: 1

## `yum_gpgkey`

  Sets the gpgkey param for yumrepo. Valid options: String  Default: 'http://www.percona.com/downloads/percona-release/RPM-GPG-KEY-percona'

