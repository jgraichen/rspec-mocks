require 'spec_helper'

module RSpec::Mocks
  describe Space do

    describe "#proxies_of_any_instance_recorder(klass)" do
      let(:space) { Space.new }

      before do
        space.proxy_for(Object.new)
        space.proxy_for(String.new)
        space.proxy_for(String.new)
      end

      it 'returns the proxies for objects of the same type as klass' do
        expect(space.proxies_of(String).size).to eq 2
      end
    end

  end
end
