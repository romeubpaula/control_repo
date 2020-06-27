class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+GrQugbkqk+VRR2BHq9XqaCQMhj/KCUNgfGIeQ4EKL4+YA1lUVy4M50xZvDEF6ZTVAFCmWQauAGfXDF6ye8bW5f9y+ZeJ0ZWVsONDWh6XogWKiqlBuQQBJpHnenYATRtt813uIqcMnEp/6MJoIWhZje0bdWQ8GJP/5I7DoHPr+ZGf/gHiMVq2YolEOmUqWXEurG7XRReVmVOaKvVybn5MAxNUmuyrJ+GyrFfFJe9WhFGyqQxNpwGodIYe2XitEcJvvSazZXc5gXYV9P2aVgy2Kp3sAnufFKd2Y2M/h4eLvnoX/9rDwe/HnJmuc45rqei5xjDls2fTOe2t4QnXw4KF',
  }
}
