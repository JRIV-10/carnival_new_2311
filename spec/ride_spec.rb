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
end