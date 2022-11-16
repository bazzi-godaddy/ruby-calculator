require 'calculator'

RSpec.describe Calculator do
    describe '#calculate' do
        calc = Calculator.new

        context 'when method is sum' do
            it 'returns the sum' do

                expect(calc.calculate(:sum, 10, 5)).to eq 15
            end
        end

        context 'when method is substraction' do
            it 'returns the substraction' do

                expect(calc.calculate(:subtraction, 25, 5)).to eq 20
            end
        end

        context 'when method is division' do
            it 'returns the division' do

                expect(calc.calculate(:division, 10, 2)).to eq 5
            end
        end

        context 'when method is multiplication' do
            it 'returns the multiplication' do

                expect(calc.calculate(:multiplication, 10, 5)).to eq 50
            end
        end

        context 'when method is invalid' do
            it 'returns the exception' do

                expect{ calc.calculate(:invalid, 10, 5) }.to raise_error(ArgumentError)
            end
        end
    end
end
