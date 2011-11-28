File { owner => 0, group => 0, mode => 0644 }
Exec { path => ["/bin", "/usr/bin", "/sbin", "/usr/sbin", "/opt/ruby/bin", "/var/lib/gems/1.8/bin/"] }
group { "puppet": ensure => "present" }

import 'deadsnakes_python2.5.pp'
include deadsnakes_apt_source
include deadsnakes_python_dev

import 'python_dev_dependencies.pp'
include extra_python_modules


$GAE_PYTHON_SDK_FILE = 'google_appengine_1.6.0.zip'
$GAE_PYTHON_SDK_URL = "http://googleappengine.googlecode.com/files/$GAE_PYTHON_SDK_FILE"

$GAE = 'google_appengine'
$GAE_BASE = "/opt"
$GAE_DIR = "$GAE_BASE/$GAE"

import 'opt_google_appengine_python2.5.pp'
include google_app_engine_python_sdk

import 'nc_deps.pp'
include ncdeps

import 'shell.pp'
include base
