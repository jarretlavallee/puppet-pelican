# Class: pelican::install
# ===========================
#
# This class installs the prerequisites for deploying a pelican blog.
#
# Parameters
# ----------
#
# Variables
# ----------
#
#
# Examples
# --------
#
# @example
#
# Authors
# -------
#
# Jarret Lavallee <jarret.lavallee@puppet.com>
#
# Copyright
# ---------
#
# Copyright 2017 Jarret Lavallee, unless otherwise noted.
#
class pelican::install (
  String $python_version,
  Array $prerequisites,
  String $package,
  String $pip_url,
  ) {

  package {$prerequisites:
    ensure => present,
  }

  pelican::pip { $python_version:
    pip_url => $pip_url,
  }

  # Install pelican
  package {$package:
    ensure   => latest,
    provider => pip,
  }

}
