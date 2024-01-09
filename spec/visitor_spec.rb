require 'spec_helper'

RSpec.describe Visitor do 
    describe '#initialize' do 
        it 'exists' do 
            visitor = Visitor.new('Bruce', 54, '$10')

            expect(visitor).to be_a Visitor
        end

        it 'has a name' do 
            visitor = Visitor.new('Bruce', 54, '$10')

            expect(visitor.name).to eq('Bruce')
        end

        it 'has a height' do 
            visitor = Visitor.new('Bruce', 54, '$10')

            expect(visitor.height).to eq(54)
        end

        it 'has spending money' do 
            visitor = Visitor.new('Bruce', 54, '$10')

            expect(visitor.spending_money).to eq('$10')
        end

        it 'has preferences' do 
            visitor = Visitor.new('Bruce', 54, '$10')

            expect(visitor.preferences).to eq([])
        end
    end 
end 