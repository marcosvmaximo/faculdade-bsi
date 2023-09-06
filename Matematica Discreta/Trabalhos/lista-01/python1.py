# A = [1, 2, 3, 4, 5, 6]
# print(A)

# lista = ['bananas', 'peras', 'laranjas', 'limões', 'bananas', 'bananas', 'abacates', 'laranjas']
# B = set(lista)
# print('A cardinalidade do cojunto B = ', B, ' é {', B.__len__(), '}')

# A = [1, 2, 3, 4, 5]

# if 2 in A:  
#   print("A: verdadeiro")
# else:
#   print("A: falso")

# if 6 in A:  
#   print("B: falso")
# else:
#   print("B: falso")

# if [] in A:  
#   print("C: verdadeiro")
# else:
#   print("C: falso")



# # if A.sort() == B.sort():
# #     print("A é igual a B")
# # else:
# #     print("A NÃO é igual a B")

# if C.issubset(A):
#     print("C é subconjunto de A")
# else:
#     print("C NÃO é subconjunto de A")

# if C.issubset(B):
#     print("C é subconjunto de B")
# else:
#     print("C NÃO é subconjunto de B")

# if C.issubset(C):
#     print("C é subconjunto de C")
# else:
#     print("C NÃO é subconjunto de C")
    
# A = {1, 2, 3}
# B = {3, 2, 1}
# C = {2,3,4}
# if {0} in A:
#     print("O conjunto {0} pertence a A")
# else:
#     print("O conjunto {0} NÃO pertence a A")
    

# A = {1,2,3} 
# C = {1,2,3,4,5}
# D = {5,3,4,2,1} 

# if A.issubset(C) and A != C:
#   print("A é subconjunto próprio de C")
# else:
#   print("A NÃO é subconjunto próprio de C")
    

# A = {1,2,3,4,5} 
# B = {4,5,6,7,8,9,10}  

# print('a) ', A.union(B))
# print('b) ', A.intersection(B))
# print('c) ', A.difference(B))
# print('d) ', B.difference(A))

while True:
  userDigit = input("Escolha o tipo de operação que deseja realizar:\n1. União\n2. Intersecção\n3. Diferença\n4. Produto Cartesiano\n5. Subconjunto\n6. Inverter conjuntos\nSair. 0\n")

  if userDigit == "1":
    A = set(input("Escreva o conjunto A: ").split(","))
    B = set(input("Escreva o conjunto B: ").split(","))
    print(A.union(B))
  elif userDigit == "2":
    A = set(input("Escreva o conjunto A: ").split(","))
    B = set(input("Escreva o conjunto B: ").split(","))
    print(A.intersection(B))
  elif userDigit == "3":
    A = set(input("Escreva o conjunto A: ").split(","))
    B = set(input("Escreva o conjunto B: ").split(","))
    print(A.difference(B))
  elif userDigit == "4":
    A = input("Escreva o conjunto A: ").split(",")
    B = input("Escreva o conjunto B: ").split(",")
    new = []
    for i in range(A.__len__()): 
      x = int(A[i]) * int(B[i])
      new.insert(new.__len__(), x)

    print(new)
  elif userDigit == "5":
    escolha2 = input("1. Subconjunto\n2. Subconjunto próprio\n")
    
    if escolha2 == "1":
      A = set(input("Escreva o conjunto A: ").split(","))
      B = set(input("Escreva o conjunto B: ").split(",")) 

      if A.issubset(B):
        print("É subconjunto")
      else:
        print("NÃO é subconjunto")  

    elif escolha2 == "2":
      A = set(input("Escreva o conjunto A: ").split(","))
      B = set(input("Escreva o conjunto B: ").split(","))

      if A.issubset(B) and A != B:
        print("É subconjunto próprio")
      else:
        print("NÃO é subconjunto próprio")  
        
    else:
      print("Ocorreu um erro.")

  elif userDigit == "6":
    escolha2 = input("1. Subconjunto\n2. Subconjunto próprio\n")
    
    if escolha2 == "1":
      A = set(input("Escreva o conjunto A: ").split(","))
      B = set(input("Escreva o conjunto B: ").split(",")) 

      if A.issubset(B):
        print("É subconjunto")
      else:
        print("NÃO é subconjunto")  

    elif escolha2 == "2":
      A = set(input("Escreva o conjunto A: ").split(","))
      B = set(input("Escreva o conjunto B: ").split(","))

      if A.issubset(B) and A != B:
        print("É subconjunto próprio")
      else:
        print("NÃO é subconjunto próprio")  
        
    else:
      print("Ocorreu um erro.")

  else:
    break

    