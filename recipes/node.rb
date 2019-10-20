#
# Cookbook:: node
# Recipe:: node
#
# Copyright:: 2019, The Authors, All Rights Reserved.

directory '/tmp/git' do
  action :create
end

git '/tmp/git/bash_scripts' do
  repository 'git://github.com/ruanyf/simple-bash-scripts.git'
  revision 'master'
  action :sync
end

bash 'hello_world' do
  code '/tmp/git/bash_scripts/scripts/hello-world.sh'
end
