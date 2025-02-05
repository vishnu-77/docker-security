# Last Modified: Thu Feb 27 13:40:14 2020
#include <tunables/global>

/usr/sbin/mysqld {
  #include <abstractions/base>
  #include <abstractions/nameservice>

  capability dac_override,
  capability sys_resource,
  capability setgid,
  capability setuid,
  network tcp,
  network udp,

  file,
  # Allow read access to necessary directories and files
  /var/lib/mysql/ r,
  /var/lib/mysql/** rwk,
  /var/log/mysql/ r,
  /var/log/mysql/** rw,
  /var/run/mysqld/mysqld.pid rw,
  /var/run/mysqld/mysqld.sock rw,
  /run/mysqld/mysqld.pid rw,
  /run/mysqld/mysqld.sock rw,

  # Allow access to necessary configuration files
  /etc/my.cnf r,
  /etc/mysql/my.cnf r,

  # Allow access to necessary libraries
  /usr/lib/mysql/plugin/ r,
  /usr/lib/mysql/plugin/*.so* mr,

  # Allow read and write access to temporary directories
  /tmp/ rw,
  /tmp/** rw,

  # Allow access to other system resources as needed
  /dev/urandom r,
  /dev/null rw,
  /etc/passwd r,
  /etc/group r,
  /etc/hosts r,
  /etc/host.conf r,
  /etc/resolv.conf r,
  /etc/services r,
  /etc/localtime r,
  /proc/sys/kernel/random/uuid r,
  /sys/devices/system/cpu/ r,
  /proc/meminfo r,
  /proc/cpuinfo r,

  # Allow access to other necessary files and directories
  owner /var/log/mysql/mariadb-slow.log rw,
  owner /var/log/mysql/mariadb.log rw,
}
