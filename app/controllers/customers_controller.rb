require_relative '../views/view'
require_relative '../models/customer'

class CustomersController
    def initialize(customer_repository)
        @customer_repository = customer_repository
        @view = View.new
    end

    def list
        customers = @customer_repository.all
        @view.display_customers(customers)
    end

    def create
        @customer_repository.add(
            Customer.new(
                name: @view.ask_for("name"),
                address: @view.ask_for("address")
            )
        )
    end
end