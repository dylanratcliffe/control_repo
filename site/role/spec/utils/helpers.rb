require 'spec_helper'

shared_examples_for 'test_linux' do
  describe "soe" do
    it {
      should contain_package('openssh-server')
    }
    it {
      should contain_file('/etc/ssh/sshd_config').with_content(/^PermitRootLogin\s*yes$/)
    }
  end
end
