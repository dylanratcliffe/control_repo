require 'spec_helper'
describe 'profile::monitoring' do

  context 'with defaults for all parameters' do
    let(:facts) {
      {
        :osfamily => 'redhat',
        :operatingsystem => 'redhat',
        :operatingsystemmajrelease => '7',
      }
    }
    it { is_expected.to compile.with_all_deps }
  end
end
