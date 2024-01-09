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

    describe '#add_ride(ride)' do 
        it 'adds rides' do 
            carnival = Carnival.new(duration: 14)
            ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })
            carnival.add_ride(ride3)

            expect(carnival.rides).to eq([ride3])
        end
    end

    describe '#most_popular_ride' do 
        it 'returns the most popular ride' do 
            carnival = Carnival.new(duration: 14)
            ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
            ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })
            carnival.add_ride(ride3)
            carnival.add_ride(ride1)
            visitor1 = Visitor.new('Bruce', 54, '$10')
            visitor2 = Visitor.new('Tucker', 36, '$5')

            ride1.board_rider(visitor1)
            ride1.board_rider(visitor2)

            ride3.board_rider(visitor1)
            ride3.board_rider(visitor2)
            ride3.board_rider(visitor2)

            expect(carnival.most_popular_ride).to eq(ride3)
        end
    end
end