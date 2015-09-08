# encoding: utf-8
require 'chefspec'
require_relative '../spec_helper'
require 'fauxhai'

describe 'ffmpeg::source' do

  let(:chef_run) { ChefSpec::SoloRunner.new }
  before do
    chef_run.converge(described_recipe)
  end  

  it 'includes the build_essential recipe' do
    expect(chef_run).to include_recipe('build-essential')
  end

  it 'includes the ark recipe' do
    expect(chef_run).to include_recipe('ark')
  end

  it 'installs the yasm package' do
    expect(chef_run).to install_package('yasm')
  end

  it 'installs the ffmpeg package' do
    expect(chef_run).to install_with_make_ark('ffmpeg').with(
      url: chef_run.node['ffmpeg']['source']['url'],
      prefix_root: chef_run.node['ffmpeg']['source']['prefix'],
      version: chef_run.node['ffmpeg']['source']['version'],
    )
  end

end
