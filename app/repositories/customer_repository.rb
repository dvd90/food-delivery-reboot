require_relative 'base_repository'
require_relative "../models/customer"

class CustomerRepository < BaseRepository
    private

    def instance_element(row)
        Customer.new(row)
    end
end