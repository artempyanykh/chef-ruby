ruby cookbook
=============
This is a wrapper-cookbook around ruby_build and chef_chruby. Its main purpose is to install the selected version of ruby via ruby_build and configure its usage for the specified user by chruby.

Requirements
------------
It depends on the following cookbooks:

- [ruby-build](https://github.com/fnichol/chef-ruby_build)
- [chruby](https://github.com/ArtemPyanykh/chef-chruby)

It was tested with Ubuntu 12.04 LTS.

Usage
-----
#### ruby::default
Include this recipe to get access to `ruby_setup` LWRP.

#### How to use ruby_setup LWRP
`ruby_setup` has two actions which could be used as follows:

- `install` - build ruby with `ruby_build`, install chruby, install bundler gem for this ruby (_optional_).
- `copy_config` - generate and copy chruby.sh config file, which then should be sourced in .bashrc (or similar) to automatically setup specific version of ruby.

Example:

    ruby_setup '2.1.2' do
      config_destination '/home/vagrant/sources.d/chruby.sh'
      with_bundler true
      user 'vagrant'
      group 'vagrant'
      action [:install, :copy_config]
    end


Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:

- [Artem Pyanykh](https://github.com/ArtemPyanykh)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
