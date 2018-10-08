# operador = '/'

# v1 = 10
# v2 = 2

# resultado = v1.send(operador.to_sym, v2)
# puts resultado

puts 'Bem vindo a Calculadora'

puts 'Informe o valor 1'
v1 = STDIN.gets.to_i

puts 'Informe o valor 2'
v2 = STDIN.gets.to_i

puts 'Informe o Operador'
operador = gets.chomp

$resultado = nil

puts operador

case operador
when '/'
  $resultado = v1 / v2
when '*'
  $resultado = v1 * v2
when '+'
  $resultado = v1 + v2
when '-'
  $resultado = v1 - v2
else
    puts 'Operador invalido.'
end

if $resultado != nil
    puts 'O resultado é:'
    puts $resultado
end
