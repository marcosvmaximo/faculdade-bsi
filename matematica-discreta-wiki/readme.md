# Matematica Discreta

## Conjuntos

É uma coleção de objetos, como uma lista(array, vetor..), cada item dentro de um conjunto é um elemento, com representação única.

> Basicamente um conjunto de elementos que não se repetem.
> 

## Pertinência

A relação de pertinência é somente entre o elemento e o conjunto. Ou seja, só usamos o símbolo de pertinência em elementos ligando a conjuntos.

![Captura de Tela 2023-08-16 às 18.43.30.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_18.43.30.png)

> Se refere a uma validação lógica, se elemento X é pertinente(está), no conjunto Y.
> 

## Subconjunto

Quando existem 2 conjuntos e um dos conjuntos pertence ao outro (todos elementos do X, contém no Y), temos uma relação de subconjunto entre os dois conjuntos.

![Captura de Tela 2023-08-16 às 18.53.28.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_18.53.28.png)

> Este simbolo representa um subconjunto, ou seja, que o primeiro valor, é um conjunto do segundo.
> 

**Exemplos:**

![Captura de Tela 2023-08-16 às 18.59.13.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_18.59.13.png)

## Subconjunto próprio

Referece que o valor X pertence ao valor Y, porém não são iguais.

X - Está no Y {a, b, c, X}

Y ≠ X

![Captura de Tela 2023-08-16 às 19.00.41.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_19.00.41.png)

**Exemplos:**

![Captura de Tela 2023-08-16 às 19.00.10.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_19.00.10.png)

1. B faz parte do conjunto de A
2. D faz parte do conjunto de A
3. A faz parte do conjunto de D
4. B faz parte de A porém é diferente de A
5. C não está em A 
6. C Não faz parte de A

## Conjuntos numericos

### Conjunto Inteiros

Números completos, sem casas decimais, sejam positivos ou negativos.

### Conjunto Natural

Todos números inteiros positivos.

### Conjunto Racionais

Todo número que pode ser escrito em forma de fração. Todo inteiro é racional

### Conjunto Irracional

Todo número que não é possível descrever como fração. Raizes, exatas e dizimas nao periodicas.

**Ficando assim o diagrama:**

![Captura de Tela 2023-08-16 às 23.44.52.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_23.44.52.png)

## Operações entre conjuntos

![Captura de Tela 2023-08-16 às 23.45.56.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_23.45.56.png)

**Exemplos:**

![Captura de Tela 2023-08-16 às 23.46.26.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_23.46.26.png)

## União

Junção de todos elementos do x e y, não incluindo aqueles que se repetem nos dois. OU seja, irá adicionar tudo que os dois não tem em comum, e repetir o que se repetem em ambos.

![Captura de Tela 2023-08-16 às 23.50.10.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_23.50.10.png)

- A unido com B.
- X é pertinente ao A ou B, já que são a união de todos elementos que os dois tratam.
- Porém a união entre A e B, é subconjunto de S(universo), todo restante.

## Intersecção

Junta elementos que se repetem em ambos, porém sem repetir. Ou seja, tudo que é comum em ambos, é uma intersecção.

![Captura de Tela 2023-08-16 às 23.52.41.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_23.52.41.png)

- A intersecta B.
- Elementos no geral são pertinentes a A e pertinentes a B, já que são sempre elementos que se repetem em ambos, podemos concluir uma condicional AND, provando que os dois retornam positivo para essa afirmação.
- Os dois subconjuntos são subconjunto de S(universo).

## Complemento de um conjunto

Tudo aquilo que está fora do conjunto, sendo representado por uma aspa, ele se refere a tudo aquilo que o universo contém, e que não está no subconjunto A.

**Exemplo:**

A = {1, 2, 3}

A’= {4, 5, ..infinit}

S = infinit.

![Captura de Tela 2023-08-16 às 23.54.39.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_23.54.39.png)

- Representa a negação lógica.
- Tudo aquilo que não pertence ao subconjunto A, também se encontra em S. Assim como A e A’ também são subconjuntos de S.

## Diferença

É tudo aquilo que só tem no subconjunto A. Ou seja, tudo aquilo que for diferente dos elementos de B, é unicamente de A, sendo assim é diferente de B.

![Captura de Tela 2023-08-16 às 23.58.08.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-16_as_23.58.08.png)

- Sendo representado por -
- Todos elementos pertinentes a A e elementos não pertinentes a B, é a condicional que prova isso. Já que ao mesmo tempo que todos elementos pertinentes a A existem, para ser uma diferença real, deve não ser pertinente a B.

## Produto cartesiano

É uma forma de referir/comparar 2 conjuntos, sendo AxB, como uma multiplicação normal.

![Captura de Tela 2023-08-17 às 19.03.42.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-17_as_19.03.42.png)

- Vemos que fazemos uma multiplicação entre cada elemento ao outro elemento.

## Cardinalidade

É o número que corresponde a tudo.

Ou seja, se um conjunto S é finito, então n(s) é sua cardinalidade, ou seja, a operação que o representa como um todo.

![Captura de Tela 2023-08-17 às 19.12.14.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-17_as_19.12.14.png)

# **Subconjuntos e Funções**

## **Definição:**

Um conjunto é uma coleção de objetos. Cada item dentro do conjunto é um elemento com representação única (não existem repetidos).

## Subconjunto próprio

> Subconjunto próprio é um conjunto onde o subconjunto que está no elemento, é obrigatoriamente diferente do elemento
> 

![Captura de Tela 2023-08-23 às 20.39.05.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-23_as_20.39.05.png)

**Exercicios:**

![Captura de Tela 2023-08-23 às 21.15.55.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-23_as_21.15.55.png)

A = (Cada elemento da conjução, pertence aos numeros naturais e elemento é até igual a 5){1, 2, 3, 4, 5}

B = {10, 12, 16, 20}

C = (Para cada elemento, existe um Y, onde Y pertence aos numeros naturais, e X é igual a 2Y){}

- Realizar exercicios

**Relacionando:**

![Captura de Tela 2023-08-23 às 21.40.26.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-23_as_21.40.26.png)

![Captura de Tela 2023-08-23 às 21.40.44.png](Matematica%20Discreta%203b7f45588e1f47c1bdce8a04f48d977b/Captura_de_Tela_2023-08-23_as_21.40.44.png)

**Lendo:**

Para todos elementos, (onde elemento é que pertinente a A também possui o mesmo elemento pertinente a B) E (Existe um y, onde y pertence a B e ao mesmo tempo y não pertence a A)

<aside>
💡 Todo elemento desse conjunto que pertence a A, também pertence a B, e ao mesmo tempo, os elementos pertinentes a B, não pertencem a A.

</aside>

## Função

---

**A Fazeres:**

- Lista 1 Python
- Potencia
- Lista 2 Python