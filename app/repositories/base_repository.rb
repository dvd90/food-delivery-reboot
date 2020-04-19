require "csv"

class BaseRepository
    def initialize(csv_path)
        @csv = csv_path
        @elements = []
        @next_id = 1
        load_csv if File.exist? @csv
    end

    def all
        @elements
    end

    def find(id)
        @elements.select { |m| m.id == id}.first
    end

    def add(element)
        element.id = @next_id
        @next_id += 1
        @elements << element
        save
    end

    private

    def save
        CSV.open(@csv, 'w') do |csv|
            csv << @elements.first.class.headers
            @elements.each do |element|
                csv << element.to_csv
            end
        end
    end

    def load_csv
        csv_options = { headers: :first_row, header_converters: :symbol }

        CSV.foreach(@csv, csv_options) do |row|
            row[:id] = row[:id].to_i
            @elements << instance_element(row)
        end
        @next_id = @elements.length + 1
    end
end