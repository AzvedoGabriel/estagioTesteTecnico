# Função para inverter os caracteres de uma string
def inverter_string(string)
  # Converte a string em uma array de caracteres
  caracteres = string.chars

  # Inicializa um novo array para armazenar os caracteres invertidos
  string_invertida = []

  # Itera sobre os caracteres da string original em ordem reversa
  (string.length - 1).downto(0) do |i|
    # Adiciona o caractere atual ao array da string invertida
    string_invertida << caracteres[i]
  end

  # Junta os caracteres invertidos em uma string novamente
  string_invertida.join
end

# Teste da função
string_original = "Hello, world!"
string_invertida = inverter_string(string_original)
puts "String original: #{string_original}"
puts "String invertida: #{string_invertida}"
