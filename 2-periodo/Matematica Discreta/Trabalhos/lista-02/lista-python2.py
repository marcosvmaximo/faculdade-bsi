import matplotlib.pyplot as plt
import numpy as np

def funcao1oGrau(a,b,x):
    return (a*x + b)

a = 2
b = 2

vetorX = np.arange(-5,5,.1)
vetorY = a * vetorX + b

#aqui estamos criando uma janela (figura)
plt.title('f(x) = ax + b')
plt.xlabel('eixo x')
plt.xlabel('eixo y')
plt.legend()
plt.grid(True, which='both')
plt.axhline(y=0, color='k')
plt.axhline(x=0, color='k')
fig = plt.figure(figsize=(10,10))
#aqui estamos plotando ponto a ponto do vetor x com o respectivo y
plt.plot(vetorX, vetorY, label = "Função 1º Grau")

#aqui chamamos a função para mostrar a janela
plt.show()
