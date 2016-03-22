class typetest (
  $filename = "file",
) {
  file { '/pkg':
    ensure => directory,
    before => Mytest['testcode'],
  }

  mytest {'testcode':
    provider => 'newtest',
    supplyversion => "$filename",
  }
}

