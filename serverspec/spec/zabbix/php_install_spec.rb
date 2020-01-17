require 'spec_helper'

describe yumrepo('remi-php71') do
  it { should exist }
end

describe package('php') do
  it { should be_installed.by('yum').with_version('7.1.33') }
end
