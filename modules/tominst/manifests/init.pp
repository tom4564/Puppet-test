class tomfile {
    file { '/var/orasetup':
        ensure => directory,
        mode => '0755',
        owner => 'root',
        group => 'root',
    }

    file { "/var/orasetup/oracle-rdbms-server-11gR2-preinstall-1.0-3.el7.x86_64.rpm":
        mode => "0644",
        owner => 'root',
        group => 'root',
        source => 'puppet:///modules/tominst/oracle-rdbms-server-11gR2-preinstall-1.0-3.el7.x86_64.rpm',
    }
    
    file { "/var/orasetup/oracle-xe-11.2.0-1.0.x86_64.rpm.zip":
        mode => "0644",
        owner => 'root',
        group => 'root',
        source => 'puppet:///modules/tominst/oracle-xe-11.2.0-1.0.x86_64.rpm.zip',
    }
}
