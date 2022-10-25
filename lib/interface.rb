require_relative 'Utils'

include Utils

class Interface
    def get_number(message)
        number_is_valid = false

        while !number_is_valid
            puts "\n#{message}"
            number = gets.chomp

            if Utils.isNumeric(number)
                number_is_valid = true
            else
                puts "Invalid number"
            end
        end

        number.to_f
    end

    def get_method
        method_is_valid = false

        while !method_is_valid
            puts "\nPlease enter a valid operation symbol: \nEnter + for Sum\nEnter - for Substraction\nEnter / for Division\nEnter * for Multiplication"
            method = gets.chomp
            
            if method === '+' || method === '-' || method === '/' || method === '*'
                method_is_valid = true
            else
                puts "\nOperation symbol is invalid"
            end
        end

        method
    end

    def show_result(result, a, b, method)
        puts "\nResult: #{a} #{method} #{b} = #{result}"
    end
end
