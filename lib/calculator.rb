class Calculator 
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
