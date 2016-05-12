require 'spec_helper'
describe 'role' do

  context 'with defaults for all parameters' do
    it { is_expected.to compile.with_all_deps }
  end
end
