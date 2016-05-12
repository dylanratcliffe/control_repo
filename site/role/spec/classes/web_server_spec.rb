require 'spec_helper'

describe 'role::web_server' do
  let(:pre_condition) { 'service { mcollective: }' }

  context 'with ArseHat' do
    let(:facts) {
      {
        :environment                => 'production',
        :aio_agent_version          => '1.4.2',
        :concat_basedir             => '/tmp',
        :kernel                     => 'Linux',
        :os                         => {'family' => 'RedHat'},
        :osfamily                   => 'RedHat',
        :operatingsystem            => 'RedHat',
        :operatingsystemrelease     => '7',
        :operatingsystemmajrelease  => '7',
        :puppetversion              => '4',
        :sudoversion                => '2.0.0',
      }
    }
    let!(:query_resources) { MockFunction.new('query_resources') { |f|
      f.stubs(:call).returns('1')
    }}
    it_behaves_like 'test_linux'
    it { is_expected.to compile.with_all_deps }
  end
end
