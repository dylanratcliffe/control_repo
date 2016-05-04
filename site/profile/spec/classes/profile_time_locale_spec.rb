require 'spec_helper'
describe 'profile::time_locale' do

  context 'with defaults for all parameters' do
    let(:facts) {
      {
        :fqdn => 'x.y.z',
        :osfamily => 'RedHat',
        :operatingsystem => 'RedHat',
        :operatingsystemmajrelease => '7',
      }
    }
    it { should contain_class('profile::time_locale') }
    it { is_expected.to compile.with_all_deps }

    it {
      should contain_file_line('locale').with({
        'ensure' => 'present',
        'path'   => '/etc/sysconfig/i18n',
        'line'   => "LANG=UTC",
        'match'  => 'LANG=',
      })
    }
  end
end
