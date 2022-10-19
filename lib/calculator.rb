class Calculator 
    def initialize         
        a = get_number("Enter the first number: ")
        method = get_method
        b = get_number("Enter the second number: ")

        result = calculate(a, b, method)

        puts "\nResult: #{a} #{method} #{b} = #{result}"
    end

    def numeric(number)
        !!Float(number) rescue false
    end

    def get_number(message)
        number_is_valid = false

        while !number_is_valid
            puts "\n#{message}"
            number = gets.chomp

            if numeric(number)
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

    def calculate(a, b, method)
        case method
        when "+"
            sum(a,b)
        when "-"
            subtraction(a, b)
        when "/"
            division(a, b)
        when "*"
            multiplication(a, b)
        else
            nil
        end
    end

    def sum(a, b)
        a + b
    end

    def subtraction(a, b)
        a - b
    end

    def division(a, b)
        a / b
    end

    def multiplication(a, b)
        a * b
    end
end

calc = Calculator.new
