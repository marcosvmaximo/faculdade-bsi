import random
# ## Somatorio 1
# tamanho_sequencia = int(input("Digite o tamanho da sequência: "))
# soma = 0

# for i in range(tamanho_sequencia):
#   altura = float(input(f"Digite a altura da pessoa número {i+1} no formato x,xx: ").replace(",", "."))
#   soma += altura

# media_altura = soma / tamanho_sequencia
# print("A média aritmética das alturas é:", media_altura)


# ## Somatorio 2
# soma = 0

# for x in range(2, 5+1):
#   for y in range(2, 3+1):
#     soma += pow(x + y, 2)
  
# print(soma)

# ## Somatorio 3
# soma = 0

# for x in range(1, 3+1):
#   for y in range(1, 2+1):
#     soma += x * y - 5
  
# print(soma)

# ## ex. 10
# vetor_num = []
# for i in range(5):
#   num = int(input(f"Escreva o {i+1}º número: "))
#   vetor_num.insert(i, num)

# vetor_num.reverse()
# print(vetor_num)

# ## ex. 11
# soma = 0
# num = []

# def sorteia():
#   for i in range(6):
#     n = random.randint(1, 1000)
#     num.insert(i, n)

# def somaPar():
#   global soma
#   for i in range(num.__len__()):
#     if num[i] % 2 == 0:
#       soma += num[i]

# sorteia()
# somaPar()
# print(soma)


# ## ex. 12
# vetor_char = []
# soma = 0

# for i in range(6):
#   vetor_char.insert(i, input("Digite algum caracter: "))
#   if vetor_char[i] in "aeiou":
#     soma+=1

# print(soma)

# ## ex. 13

# vetor_notas = []
  
# for i in range(6):
#   notas = input(f"Digite as 4 notas do aluno {i+1} no formato `1, 1`: ").split(",")
#   soma = 0
#   print(notas)
#   for x in range(notas.__len__()):
#     soma += int(notas[x])
#   vetor_notas.insert(i, (soma / x))

# for i in range(vetor_notas.__len__()):
#   print(f"Média do aluno {i+1} é {vetor_notas[i]}")

# ## ex. 14

# soma = 0
  
# for i in range(5):
#   num = int(input("Digite um número inteiro: "))
#   soma += pow(num, 3)

# print(soma)