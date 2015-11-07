require_relative 'diamante'

RSpec.describe Diamante do
  context 'Deve retornar o diamente correto' do
    it 'Quando escolher a letra A' do
      expect(Diamante.new('A').print).to eq 'A'
    end
    it 'Quando escolher a letra B' do
      expect(Diamante.new('B').print).to eq " A\nB B\n A"
    end
    it 'Quando escolher a letra C' do
      expect(Diamante.new('C').print).to eq "  A\n B B\nC   C\n B B\n  A"
    end
    it 'Quando escolher a letra D' do
      expect(Diamante.new('D').print).to eq "   A\n  B B\n C   C\nD     D\n C   C\n  B B\n   A"
    end
  end
  context 'Deve retornar numero de espaços antes da letra A' do
    it "Quando escolher letra A" do
      expect(Diamante.new('A').numero_de_espacos).to eq 0
    end
    it "Quando escolher letra a" do
      expect(Diamante.new('a').numero_de_espacos).to eq 0
    end
    it "Quando escolher letra B" do
      expect(Diamante.new('B').numero_de_espacos).to eq 1
    end
    it "Quando escolher letra D" do
      expect(Diamante.new('D').numero_de_espacos).to eq 3
    end
  end
  context 'Deve retornar o numero de espaços entre duas letras' do
    it "Quando escolher letra D e B" do
      expect(Diamante.new('D').numero_de_espacos('B')).to eq 2
    end
  end
end


#Observar maiusculas
