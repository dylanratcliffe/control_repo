require 'spec_helper'
describe 'profile::base' do

  context 'with defaults for all parameters' do
    let(:facts) {
      {
        :osfamily => 'redhat',
        :operatingsystem => 'redhat',
        :operatingsystemmajrelease => '7',
      }
    }
    it { should contain_class('profile::base') }
    it { is_expected.to compile.with_all_deps }
  end
end
