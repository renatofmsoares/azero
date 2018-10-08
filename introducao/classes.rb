class Animal
  attr_accessor :nome, :cor, :idade, :raca

  def initialize(nome, idade)
    # quando a classe é instanciada,
    # tudo aqui acontece primeiramente
    @nome = nome
    @idade = idade
  end

  def mostra_idade
    puts "A idade do #{@nome} é #{@idade} anos."
  end

  def define_cor(cor)
    @cor = cor
  end
end

class Cachorro < Animal
  def late
    puts "#{@nome}, diz: Au au..."
  end
end

class Gato < Animal
  def mia
    puts "#{@nome}, diz: Miau..."
  end
end

spike = Cachorro.new('Spike', 5)
snoop = Cachorro.new('Snoop', 2)
tom = Gato.new('Tom', 7)

spike.late
spike.mostra_idade
snoop.late
snoop.mostra_idade
tom.mia
tom.mostra_idade
