actions :install, :copy_config

default_action :install

attribute :config_destination, kind_of: String, default: nil
attribute :with_bundler, kind_of: [TrueClass, FalseClass], default: false
attribute :user, kind_of: String, default: nil
attribute :group, kind_of: String, default: nil
