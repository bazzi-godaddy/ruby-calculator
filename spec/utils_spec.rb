require 'utils'

include Utils

RSpec.describe Utils do
    describe '#isNumeric' do
        context 'when value is numeric' do
            it 'returns true' do

                expect(Utils.isNumeric(10)).to eq true
            end
        end

        context 'when value is not numeric' do
            it 'returns false' do

                expect(Utils.isNumeric('a')).to eq false
            end
        end
    end
end
