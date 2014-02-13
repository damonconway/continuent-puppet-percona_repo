class percona_repo {
  if ($operatingsystem =~ /(?i:centos|redhat|oel|amazon)/) {
    class {"percona_repo::yum" : }
  } elsif ($operatingsystem =~ /(?i:debian|ubuntu)/) {
    class {"percona_repo::apt" : }
  } else {
		fail("The ${module_name} module is not supported on an ${::operatingsystem} based system.")
  }
}