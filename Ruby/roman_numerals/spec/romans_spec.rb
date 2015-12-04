require 'romans'

describe Romans do

  subject(:romans) { Romans.new  }

  context 'Give a number' do
    describe '#to_roman - default numbers' do
      it 'should be able to convert 1 to I' do
        expect(romans.to_roman(1)).to eq('I')
      end

      it 'should be able to convert 5 to V' do
        expect(romans.to_roman(5)).to eq('V')
      end

      it 'should be able to convert 10 to X ' do
        expect(romans.to_roman(10)).to eq('X')
      end

      it 'should be able to convert 50 to L' do
        expect(romans.to_roman(50)).to eq('L')
      end

      it 'should be able to convert 100 to C' do
        expect(romans.to_roman(100)).to eq('C')
      end

      it 'should be able to convert 500 to D' do
        expect(romans.to_roman(500)).to eq('D')
      end

      it 'should be able to convert 1000 to M' do
        expect(romans.to_roman(1000)).to eq('M')
      end
    end

    describe '#to_roman - unusual numbers' do
      it 'should be able to convert 4 to IV' do
        expect(romans.to_roman(4)).to eq('IV')
      end

      it 'should be able to convert 14 to XIV' do
        expect(romans.to_roman(14)).to eq('XIV')
      end

      it 'should be able to convert 996 to CMXCVI' do
        expect(romans.to_roman(996)).to eq('CMXCVI')
      end

      it 'should be able to convert 1999 to MCMXCIX' do
        expect(romans.to_roman(1999)).to eq('MCMXCIX')
      end
    end
  end
end
