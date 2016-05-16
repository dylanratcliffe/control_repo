require 'spec_helper'
require 'onceover/controlrepo'
require 'helpers/shared_examples'

Onceover::Controlrepo.new.spec_tests do |class_name,node_name,facts,pre_conditions|
  describe class_name do
    context "on #{node_name}" do
      let(:facts) { facts }
      let(:pre_condition) { pre_conditions }

      it_behaves_like 'soe'
    end
  end
end
