# Banco de Dados

- **Navegação**
    1. [Teoria](https://www.notion.so/Teoria-75e569b1abc940058626c2a9d05e185f?pvs=21) 
        
        1.1.[1. Dados](https://www.notion.so/1-Dados-23e249595eb5438a94def1d86cfac6ee?pvs=21) 
        
        1.2. [Conceitos iniciais](https://www.notion.so/Conceitos-iniciais-34bc44324e0548298d02dfe89c70099a?pvs=21) 
        
        1.3. [Banco de Dados](https://www.notion.so/Banco-de-Dados-32ac7c9ec551461b8e063220005a2c88?pvs=21) 
        
        1.3.1. [1. Sistema de banco de dados](https://www.notion.so/1-Sistema-de-banco-de-dados-c522acb1ea4047a1a4e9793d3062f44f?pvs=21) 
        
        1.3.2. [2. Persistência](https://www.notion.so/2-Persist-ncia-2ddab1eeff1141979a758db64eef6c0d?pvs=21) 
        
        1.4. [SGBD - Sistema Gerenciador de Banco de Dados](https://www.notion.so/SGBD-Sistema-Gerenciador-de-Banco-de-Dados-c94fae585a9e454682fd66902e796888?pvs=21) 
        
        1.4.1. [2. SGBD vs File System](https://www.notion.so/2-SGBD-vs-File-System-3e0fcb51836546db8f5e2650abab3bc4?pvs=21) 
        
        1.4.2. [3. Independência de Dados](https://www.notion.so/3-Independ-ncia-de-Dados-6a90d6efc7cc4cba80866414c9dbd86c?pvs=21) 
        
        1.4.3. [Benefícios](https://www.notion.so/Benef-cios-38f72fa16fd04c4f8026f98e3d96e0b0?pvs=21) 
        
        1.5. [Benefícios](https://www.notion.so/Benef-cios-38f72fa16fd04c4f8026f98e3d96e0b0?pvs=21) 
        
        1.6. [Modelo de dados](https://www.notion.so/Modelo-de-dados-e840758e309948d3a3f19b349e54cb3a?pvs=21) 
        
        1.7. [Estrutura geral](https://www.notion.so/Estrutura-geral-82bf379c014046c68396152cd393eb14?pvs=21) 
        
        1.8. [Modelo de Dados](https://www.notion.so/Modelo-de-Dados-2066aa1888fc4066b49b3208f6455f4b?pvs=21) 
        
        1.8.1.  [Modelo Orientado a Objetos](https://www.notion.so/Modelo-Orientado-a-Objetos-73d6f15f8ffd44edae2193c995336acd?pvs=21) 
        
        1.8.2.  [Modelo Entidade-Relacionamento](https://www.notion.so/Modelo-Entidade-Relacionamento-3d103d34120d4248b0cdd7273807e202?pvs=21) 
        
        1.8.3.  [Modelo Relacional](https://www.notion.so/Modelo-Relacional-3ffebff55dc544c7909f27a51789f342?pvs=21) 
        
        1.9. [Fases de um desenvolvimento](https://www.notion.so/Fases-de-um-desenvolvimento-4e6fd96a87a84e30bdf11c6097263fe6?pvs=21)  
        
        1.10. [Levantamento de requisitos](https://www.notion.so/Levantamento-de-requisitos-5a49988f845b41e9a9730ffcc1de3634?pvs=21) 
        
        1.11. [**Tipos de atributos**](https://www.notion.so/Tipos-de-atributos-25923b8b86504acf98b29ee48a0d93b8?pvs=21) 
        
        1.12. [Cardinalidade](https://www.notion.so/Cardinalidade-e7a9631402c243bba2fa5bd4e7579b8a?pvs=21) 
        
        1.13. [Entidade Associativa](https://www.notion.so/Entidade-Associativa-ce43b26e1e6248fdb82f5a23475a4fec?pvs=21) 
        
        1.14. [Resumo anotações BrModelo](https://www.notion.so/Resumo-anota-es-BrModelo-7af8daf41a0646c8836298ee1c51594d?pvs=21) 
        
        1.15. [Fluxo](https://www.notion.so/Fluxo-0168a2a00d924a8e9a8951ef29c290c8?pvs=21) 
        
        [Questões](https://www.notion.so/Quest-es-554aa2c8387d4f96a4066820fe660660?pvs=21) 
        
    2. Prática
        
        2.1. 
        

# Teoria

## 1. Dados

São fatos conhecidos que podem ser registrado.

São valores que armazenado é usado como matéria prima para informações

## 2. Informações

São dados processados e formatados, com o objeto de caracterizar um elemento, fato ou situação.

## 3. Conhecimento

Integra elementos, informações, experiências de forma adequada ao raciocinio humano.

E nos proporciona a tomada de decisão.

# Conceitos iniciais

## 1. DadosxInformaçãoxConhecimento

Um relatório com dados de um paciente, juntos formam as informações, e se analisado pelo médico se torna conhecimento.

Porém se o relatório for lido pelo próprio cliente, ele pode não tirar conclusões corretas e logo não gerando conhecimento.

![Captura de Tela 2023-08-01 às 19.27.59.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-01_as_19.27.59.png)

Vemos que dados é a base de tudo, com os dados conseguimos as informações, e só com a analise das informações conseguimos tirar as conclusões que geram o conhecimento.

![Captura de Tela 2023-08-01 às 19.28.24.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-01_as_19.28.24.png)

# Banco de Dados

Coleção de dados estruturados e relacionais.

Dados organizados com significados definidos e específico.

- Uma organização aleatória de dados não é um banco de dados.
- Um banco de dados é projetado, construindo e populado, com dados que possuem um objetivo específico, normalmente para gerar informações.
- Ele possui um grupo de usuários e aplicações pré-definidos, em que esses usuários estão interessados.

## 1. Sistema de banco de dados

Conjunto de dados inter-relacionados que são manipulados apenas por uma aplicação.

Normalmente referenciados como SGBD - Sistema Gerenciador de Banco de Dados.

## 2. Persistência

Os dados de um banco de dados são ditos persistentes porque não são dados efêmeros ou volátil, como dados IO(input output), como a RAM.

Os dados de um Banco de dados persistem pois uma vez aceito pela SGBD, só serão removidos através de outra chamada explicita solicitante a remoção. E nunca por um meio acidental, como por exemplo o termino do fluxo da aplicação.

![Captura de Tela 2023-08-01 às 19.39.44.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-01_as_19.39.44.png)

## SGBD - Sistema Gerenciador de Banco de Dados

Em inglês: BDMS

**Representação simplificada:**

- Elimina redudancias desnecessárias de dados.
- Diferentes aplicativos e usuários podem acessar os mesmos dados, pois o SGBD trata o acesso concorrente.

![Captura de Tela 2023-08-01 às 19.40.14.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-01_as_19.40.14.png)

- Conjunto de dados associados a um conjunto de programas.
- Ambiente apropriado e eficiente para recuperação e armazenamento de informações.
- Gerenciamento de grandes volumes de informações:
    
    ![Captura de Tela 2023-08-01 às 19.47.19.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-01_as_19.47.19.png)
    
- Trata questões de segurança, como falhas, acesso não autorizado e restrições.

## 2. SGBD vs File System

![Captura de Tela 2023-08-01 às 19.51.20.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-01_as_19.51.20.png)

Ou seja, nosso SGBD cuida de todos esses pontos e outros para nós, sem isso seria só um sistema de acesso a arquivos, o que nos sujeitaria a todos esses problemas.

![Captura de Tela 2023-08-01 às 19.56.21.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-01_as_19.56.21.png)

Note o problema de concorrência, não temos como ter essa tratativa sem um SGBD

![Captura de Tela 2023-08-01 às 19.57.05.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-01_as_19.57.05.png)

Notamos que um sistema de arquivos como excell, conseguimos acessar diretamente ele e tratar dados como precisarmos, mas teriamos varios problemas como citamos acima.

Agora note um sistema de banco de dados que possui um SGBD

![Captura de Tela 2023-08-01 às 19.58.56.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-01_as_19.58.56.png)

## 3. Independência de Dados

![Captura de Tela 2023-08-01 às 20.03.36.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-01_as_20.03.36.png)

![Captura de Tela 2023-08-01 às 20.05.56.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-01_as_20.05.56.png)

## SGDB

### Benefícios

- Permite uma visão mais abstratas dos dados.
- Reduz as redundâncias de dados.
- Realiza o acesso as "pastas”.
- Permite aplicar restrições (constraint), reforçando padrões e regras.
- Melhor segurança.

### Níveis de abstrações

![Captura de Tela 2023-08-08 às 19.22.09.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-08_as_19.22.09.png)

- **Nível de visão ou externo.**

Visão do usuário final/cliente, sem informações precisar, porém dedutivas.

- **Nível lógico ou nível conceitual.**

Esquema conceitual que descreve o banco e seus dados, dando uma visão mais abstratas aos usuários.

- **Nível Interno ou Nível Físico.**

Esquema Interno, descreve como o banco é por dentro, ou seja, literalmente.

### Instância vs Esquema

- Semelhante á variáveis.

**Esquema Lógico**

Estrutura geral do banco de dados. O que define os tipos e "declara” todo o espaço e os valores das tabelas.

**Instância**

Conteúdo real do banco em determinado momento.

## DBA e DA

![Captura de Tela 2023-08-08 às 19.27.05.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-08_as_19.27.05.png)

## Modelo de dados

Conjunto de modelos que definem um banco de dados, dando relacionamentos, semânticas e regras.

**Modelo Relacional**

Modelo clássico. baseado em registro estruturados.

![Captura de Tela 2023-08-08 às 19.34.04.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-08_as_19.34.04.png)

- Domínio é um termo também sendo usado em Matemática Discreta, para representar valores de um conjunto f();

## Estrutura geral

![Captura de Tela 2023-08-08 às 19.35.38.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-08_as_19.35.38.png)

- Fazemos o acesso direto ao SGBD, que internamente distinguirá o tipo de solicitação.
- Irá passar pelo pré-compilador da linguagem que foi realizada a requisição.
- Passará pelo executor.
- Disso ao executar irá entrar no gerenciador de memoria.
- Vários processos complexos internos e então acessa aos arquivos de dados em disco.

## Questões

- **Defina SGBD?**

Um sistema inteligente de controle de memória e consultas, com diversas funcionalidades úteis de usuários, consultas, integridade, e etc. Isso garante diversas vantagens a uma busca convencional de arquivos.

- **Dados persistentes**

Dados que se mantém gravados apesar da volátividade ou não, isso garante que eles foram salvos definitivamente.

- **Integridade**

Garante que nosso dado se mantém correto apesar de adiversidades, como 2 pessoas tentando acessar ou modificar um mesmo dado, e +.

- **Compartilhamento**

- **DA**

Data Analist

- **DBA**

Database Adminitrator. Responsável tecnicamente para as questões de banco, sendo responsável por otimizar SQLs, estruturar bancos inteiros de formas perfomática, e +

- **Linguagem de consulta**

SQL, uma linguagem de consulta que faz uso do DML para realizar buscas em uma serie de arquivos através do SGDB

![Captura de Tela 2023-08-08 às 19.40.12.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-08_as_19.40.12.png)

1. Controle de usuários, otimização, integridade de dados, persistecia, redudancia, controle de acessos e +. Suas desvantagens

1. O sistema de arquivos não possuí redudância, controle de usuários, e por isso se duas pessoas acessarem ao mesmo tempo, pode ocorrer redudâncias. Problemas de segurança, otimização, e controle dos dados.

1. Esquema é uma declaração de tipos e memórias de dados em um banco. Já instância é um conteúdo inserido no banco de dados.

1. Independência lógica é uma mudança no esquema físico do banco. Já a lógica é a mudança lógicamente feita em um banco, como uma adição de um novo atributo.

1. Nível do usuário, como o usuário vê os esquemas de dados. Nível lógico/conceitual, como os dados estão modelados, de forma abstrata. Nível interno ou físico, é como os dados estão real nas aplicações, em nível fisico. 

## Modelo de Dados

Conjunto de ferramentas conceituais usadas para descrever os dados, relaciona-los, e verificar semântica e regras.

O modelo de dados reflete o nível conceitual e lógico, garantindo a criação fisíco com artefatos concretos e modelagem.

![Captura de Tela 2023-08-15 às 18.50.21.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_18.50.21.png)

> Os modelos a seguir são especificações como o UML, no qual são usados para modelagem de sistemas no geral. O que pode se refletir em modelagem de bancos também.
> 

### Modelo Orientado a Objetos

Diagramação de objetos com outros objetos, sendo cada objeto uma entidade/pessoa/tabela/objeto.

![Captura de Tela 2023-08-15 às 18.53.48.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_18.53.48.png)

![Captura de Tela 2023-08-15 às 18.57.29.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_18.57.29.png)

### Modelo Entidade-Relacionamento

Diagramação com base em entidades, representações únicas da identidade de algo da vida real, que se relacionam com outras (se existir), e possuí seus atributos.

![Captura de Tela 2023-08-15 às 18.53.39.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_18.53.39.png)

![Captura de Tela 2023-08-15 às 18.57.04.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_18.57.04.png)

### Modelo Relacional

Diagramação com representação de conjuntos(tabelas talvez), que se relacionam com outros.

![Captura de Tela 2023-08-15 às 18.54.01.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_18.54.01.png)

![Captura de Tela 2023-08-15 às 18.57.18.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_18.57.18.png)

## Fases de um desenvolvimento

1. **Criar o modelo conceitual.**

Planejar o Banco de dados pensando em entidades (**retangulos**), e criar os seus relacionamentos (**linhas que ligam entidades**). 

1. **Criar o modelo lógico.**

Considerar limitações ou regras do SGDB que irá utilizar.

Com isso iremos criar modelos mais amplos e flexíveis, que representaram nossas entidades em tabelas e seus relacionamentos. É a estrutura que o físico e o banco de dados irá usar para modelagem, e é lógico por que ele fica escondido.

1. **Criar o modelo físico.**

Implantar o modelo lógico, incluindo uma analise dos recursos até o momento, e adicionando características se necessário.

**Exemplo:**

![Captura de Tela 2023-08-15 às 19.21.20.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_19.21.20.png)

## Levantamento de requisitos

### **Esquema conceitual**

Indica as necessidades da empresa.

![Captura de Tela 2023-08-15 às 19.25.22.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_19.25.22.png)

### **Estudo de Caso**

![Captura de Tela 2023-08-15 às 19.25.40.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_19.25.40.png)

> Modelo entidade relacionamento - MER, é a forma que o projetista apresenta a modelagem do banco ao cliente.
> 

### **Tipos de atributos**

![Captura de Tela 2023-08-15 às 19.28.25.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_19.28.25.png)

### **Tipos de chaves**

![Captura de Tela 2023-08-15 às 19.28.43.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_19.28.43.png)

- **Superchave**

É o conceito de um atributo(identificados) principal, no qual representa toda a tabela.

- **Chave Candidata**

Essa chave é usada para identificar todos atributos(identificadores) únicos da tabela, que são candidatos a se tornarem superchaves, porém podem ou não ser uma. Ou seja, é um atributo único, obrigatório para a tupla existir, e necessário para a integridade da tabela.

- **Chave Primaria**

É a escolha da chave candidate, definindo-a como a superchave da tabela. Então será a definição, do identificador principal do conjunto de dados

- **Chave Estrangeira**

Uma chave primária de outra entidade.

### **Generalização/Especialização**

![Captura de Tela 2023-08-15 às 19.31.52.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_19.31.52.png)

## Relacionamentos

Entidades/Objetos, possuem relacionamento direto com outros, e devemos mapear isso primeiramente da seguinte forma:

![Captura de Tela 2023-08-15 às 19.32.34.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_19.32.34.png)

## Cardinalidade

Expressa o número de entidades que a outra entidade se relaciona. Podendo ser os seguintes:

**(0, n)**

Pode se relacionar com nenhum ou muitos da entidade B, não sendo obrigatório o relacionamento.

![Captura de Tela 2023-08-15 às 21.11.50.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_21.11.50.png)

**(0, 1)**

Pode ou não se relacionar outra uma outra entidade.

**(1, n)**

Pode se relacionar com UMA ou MAIS com a entidade relacionada, observação que não pode não conter nenhum relacionamento nesse caso.

![Captura de Tela 2023-08-15 às 21.18.39.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_21.18.39.png)

> Um empregado pode trabalhar em 0 ou muitos projetos, porém um projeto é trabalhado por um ou mais empregados.
> 

**(1, 1)**

Uma entidade se relaciona obrigatoriamente com outra, sendo usada normalmente em entidades fracas.

**(n, n)**

Muitos para muitos, esse tipo de relacionamento onde um empregado trabalha em vários projetos, e o projeto possui vários empregados trabalhando.

Esse tipo de relacionamento resulta em uma entidade assoativa como resultado do relacionamento. Essa entidade expressa ambos os relaciomentos.

![Captura de Tela 2023-08-15 às 20.45.27.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_20.45.27.png)

> Cria uma tabela para realizar o relacionamento.
> 

![Captura de Tela 2023-08-15 às 19.33.44.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_19.33.44.png)

> Note a semelhança de conjuntos também estudados em Matemática Discreta.
> 

### Entidade Fraca x Identificadora

**Fracas:** São entidades que dependem de outras para existir, sozinhas não fazem sentido.

**Identificadora:** Identificam entidades fortes.

### Cardinalidade

Serve para definirmos o numero de ocorrência de uma entidade em outra.

Para definir corretamente a cardinalidade, devemos fazer algumas perguntas e levantar alguns requisitos .

![Captura de Tela 2023-08-15 às 21.21.31.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_21.21.31.png)

**Cardinalidade mínima:** Valor mínimo de ocorrência que pode se ocorrer no relacionamento

**Cardinalidade máxima:**  Valor máximo de ocorrência que pode se ocorrer no relacionamento

**Ao levantar esses requisitos com o cliente, considere estes pontos:**

![Captura de Tela 2023-08-15 às 21.42.23.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_21.42.23.png)

## Entidade Associativa

Em relacionamentos muitos para muitos, é necessário uma expressão maior no relacionamento, feito por uma entidade(tabela) a parte, somente para isso.

![Captura de Tela 2023-08-15 às 21.44.23.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_21.44.23.png)

**Resultado:**

![Captura de Tela 2023-08-15 às 21.44.46.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_21.44.46.png)

## Resumo anotações BrModelo

![Captura de Tela 2023-08-15 às 21.45.42.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_21.45.42.png)

**O que é auto relacionamento?**

**O que é especialização?**

**O que é União?**

![Captura de Tela 2023-08-15 às 21.46.59.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-15_as_21.46.59.png)

## Fluxo

1. Seguir um fluxo baseado no diagrama acima.
2. Levantar requisitos com o usuário
3. Levantar casos de usos
4. Implementar modelo conceitual.
5. Validar com o cliente o conceitual.
6. Criar modelo lógico implementando o conceito e dinamicas do SGDB
7. Validar modelo lógico com as regras do banco.
8. Criar modelo físico.

# MySQL

## Tipos de dados do MySQL

![Captura de Tela 2023-08-22 às 19.43.35.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-22_as_19.43.35.png)

## Aula-22/08

Select pode consulta ou realizar um processamento interno no banco de dados, fazendo uso de funções.

**Criação de modelos conceituais para treinar cardialidade:**

![Captura de Tela 2023-08-22 às 21.58.32.png](Banco%20de%20Dados%205746a301c93e44d3bbcd855608df1717/Captura_de_Tela_2023-08-22_as_21.58.32.png)

- Instalar o MySql
- Seguir Slides
- Realizar Trabalhos
- Realizar projetos.

**Prática formativa 1**

**Prática formativa 2**