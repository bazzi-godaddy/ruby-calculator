require 'calculator'

RSpec.describe Calculator do

    before(:each) do 
        @calc = Calculator.new 
    end

    describe '#numeric' do
        context 'when string is a valid number' do
            it 'returns true' do

                expect(Calculator.new.numeric("10")).to eq true
            end
        end

        context 'when string is not a valid number' do
            it 'returns true' do

                expect(Calculator.new.numeric("not a number")).to eq false
            end
        end
    end
end