class Carnival
    attr_reader :rides, 
                :duration
    
    def initialize(carnival_data)
        @duration = carnival_data[:duration]
        @rides = []
    end
end