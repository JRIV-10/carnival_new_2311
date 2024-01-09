class Carnival
    attr_reader :rides, 
                :duration
    
    def initialize(carnival_data)
        @duration = carnival_data[:duration]
        @rides = []
    end

    def add_ride(ride)
        @rides << ride 
    end

    def most_popular_ride 
        rides.max_by { |ride| ride.rider_log.values.sum }
    end
end