
include_recipe 'yum-gd'

package 'ffmpeg' do
  version node['ffmpeg']['package']['version']
  action :install
  not_if node['ffmpeg']['package']['devel_only']
end

package 'ffmpeg-devel' do
  version node['ffmpeg']['package']['version']
  action :install
  not_if node['ffmpeg']['package']['install_devel']
end
