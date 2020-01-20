require 'spec_helper'

describe file('/etc/yum.repos.d/remi-php71.repo') do
  it { should exist }
end

describe command('php -v') do
  its(:stdout) { should match /PHP 7\.1.\d+/}
end
