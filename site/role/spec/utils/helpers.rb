require 'spec_helper'

shared_examples_for 'test_linux' do
  describe "soe" do
    it {
      expect(catalogue.resources.select { |r| r.type == "File" && r[:mode] =~ /777/ }).to be_empty
    }
    it {
      should contain_package('openssh-server')
    }
    it {
      should contain_concat__fragment('global config').with_content(/^\s*PermitRootLogin\s*no$/)
    }
  end
end
