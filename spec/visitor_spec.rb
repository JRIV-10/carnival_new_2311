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

    describe '#add_preference' do 
        it 'adds preferences' do 
            visitor1 = Visitor.new('Bruce', 54, '$10')
            visitor1.add_preference(:gentle)
            visitor1.add_preference(:thrilling)
            visitor1.preferences 

            expect(visitor1.preferences).to eq([:gentle, :thrilling])
        end 
    end

    describe '#tall_enough?' do 
        it 'is not tall enough' do 
            visitor2 = Visitor.new('Tucker', 36, '$5')
            visitor2.tall_enough?(54)

            expect(visitor2.tall_enough?(36)).to eq(false)
        end
    end
end 