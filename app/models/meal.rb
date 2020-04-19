class Meal
    attr_accessor :id
    attr_reader :name, :price

    def initialize(attr = {})
        @id = attr[:id]
        @name = attr[:name]
        @price = attr[:price]
    end

    def self.headers
        ['id', 'name', 'price']
    end

    def to_csv
        [@id, @name, @price]
    end
end