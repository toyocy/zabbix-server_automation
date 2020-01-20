require 'spec_helper'

describe file('/etc/yum.repos.d/docker-ce.repo') do
  it { should exist }
end

describe package('yum-utils') do
  it { should be_installed}
end

describe package('device-mapper-persistent-data') do
  it { should be_installed}
end

describe package('lvm2') do
  it { should be_installed}
end

describe package('docker-ce') do
  it { should be_installed}
end

describe package('docker-ce-cli') do
  it { should be_installed}
end

describe package('containerd.io') do
  it { should be_installed}
end

describe service('docker') do
  it { should be_enabled }
  it { should be_running }
end

describe command('docker -v') do
  its(:stdout) { should match /Docker version 19.\d+/ }
end

describe command('docker-compose -v') do
  its(:stdout) { should match /docker-compose version 1.25.\d+/ }
end

describe docker_image('postgres:12') do
  it { should be_exist }
end

describe docker_container('postgres') do
  it { should have_volume('/var/lib/postgresql/data/', '/opt/postgres/data') }
end