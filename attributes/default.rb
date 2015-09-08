default['yum-gd']['repos'] = %w(gdcustom epel)
default['ffmpeg']['install_method'] = 'package'
default['ffmpeg']['package_name'] = 'ffmpeg'
default['ffmpeg']['package']['install_devel'] = false
default['ffmpeg']['package']['devel_only'] = false
default['ffmpeg']['package']['version'] = '2.2.1-65.el6'
default['ffmpeg']['source']['version'] = '2.2.1'
default['ffmpeg']['source']['url'] = "http://ffmpeg.org/releases/ffmpeg-#{default['ffmpeg']['source']['version']}.tar.gz"
default['ffmpeg']['source']['prefix'] = '/opt'
