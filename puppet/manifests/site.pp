
class { 'rvm': }

# Users with permissions to run rvm
rvm::system_user { vagrant: ; }

# Ruby versions to be installed
rvm_system_ruby {
  'ruby-2.0':
    ensure      => 'present',
    default_use => true;
}

# Install nginx
class { 'nginx': }
