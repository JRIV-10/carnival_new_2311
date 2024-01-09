require 'spec_helper'

RSpec.describe Ride do 
    describe '#initialize' do 
        it 'exists' do 
            ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

            expect(ride1).to be_a Ride 
        end

        it 'has a name' do 
            ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

            expect(ride1.name).to eq('Carousel')
        end

        it 'has a min_height' do 
            ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

            expect(ride1.min_height).to eq(24)
        end

        it 'has an admission fee' do 
            ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

            expect(ride1.admission_fee).to eq(1)
        end

        it 'has a exictement level' do 
            ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

            expect(ride1.excitement).to eq(:gentle)
        end
    end

    describe '#total_revenue' do 
        it 'has a revenue' do 
            ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

            expect(ride1.total_revenue).to eq(0)
        end
    end

    describe '#rider_log' do 
        it 'is a hash' do 
            ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

            expect(ride1.rider_log).to be_a Hash 
        end
    end
    describe '#board_rider' do 
        it 'boards a rider' do 
            ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
            visitor1 = Visitor.new('Bruce', 54, '$10')
            visitor2 = Visitor.new('Tucker', 36, '$5')

            ride1.board_rider(visitor1)
            ride1.board_rider(visitor2)
            ride1.board_rider(visitor1)

            expect(ride1.rider_log[visitor1]).to eq(2)
            expect(ride1.rider_log[visitor2]).to eq(1)
        end

        xit 'takes admission fee' do 
            ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
            visitor1 = Visitor.new('Bruce', 54, '$10')

            ride1.board_rider(visitor1)
            expect(ride1.take_visitor_money(visitor1)).to eq(9)
        end
        it 'allows rider to board if tall enough' do 
            ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
            visitor1 = Visitor.new('Bruce', 54, '$10')

            visitor1.add_preference(:gentle)
            ride1.board_rider(visitor1)

            expect(ride1.rider_log[visitor1]).to eq(1)

            visitor2 = Visitor.new('Tucker', 23, '$5')
            visitor2.add_preference(:gentle)
            ride1.board_rider(visitor2)
            
            expect(ride1.rider_log[visitor2]).to eq(0)
        end
    end
end