require 'spec_helper'

describe interface('eth0')do
  it { should be_up }
end

describe selinux do
  it { should be_disabled }
end
