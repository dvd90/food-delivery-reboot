require_relative 'base_repository'
require_relative "../models/meal"

class MealRepository < BaseRepository
    private

    def instance_element(row)
        row[:price] = row[:price].to_i
        Meal.new(row)
    end
end