require_relative '../views/view'
require_relative '../models/meal'

class MealsController
    def initialize(meal_repository)
        @meal_repository = meal_repository
        @view = View.new
    end

    def list
        meals = @meal_repository.all
        @view.display_meals(meals)
    end

    def create
        @meal_repository.add(
            Meal.new(
                name: @view.ask_for("name"),
                price: @view.ask_for("price").to_i
            )
        )
    end
end