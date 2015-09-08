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
- This cookbook depends on pacakges from epel.  This attribute resolves that for standalone installs. Override as needed.
* node['yum-gd']['repos'] = %w(gdcustom epel)
- Default install method.  Options are 'package' and 'source'.
* node['ffmpeg']['install_method'] = 'package'
* node['ffmpeg']['package_name'] = 'ffmpeg'
- By default, development libraries are not included.  Override this and set to true if they are needed.
* node['ffmpeg']['package']['install_devel'] = false
- If development libraries are only needed for satisfying a dependency set this to true.  It will not install the base ffmpeg.
* node['ffmpeg']['package']['devel_only'] = false
- Version of package to install from package/rpm
* node['ffmpeg']['package']['version'] = '2.2.1-65.el6'
- Version of pacakge to install from source
* node['ffmpeg']['source']['version'] = '2.2.1'
- Download location for source
* node['ffmpeg']['source']['url'] = "http://ffmpeg.org/releases/ffmpeg-#{node['ffmpeg']['source']['version']}.tar.gz"
- Install location for source
* node['ffmpeg']['source']['prefix'] = '/opt'

Usage
------------

Just add `include_recipe "ffmpeg"` to your application cookbook.
