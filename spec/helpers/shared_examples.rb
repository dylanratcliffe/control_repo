require 'spec_helper'

shared_examples_for 'soe' do
  describe "files should not have 777" do
    it {
      expect(catalogue.resources.select { |r| r.type == "File" && r[:mode] =~ /777/ }).to be_empty
    }
  end
end
