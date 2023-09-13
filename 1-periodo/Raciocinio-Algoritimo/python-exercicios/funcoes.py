# def verificar_numero_dezena(num):
#   return num < 100 and num > 9

# print(verificar_numero_dezena(10))
# print(verificar_numero_dezena(100))
# print(verificar_numero_dezena(1))


# Calculadora

def iniciar_calculadora():
  print('Calculadora iniciada')
  pergunta = int(input('Você deseja:\n1. Somar\n2. Subtrair\n3.Dividir\n4. Multiplicar'))

  valor1 = int(input('Digite o primeiro valor'))
  valor2 = int(input('Digite o segundo valor'))
  if pergunta == 1:
    print(somar(valor1, valor2))
  elif pergunta == 2:
    print(subtrair(valor1, valor2))
  elif pergunta == 3:
    print(dividir(valor1, valor2))
  elif pergunta == 4:
    print(multiplicar(valor1, valor2))
  else:
    print('Valor inválido')


def somar(num1, num2):
  return num1 + num2

def subtrair(num1, num2):
  return num1 - num2

def dividir(num1, num2):
  return num1 / num2

def multiplicar(num1, num2):
  return num1 * num2

iniciar_calculadora()