import math;
# Exercicio nº 8:

## B-)

somatorio = 0 
limite_inferior1 = 1
limite_inferior2 = 1

limite_superior1 = 3
limite_superior2 = 2

for x in range(limite_inferior1, limite_superior1+1):
  for y in range(limite_inferior2, limite_superior2+1):
    v = (x*y) - 5
    somatorio += v
    print(x,"x", y, "- 5")
    print(x*y, "-5 =", v)
    print(somatorio)