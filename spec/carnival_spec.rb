require 'spec_helper'

RSpec.describe Carnival do 
    describe '#initialize' do 
        it 'exists' do 
            carnival = Carnival.new(duration: 14) 

            expect(carnival).to be_a Carnival
        end

        it 'has rides' do 
            carnival = Carnival.new(duration: 14)

            expect(carnival.rides).to eq([])
        end

        it 'has a duration' do 
            carnival = Carnival.new(duration: 14)

            expect(carnival.duration).to eq(14)
        end
    end 
end