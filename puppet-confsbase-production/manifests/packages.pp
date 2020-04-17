##### Classe para instalar pacotes base a partir do sistema operacional

class confsbase::packages {

$packages_debian = [ 'htop','tzdata','dnsutils','bash-completion','unzip','bzip2','vim','mlocate','nfs-common' ]
$packages_redhat = [ 'htop','tzdata','bind-utils','unzip','bzip2','vim-enhanced','mlocate','nfs-utils' ]

$packages = $facts['os']['family'] ? {
    'Debian' => $packages_debian,
    'RedHat' => $packages_redhat,
}

package { $packages:
  ensure => present,
}
}
