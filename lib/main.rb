require_relative 'interface'
require_relative 'calculator'

interface = Interface.new
calc = Calculator.new

a = interface.get_number("Enter the first number: ")
method = interface.get_method
b = interface.get_number("Enter the second number: ")

result = calc.calculate(a, b, method)

interface.show_result(result, a, b, method)
