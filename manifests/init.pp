# Class: pelican
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
class pelican (

  ) {

  include pelican::install

}
