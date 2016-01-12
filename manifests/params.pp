# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class puppet_repo::params {
  # apt defaults
  $apt_ensure      = present
  $apt_include_src = true
  $apt_location    = 'http://repo.percona.com/apt'
  $apt_release     = $::lsbdistcodename
  $apt_repos       = 'main'
  $apt_key         = 'CD2EFD2A'

  # yum defaults
  $yum_descr    = 'CentOS $releasever - Percona'
  $yum_enabled  = 1
  $yum_gpgcheck = 1
  $yum_gpgkey   = 'http://www.percona.com/downloads/percona-release/RPM-GPG-KEY-percona'

  if ($::operatingsystem =~ /(?i:amazon)/) {
    $yum_baseurl = "http://repo.percona.com/centos/${epel_version}/os/\$basearch/"
  } else {
    $yum_baseurl = 'http://repo.percona.com/centos/$releasever/os/$basearch/'
  }
}
