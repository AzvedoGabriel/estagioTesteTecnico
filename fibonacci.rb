# Função para verificar se um número pertence à sequência de Fibonacci
def pertence_sequencia_fibonacci?(numero)
  # Inicialização dos dois primeiros números da sequência de Fibonacci
  fibonacci_antecessor = 0
  fibonacci_atual = 1

  # Enquanto o número atual na sequência de Fibonacci for menor ou igual ao número fornecido
  while fibonacci_atual <= numero
    # Se o número fornecido for igual ao número atual na sequência, retorna verdadeiro
    return true if fibonacci_atual == numero

    # Atualiza os números da sequência de Fibonacci para o próximo passo
    fibonacci_antecessor, fibonacci_atual = fibonacci_atual, fibonacci_antecessor + fibonacci_atual
  end

  # Se o número não foi encontrado na sequência de Fibonacci até aqui, retorna falso
  return false
end

# Entrada do usuário para o número a ser verificado
print "Informe um número: "
numero = gets.chomp.to_i

# Verifica se o número pertence à sequência de Fibonacci e imprime o resultado
if pertence_sequencia_fibonacci?(numero)
  puts "#{numero} pertence à sequência de Fibonacci."
else
  puts "#{numero} não pertence à sequência de Fibonacci."
end
