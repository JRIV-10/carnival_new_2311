class Ride 
    attr_reader :name,
                :min_height,
                :admission_fee,
                :excitement,
                :rider_log, 
                :total_revenue

    def initialize(ride_data)
        @name = ride_data[:name]
        @min_height = ride_data[:min_height]
        @admission_fee = ride_data[:admission_fee]
        @excitement = ride_data[:excitement]
        @rider_log = Hash.new(0)
        @total_revenue = 0
    end

    def total_revenue
        @total_revenue
    end
    
    def board_rider(visitor)
        if visitor.tall_enough?(@min_height) && visitor.preferences.include?(@excitement)
            @rider_log[visitor] += 1
            take_visitor_money(visitor)
            @total_revenue += @admission_fee
        else 
            false 
        end 
    end

    def take_visitor_money(visitor)
        visitor.take_spending_money(@admission_fee)
    end
end