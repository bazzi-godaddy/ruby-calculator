require_relative 'operation/sum'
require_relative 'operation/division'
require_relative 'operation/multiplication'
require_relative 'operation/subtraction'

class Calculator
    class Operation
        def self.instance_for(method)
            begin
                Object.const_get("Calculator::Operation::#{method.to_s.capitalize}").new
            rescue NameError
                raise ArgumentError.new('Invalid Method')
            end
        end
    end
end
