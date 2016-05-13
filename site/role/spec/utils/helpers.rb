require 'spec_helper'

shared_examples_for 'test_linux' do
  describe "soe" do
    it {
      should contain_package('openssh-server')
    }
    it {
      should contain_concat__fragment('global config').with_content(/^\s*PermitRootLogin\s*no$/)
    }
  end
end
