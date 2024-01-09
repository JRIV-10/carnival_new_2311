require 'spec_helper'

RSpec.describe Carnival do 
    it 'exists' do 
        carnival = Carnival.new 

        expect(carnival).to be_a Carnival
    end
end