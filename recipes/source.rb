include_recipe 'build-essential'
include_recipe 'ark'

package 'yasm' do
  action :install
end

ark 'ffmpeg' do
  url node['ffmpeg']['source']['url']
  prefix_root node['ffmpeg']['source']['prefix']
  version node['ffmpeg']['source']['version']
  action [:install_with_make]
end
