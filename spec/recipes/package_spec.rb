# encoding: utf-8
require 'chefspec'
require_relative '../spec_helper'
require 'fauxhai'

describe 'ffmpeg::package' do

  let(:chef_run) { ChefSpec::SoloRunner.new }
  before do
    chef_run.converge(described_recipe)
  end  

  it 'includes the yum-gd repo' do
    expect(chef_run).to include_recipe('yum-gd')
  end

  it 'installs the ffmpeg package' do
    expect(chef_run).to install_package('ffmpeg')
  end

  it 'installs the ffmpeg-devel pacakge' do
    expect(chef_run).to install_package('ffmpeg-devel')
  end

end
