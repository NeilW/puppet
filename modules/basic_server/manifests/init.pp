class basic_server {
  
  class { "apt":
    refreshonly => false,
    autoupgrade => true
  }

  class { "apt::unattended_upgrades":
  }

  class { "ssh_activate":
  }

  swap::file { "swap":
    name => '/.swapfile',
    size => 512
  }

  package { "language-pack-en":
    ensure => installed
  }

  package { "whoopsie":
    ensure => purged
  }

  service { "puppet":
    ensure => stopped,
    enable => false
  }

}
