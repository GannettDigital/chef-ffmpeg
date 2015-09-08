# encoding: utf-8
require 'chefspec'
require_relative '../spec_helper'
require 'fauxhai'

describe 'ffmpeg::default' do

  let(:chef_run) { ChefSpec::SoloRunner.new }
  before do
    chef_run.converge(described_recipe)
  end  
  
  it 'includes the ffmpeg install recipe' do
    expect(chef_run).to include_recipe("ffmpeg::#{chef_run.node['ffmpeg']['install_method']}")
  end
  
end
