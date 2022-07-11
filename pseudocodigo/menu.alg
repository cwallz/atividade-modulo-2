Algoritmo "Atividade-modulo-2"
// Disciplina   : [Lógica de Programação]
// Professor   : Artur Brandt
// Descrição   : Criar um menu interativo para uma agência de viagens
// Autor(a)    : Carlos Wallace Pereira
// Data atual  : 02/07/2022

Var
// Seção de Declarações das variáveis
opcaoMenuIniciar : inteiro
numeroCliente: inteiro
numeroDestino : inteiro

//Vetores
vCliente : vetor [1..10,1..6] de caracter
vDestino : vetor [1..10,1..7] de caracter

//Funções
funcao mostraMenu : caracter
inicio
   escreval("Digite a opção desejada no menu abaixo para que possamos te ajudar.")
   escreval()
   escreval("Digite 1 para Cadastrar novo CLIENTE")
   escreval("Digite 2 para Cadastrar novo DESTINO")
   escreval("Digite 3 para Consultar base de CLIENTES")
   escreval("Digite 4 para Consultar base de DESTINOS")
   escreval("Digite 5 para SAIR e fechar o programa")
   escreval()
   escreva("Digite a opção escolhida: ")
   leia(opcaoMenuIniciar)
   escreval()

   escolha opcaoMenuIniciar
   caso 1
      escreval(registraCliente)
   caso 2
      escreval(registraDestino)
   caso 3
      escreval(consultaAtual)
   caso 4
      escreval(consultaAtual)
   caso 5
      escreval("Obrigado pela visita. Até logo!")
   outrocaso
      escreval("Opção inválida.")
      escreval(mostraMenu)
   fimescolha
fimfuncao

funcao registraCliente : caracter
var
   // Dados do cliente
   idCliente: inteiro
   nomeCliente : caracter
   cpfCliente : caracter
   diaNascimentoCliente : caracter
   mesNascimentoCliente : caracter
   anoNascimentoCliente : caracter
inicio
   escreval("Por favor, digite os dados do cliente")
   escreva("Nome Completo: ")
   leia(nomeCliente)
   escreva("CPF (apenas os números): ")
   leia(cpfCliente)
   escreva("Dia do nascimento: ")
   leia(diaNascimentoCliente)
   escreva("Mês do nascimento: ")
   leia(mesNascimentoCliente)
   escreva("Ano do nascimento: ")
   leia(anoNascimentoCliente)
   escreval()

   idCliente <- numeroCliente + 1
   vCliente [idCliente,1] <- numpcarac(idCliente)
   vCliente [idCliente,2] <- nomeCliente
   vCliente [idCliente,3] <- cpfCliente
   vCliente [idCliente,4] <- diaNascimentoCliente
   vCliente [idCliente,5] <- mesNascimentoCliente
   vCliente [idCliente,6] <- anoNascimentoCliente
   numeroCliente <- numeroCliente + 1
   escreval ("Cadastro registrado com sucesso!")
   escreval ("O código do cadastro de ", nomeCliente, " é: ", idCliente, "!")
   escreval ("Obrigado! ")
   escreval()
   escreval(menuContinuar)
fimfuncao

funcao registraDestino : caracter
var
   // Dados do destino
   idDestino: inteiro
   nomeDestino : caracter
   cidadeDestino : caracter
   estadoDestino : caracter
   precoDestino : caracter
   descontoDestino : caracter
   periodoDestino : caracter
inicio
   escreval("Por favor, digite os dados do destino")
   escreva("Nome: ")
   leia(nomeDestino)
   escreva("Cidade: ")
   leia(cidadeDestino)
   escreva("Estado: ")
   leia(estadoDestino)
   escreva("Preço do pacote: ")
   leia(precoDestino)
   escreva("Se promocional, digite o percentual de desconto: ")
   leia(descontoDestino)
   escreva("Quantidade de diárias: ")
   leia(periodoDestino)
   escreval()

   idDestino <- numeroDestino + 1
   vDestino [idDestino,1] <- numpcarac(idDestino)
   vDestino [idDestino,2] <- nomeDestino
   vDestino [idDestino,3] <- cidadeDestino
   vDestino [idDestino,4] <- estadoDestino
   vDestino [idDestino,5] <- precoDestino
   vDestino [idDestino,6] <- descontoDestino
   vDestino [idDestino,7] <- periodoDestino
   numeroDestino <- numeroDestino + 1
   escreval ("Cadastro registrado com sucesso!")
   escreval ("O código do cadastro de ", nomeDestino, " é: ", idDestino, "!")
   escreval ("Obrigado! ")
   escreval()
   escreval(menuContinuar)
fimfuncao

funcao menuContinuar : caracter
var
   opcaoMenuContinuar : inteiro
inicio
   escreval("O que você gostaria de fazer agora?")
   escreval()
   escolha opcaoMenuIniciar
   caso 1
      escreval ("Digite 1 para registrar outro CLIENTE")
   caso 2
      escreval ("Digite 1 para registrar outro DESTINO")
   outrocaso
      //Não tem outro caso.
   fimescolha

   escreval("Digite 2 para VOLTAR ao menu principal")
   escreval("Digite 3 para SAIR e fechar o programa")
   escreval()
   escreva("Digite a opção escolhida: ")
   leia(opcaoMenuContinuar)
   escreval()
   escolha opcaoMenuContinuar
   caso 1
      escolha opcaoMenuIniciar
      caso 1
         escreval(registraCliente)
      caso 2
         escreval(registraDestino)
      outrocaso
         //Não tem outro caso.
      fimescolha
   caso 2
      escreval(mostraMenu)
   caso 3
      escreval("Obrigado pela visita. Até logo!")
   outrocaso
      escreval("Opção inválida.")
      escreval(menuContinuar)
   fimescolha
fimfuncao

funcao consultaAtual : inteiro
var
   idConsulta : inteiro
   idNovaConsulta : inteiro
inicio
   escolha opcaoMenuIniciar
      caso 3
         escreval("Qual cliente você gostaria de consultar em nosso banco de dados?")
         escreva("Por favor, digite o código do cliente:")
         leia(idConsulta)
         se (idConsulta > 0) e (idConsulta <= numeroCliente) entao
            escreval()
            escreval("Segue os dados do cliente desejado. ")
            escreval("Nome do cliente: ", vCliente[idConsulta,2])
            escreval("CPF: ", vCliente[idConsulta,3])
            escreval("Data de nascimento: ", vCliente[idConsulta,4], "/", vCliente[idConsulta,5], "/", vCliente[idConsulta,6])
            escreval()
            escreval("O que deseja fazer agora?")
            escreval()
            escreval("Digite 1 para realizar NOVA CONSULTA")
            escreval("Digite 2 para VOLTAR ao menu principal")
            escreval("Digite 3 para SAIR e fechar o programa")
            leia(idNovaConsulta)
            escolha idNovaConsulta
            caso 1
               escreval(consultaAtual)
            caso 2
               escreval(mostraMenu)
            caso 3
               escreval("Obrigado pela visita. Até logo!")
            outrocaso
               escreval("Opção inválida.")
               escreval(mostraMenu)
            fimescolha
         senao
            escreval()
            escreval("Opção inválida. Não encontramos nenhum registro desse código nessa seção do nosso banco de dados.")
            escreval(mostraMenu)
         fimse
      caso 4
         escreval("Qual destino você gostaria de consultar em nosso banco de dados?")
         escreva("Por favor, digite o código do destino:")
         leia(idConsulta)
         se (idConsulta > 0) e (idConsulta <= numeroDestino) entao
            escreval()
            escreval("Segue os dados do destino solicitado. ")
            escreval("Nome do destino: ", vDestino[idConsulta,2])
            escreval("Cidade: ", vDestino[idConsulta,3])
            escreval("Estado: ", vDestino[idConsulta,4])
            escreval("Preço do pacote: ", vDestino[idConsulta,5])
            escreval("Desconto: ", vDestino[idConsulta,6])
            escreval("Diárias inclusas: ", vDestino[idConsulta,7])
            escreval()
            escreval("O que deseja fazer agora?")
            escreval()
            escreval("Digite 1 para realizar NOVA CONSULTA")
            escreval("Digite 2 para VOLTAR ao menu principal")
            escreval("Digite 3 para SAIR e fechar o programa")
            leia(idNovaConsulta)
            escolha idNovaConsulta
            caso 1
               escreval(consultaAtual)
            caso 2
               escreval(mostraMenu)
            caso 3
               escreval("Obrigado pela visita. Até logo!")
            outrocaso
               escreval("Opção inválida.")
               escreval(mostraMenu)
            fimescolha
         senao
            escreval()
            escreval("Opção inválida. Não encontramos nenhum registro desse código nessa seção do nosso banco de dados.")
            escreval(mostraMenu)
         fimse
   fimescolha
fimfuncao

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Seja bem vindo ao WALLZ TOUR!")
   escreval(mostraMenu)
Fimalgoritmo