class Visitor 
    attr_reader :name,
                :height,
                :spending_money,
                :preferences

    def initialize(name, height, spending_money)
        @name = name 
        @height = height
        @spending_money = spending_money
        @preferences = []
    end

    def add_preference(preference)
        @preferences << preference
    end

    def tall_enough?(min_height)
        @height >= min_height
    end

    def take_spending_money(amount)
        @spending_money = [@spending_money.to_i - amount, 0].max.to_s
        amount 
    end
end