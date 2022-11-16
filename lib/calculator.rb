require_relative 'calculator/operation'

class Calculator 
    def calculate(method, *numbers)
        Calculator::Operation.instance_for(method).call(*numbers)
    end
end
