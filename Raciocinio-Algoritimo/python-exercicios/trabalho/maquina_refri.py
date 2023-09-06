## Uteis
program = True

quantidade_coca_cola = 0
quantidade_guarana = 0
quantidade_sprite = 0
quantidade_cha = 0
quantidade_agua = 0

def verificar_input(input: str):
    if not input.isdigit():
        print("Erro: Entrada inválida. Por favor, insira um número válido.")
        return False
    return True

def mostrar_linha():
    print("------------------------------------------------------")

def mostrar_produtos():
  return "1 - Coca Cola\n2 - Guaraná\n3 - Sprite\n4 - Chá Matte\n5 - Água\n"

## Processo

# def init_pedido():
   

## Admin
# def adicionar_troco():

# def recolher_dinheiro():

def add_produto(quantidade_produto: int):
  mostrar_linha()
  add_valor_produto = int(input("Digite a quantidade(min: 1 | max: 15): "))

  if quantidade_produto > 15 or quantidade_produto < 0:
    print(f"Esse produto contém {quantidade_produto} em estoque, a ação que está tentando fazer não é possivel")
  else:
    if (quantidade_produto + add_valor_produto) > 15:
      print("Não é possível adicionar mais que 15 Produtos")
    else:
      novo_valor = quantidade_produto =+ add_valor_produto
      print(f"Agora possui {novo_valor}")

def adicionar_estoque():
  mostrar_linha()
  print("Digite o produto que irá adicionar:\n")
  produto = input(mostrar_produtos())

  if verificar_input(produto):
    if produto == "1":
      add_produto(quantidade_coca_cola)
    elif produto == "2":
      add_produto(quantidade_guarana)
    elif produto == "3":
      add_produto(quantidade_sprite)
    elif produto == "4":
      add_produto(quantidade_cha)
    elif produto == "5":
      add_produto(quantidade_agua)
    else:
      print("Valor incorreto, tente novamente.")

# def remover_estoque():

def init_admin_process():
  while True:
      mostrar_linha()
      print("Você entrou como administrador, escolha entre: \n")
      opcao = input("1 - Adicionar Troco\n2 - Recolher Dinheiro\n3 - Adicionar Estoque\n4 - Remover Estoque\n5 - SAIR\n")

      if verificar_input(opcao):
        if opcao == "1":
          # adicionar_troco() 
          print("oi")
        elif opcao == "2":
          # recolher_dinheiro()
          print("oi") 
        elif opcao == "3":
          adicionar_estoque() 
        elif opcao == "4":
          # remover_estoque()
          print("oi")
        elif opcao == "5":
          break
        else:
          print("Opção inválida, digite novamente")
          continue
      

def init_admin():
  mostrar_linha()

  senha_admin = input("Digite a senha: ")

  if senha_admin == "adm123":
    init_admin_process()
  else:   
    mostrar_linha()
    print("\nPara entrar como usuário admin, você deve digitar a senha corretamente.\n")

  mostrar_linha()


## Inicio
print("Bem-vindos a máquina de refrigerantes : )")
mostrar_linha()

while program:
  opcao = input("\n1- Fazer Pedido\n2- Admin\n")
  erro = 0

  if verificar_input(opcao):
    if opcao == "1":
      init_pedido()
    elif opcao == "2":
      init_admin()
    else:
      print("Valor inválido, por favor tente novamente")
      if erro >= 5:
         program = False
      else:
        erro += 1