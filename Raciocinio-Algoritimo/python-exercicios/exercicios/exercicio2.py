## A partir de uma string lida pelo teclado, como voce faria para contar o numero de palavras presentes na string? Implemente a solução em uma função que recebe a string e retorna a quantidade de palavras

def contar_palavras(palavra: str) -> int:
  return len(palavra.split(" "))

texto = input("Escreva um texto e contaremos o numero de palavras: \n")
print(f"O número de palavras é de: {contar_palavras(text)}")