require 'spec_helper'

describe 'role::web_server' do

  context 'with ArseHat' do
    let(:facts) {
      {
        :osfamily => 'redhat',
        :operatingsystem => 'redhat',
        :operatingsystemmajrelease => '7',
      }
    }
    it { should contain_class('role::web_server') }
    it { is_expected.to compile.with_all_deps }
  end
end
