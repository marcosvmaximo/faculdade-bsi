def conj_potencia(conjunto):
  lista_conjunto = list(conjunto)
  subconjunto = []

  for i in range(2**len(lista_conjunto)): ## Para iterar por todo conjunto, onde o valor é 2 elevado ao numero de itens no conjunto.
    subconjuto_potencia = [] ## Cria uma variavel de subconjunto temporaria para agrupar os valores
    for k in range(len(lista_conjunto)):  ## Para cada iteração do conjunto, você itera novamente pela quantidade de itens
      if i & 1 << k: ## (1<<k): Desloca o 1 um bit para o lado // Depois compara com o bit de i (iteração atual do conjuntoˆ2)
        subconjuto_potencia.append(lista_conjunto[k]) ## Adiciona a lista temporaria os valores obtidos
    
    subconjunto.append(subconjuto_potencia) ## Adiciona a lista temporaria completamente

  return subconjunto

conjunto = input("Escreva um conjunto para aplicar P(X):\n")
print("Sua função retornou: ", conj_potencia(set(conjunto.split(","))))