Description
------------

Chef cookbook for ffmpeg installation.

Note: At the moment it just installs ffmpeg as is without extra configuration,
if you need some other functionality, feel free to submit pull requests.

Requirements
------------

### Cookbooks

yum-gd
build-essential
ark

Platforms
------------

Currently the cookbook supports only source install using ark,
which should be cross platform.

Attributes
------------
* `node['yum-gd']['repos'] = %w(gdcustom epel)` - This cookbook depends on pacakges from epel.  This attribute resolves that for standalone installs. Override as needed.
* `node['ffmpeg']['install_method'] = 'package'` - Default install method.  Options are `package` and `source`.
* `node['ffmpeg']['package_name'] = 'ffmpeg'` - Package name.
* `node['ffmpeg']['package']['install_devel'] = false` - By default, development libraries are not included.  Override this and set to `true` if they are needed.
* `node['ffmpeg']['package']['devel_only'] = false` - If development libraries are only needed for satisfying a dependency set this to `true`.  It will not install the base ffmpeg.
* `node['ffmpeg']['package']['version'] = '2.2.1-65.el6'` - Version of package to install from package/rpm
* `node['ffmpeg']['source']['version'] = '2.2.1'` - Version of pacakge to install from source
* `node['ffmpeg']['source']['url'] = "http://ffmpeg.org/releases/ffmpeg-#{node['ffmpeg']['source']['version']}.tar.gz"` - Download location for source
* `node['ffmpeg']['source']['prefix'] = '/opt'` - Install location for source 

Usage
------------

Just add `include_recipe "ffmpeg"` to your application cookbook and adjust your cookbook/role attributes for the install type listed.
