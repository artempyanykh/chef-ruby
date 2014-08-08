action :install do
  version = new_resource.name

  # build ruby
  ruby_build_ruby version do
    prefix_path "/opt/rubies/ruby-#{version}"
  end

  if new_resource.with_bundler
    user, group = new_resource.user, new_resource.group
    user && group or raise ArgumentError, 'user and group are required for ' +
                                          'bundler installation'

    chruby_gem 'bundler' do
      user user
      group group
      ruby_version version
    end
  end
end

action :copy_config do
  version = new_resource.name
  user, group = new_resource.user, new_resource.group
  user && group or raise ArgumentError,
    'version, user and group are required to copy config'
  config_destination = new_resource.config_destination

  chruby_source_file config_destination do
    ruby_version version
    mode 00744
    user user
    group group
  end
end
