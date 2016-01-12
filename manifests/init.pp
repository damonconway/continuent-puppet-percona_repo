# Copyright (C) 2014 Continuent, Inc.
# 
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License.  You may obtain
# a copy of the License at
# 
#         http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
# License for the specific language governing permissions and limitations
# under the License.
#
# Initial developer(s): Jeff Mace
# Contributor(s):
#   Damon Conway

class percona_repo (
  $apt_ensure      = $percona_repo::params::apt_ensure,
  $apt_include_src = $percona_repo::params::apt_include_src,
  $apt_location    = $percona_repo::params::apt_location,
  $apt_release     = $percona_repo::params::apt_release,
  $apt_repos       = $percona_repo::params::apt_repos,
  $apt_key         = $percona_repo::params::apt_key,
  $yum_baseurl     = $percona_repo::params::yum_baseurl,
  $yum_descr       = $percona_repo::params::yum_descr,
  $yum_enabled     = $percona_repo::params::yum_enabled,
  $yum_gpgcheck    = $percona_repo::params::yum_gpgcheck,
  $yum_gpgkey      = $percona_repo::params::yum_gpgkey
) {
  if ($::operatingsystem =~ /(?i:centos|redhat|oel|amazon)/) {
    include percona_repo::yum
  } elsif ($::operatingsystem =~ /(?i:debian|ubuntu)/) {
    include percona_repo::apt
  } else {
    fail("The ${module_name} module is not supported on an ${::operatingsystem} based system.")
  }
}
