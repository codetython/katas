class Romans
  attr_accessor :romans

  def initialize
    @romans = {
      1000 => "M",
      900  => "CM",
      500  => "D",
      400  => "CD",
      100  => "C",
      90   => "XC",
      50   => "L",
      40   => "XL",
      10   => "X",
      9    => "IX",
      5    => "V",
      4    => "IV",
      1    => "I"
    }
  end

  def to_roman(number)
    result = ''
    @romans.each do |key, value|
      until number / key == 0
        result << value
        number -= key
      end
    end
    result
  end
end
