# Exercicio nº 8:

## A-)


limite_inferior1 = 2
limite_inferior2 = 2

limite_superior1 = 5
limite_superior2 = 3

somatorio = 0

for x in range(limite_inferior1, limite_superior1+1):
  for y in range(limite_inferior2, limite_superior2+1):
    valor = pow(x+y, 2)
    somatorio += valor
    print(somatorio)

print('resultado: ', somatorio)


