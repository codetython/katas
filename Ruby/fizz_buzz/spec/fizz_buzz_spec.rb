require 'fizz_buzz'

describe FizzBuzz do
  subject (:fizz_buzz) { FizzBuzz.new  }

  context 'knows that a number is divisible by' do
    it '3' do
      expect(fizz_buzz.is_divisible_by_three?(3)).to be true
    end

    it '5' do
      expect(fizz_buzz.is_divisible_by_five?(5)).to be true
    end

    it '15' do
      expect(fizz_buzz.is_divisible_by_fifteen?(15)).to be true
    end
  end

  context 'knows that a number is not divisible by' do
    it '3' do
      expect(fizz_buzz.is_divisible_by_three?(1)).not_to be true
    end

    it '5' do
      expect(fizz_buzz.is_divisible_by_five?(1)).not_to be true
    end

    it '15' do
      expect(fizz_buzz.is_divisible_by_fifteen?(1)).not_to be true
    end
  end

  context 'when playing the game it should returns' do
    it 'the number' do
      expect(fizz_buzz.fizzbuzz(1)).to eq 1
    end

    it 'Fizz' do
      expect(fizz_buzz.fizzbuzz(3)).to eq 'Fizz'
    end

    it 'Buzz' do
      expect(fizz_buzz.fizzbuzz(5)).to eq 'Buzz'
    end

    it 'FizzBuzz' do
      expect(fizz_buzz.fizzbuzz(15)).to eq "FizzBuzz"
    end
  end
end
