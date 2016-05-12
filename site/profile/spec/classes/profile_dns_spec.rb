require 'spec_helper'
describe 'profile::dns' do

  context 'with defaults for all parameters' do
    let(:facts) {
      {
        :osfamily => 'redhat',
        :operatingsystem => 'redhat',
        :operatingsystemmajrelease => '7',
      }
    }
    it { is_expected.to compile.with_all_deps }
    it {
      should contain_host('localhost').with({
        'ensure'       => 'present',
        'host_aliases' => ['localhost.localdomai','localhost6','localhost6.localdomain6'],
        'ip'           => '127.0.0.1',
      })
    }
  end
end
