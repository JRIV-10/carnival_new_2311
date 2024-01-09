require 'spec_helper'

RSpec.describe Visitor do 
    describe '#initialize' do 
        it 'exists' do 
            visitor = Visitor.new('Bruce', 54, '$10')

            expect(visitor).to be_a Visitor
        end
    end 
end 