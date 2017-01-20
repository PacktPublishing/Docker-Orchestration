node default {
  exec { 'install docker' :
    command => "/usr/bin/wget -O - http://get.docker.com | /bin/bash",
    creates => '/etc/apt/sources.list.d/docker.list',
  }

  package { "docker-engine" :
    ensure => "installed",
    require => Exec['install docker']
  }
  
  service { "docker" :
    ensure => "running",
    require => Package['docker-engine']
  }

  exec { 'join swarm' :
    command => "/usr/bin/docker swarm join --token SWMTKN-... manager:2377 && /usr/bin/touch /root/swarm-joined",
    creates => '/root/swarm-joined'
  }
}
