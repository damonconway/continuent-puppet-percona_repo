# Copied from https://github.com/arioch/puppet-percona
# 
# Copyright (C) 2012 Tom De Vylder
# 
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

class percona_repo::yum {
  yumrepo { 'percona':
    enabled  => $percona_repo::yum_enabled,
    baseurl  => $percona_repo::yum_baseurl,
    descr    => $percona_repo::yum_descr,
    gpgcheck => $percona_repo::yum_gpgcheck,
    gpgkey   => $percona_repo::yum_gpgkey,
  }
}
