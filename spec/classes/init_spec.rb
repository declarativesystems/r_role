require 'spec_helper'
describe 'r_role' do
  context 'with default values for all parameters' do
    it { should contain_class('r_role') }
  end
end
