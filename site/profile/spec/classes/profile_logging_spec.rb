require 'spec_helper'
describe 'profile::logging' do

  context 'with defaults for all parameters on ArseHat' do
    let(:facts) {
      {
        :osfamily => 'redhat',
        :operatingsystem => 'redhat',
        :operatingsystemmajrelease => '7',
      }
    }
    it { is_expected.to compile.with_all_deps }

    it {
      should contain_logrotate__rule('all_log').with({
          'path'         => '/var/log/*/*',
          'size'         => '200k',
          'compress'     => true,
          'postrotate'   => '/usr/bin/killall -HUP rsyslog',
      })
    }
  end

  context 'with defaults for all parameters Debian' do
    let(:facts) {
      {
        :osfamily => 'debian',
        :operatingsystem => 'Debian',
        :operatingsystemmajrelease => '7',
      }
    }
    it { is_expected.to compile.with_all_deps }
  end
end
