require 'spec_helper'

describe port(5432) do
  it { should be_listening }
end

describe file('/opt/zabbix/create.sql.gz') do
  it { should exist }
end

describe command('docker exec zabbix_postgres-zabbix_1 bash -c "psql -U zabbix -t zabbix') do
  its(:stderr) { should match "" }
end