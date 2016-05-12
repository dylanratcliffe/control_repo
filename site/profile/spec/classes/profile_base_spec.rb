require 'spec_helper'
describe 'profile::base' do

  context 'on Linux' do
    let(:facts) {
      {
        :concat_basedir             => '/tmp',
        :kernel                     => 'Linux',
        :osfamily                   => 'RedHat',
        :operatingsystem            => 'RedHat',
        :operatingsystemrelease     => '7',
        :operatingsystemmajrelease  => '7',
        :puppetversion              => '4',
      }
    }
    it { should contain_class('profile::base') }
    it { should contain_class('profile::dns') }
    it { should contain_class('profile::logging') }
    it { should contain_class('profile::monitoring') }
    it { should contain_class('profile::repos') }
    it { should contain_class('profile::time_locale') }
    it { is_expected.to compile.with_all_deps }
  end
end
