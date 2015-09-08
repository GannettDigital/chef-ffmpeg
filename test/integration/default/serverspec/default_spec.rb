require_relative 'spec_helper'

describe file('/usr/bin/ffmpeg') do
  it { should exist }
  it { should be_file }
end

describe package('ffmpeg') do
  it { should be_installed }
end
