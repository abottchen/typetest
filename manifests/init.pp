class typetest {
  file { '/pkg':
    ensure => directory,
    before => Mytest['testcode'],
  }

  mytest {'testcode':
    provider => 'test',
    supplyversion => 'file',
  }
}

