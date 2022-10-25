require 'calculator'

RSpec.describe Calculator do
    describe '#calculate' do
        calc = Calculator.new

        context 'when method is sum' do
            it 'returns the sum' do

                expect(calc.calculate(10, 5, "+")).to eq 15
            end
        end

        context 'when method is substraction' do
            it 'returns the substraction' do

                expect(calc.calculate(25, 5, "-")).to eq 20
            end
        end

        context 'when method is division' do
            it 'returns the division' do

                expect(calc.calculate(10, 2, "/")).to eq 5
            end
        end

        context 'when method is multiplication' do
            it 'returns the multiplication' do

                expect(calc.calculate(10, 5, "*")).to eq 50
            end
        end
    end
end
