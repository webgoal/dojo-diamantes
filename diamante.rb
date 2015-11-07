class Diamante

  def initialize(letter)
    @letter = letter.upcase
  end

  def print
    return @letter if @letter == 'A'
    return "#{' ' * numero_de_espacos}A\nB B\n A" if @letter == 'B'
    return "#{' ' * numero_de_espacos}A\n#{' ' * numero_de_espacos('B')}B B\nC#{' ' * (numero_de_espacos('C') + 1)}C\n B B\n  A" if @letter == 'C'
    "#{' ' * numero_de_espacos}A\n#{' ' * numero_de_espacos('B')}B B\n#{' ' * numero_de_espacos('C')}C   C\nD#{' ' * (numero_de_espacos('D') + 1)}D\n#{' ' * numero_de_espacos('C')}C   C\n#{' ' * numero_de_espacos('B')}B B\n#{' ' * numero_de_espacos}A"
  end

  def numero_de_espacos(reference = 'A')
    return @letter.ord - reference.ord
  end
end
