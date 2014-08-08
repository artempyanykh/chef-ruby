include_recipe "ruby::default"

directory '/home/vagrant/sources.d' do
  owner "vagrant"
  group "vagrant"
  mode 00644
  action :create
end

ruby_setup '2.1.2' do
  config_destination '/home/vagrant/sources.d/chruby.sh'
  with_bundler true
  user 'vagrant'
  group 'vagrant'
  action [:install, :copy_config]
end
