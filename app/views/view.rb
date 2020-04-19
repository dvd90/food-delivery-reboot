class View
    def display_meals(meals)
        puts "--- List of my Meals 🥙---"
        meals.each do |meal|
            puts "#{meal.id} - #{meal.name}: $#{meal.price}"
        end
        puts "-------------------------"
    end

    def display_customers(customers)
        puts "--- List of my customers 👴---"
        customers.each do |customer|
            puts "#{customer.id} - #{customer.name}: #{customer.address}"
        end
        puts "-------------------------"
    end

    def ask_for(stuff)
        puts "#{stuff}?"
        print ">"
        gets.chomp
    end
end