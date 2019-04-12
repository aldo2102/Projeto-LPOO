Algoritmo "Menu"
Var
   n1,n2,l,result,mi,mm,mf,dividindooo :real
   menu,x,contador,idade,a,b,c,homem,mulher,number,guia,mais,tr,jr,k,resultt:inteiro
   sexo,valor,god :caracter
   numeral,elementos,maior,menor,ajuda,acc,p,morse:inteiro
   casos,numerador,po,x1,x2,resposta,ndecimal,nbinario:inteiro
   //----------------INICIO FUNCAO QUESTAO 1------------------------------------
funcao questao1(num1:inteiro;num2:inteiro):real
Inicio
   se (n2=0) então
      escreval("Dados invalidos, tente novamente")
   senao
      l<-(n1/n2)
   fimse
   retorne l
fimfuncao
//--------------- FIM FUNCAO QUESTAO 1----------------------------------------
//----------------INICIO PROCEDIMENTO QUESTAO 2-------------------------------
procedimento questao2(num1:inteiro)
inicio
   enquanto (x<=0) faça //Bloquear entrada de dados invalidos
      escreval("Dado invalido, tente novamente!")
      escreval(" Digite a quantidade de pessoas:")
      leia(x)
   fimenquanto
   Para contador de 1 ate x faca
      //estrutura de repeticao para atingir a quantidade de pessoas maxima
      escreval("Digite a idade da pessoa",contador,":")
      leia(idade)
      enquanto (idade<=0) faça //bloquear numero negativo ou caracter
         escreval("Dado invalido, tente novamente")
         escreval("Digite a idade da pessoa",contador,":")
         leia(idade)
      fimenquanto
      escreval("Digite o sexo da pessoa",contador,"(usando M ou F):")
      leia(sexo)
      enquanto (sexo<>"m") e (sexo<>"f") e (sexo<>"M") e (sexo<>"F") faça
         //usei o enquanto acima para bloquear entrada de opcao sexo invalido
         escreval("sexo invalido, tente novamente")
         escreval("Digite o sexo da pessoa:",contador,"(usando M ou F)")
         leia(sexo)
      fimenquanto
      se (sexo = "m") ou (sexo ="M") então
         homem<-(homem+1)
         a<-idade+a
      fimse
      se (sexo = "f") ou  (sexo = "F") então
         mulher<-(mulher+1)
         b<-idade+b
      fimse
      c<-idade+c
   fimpara
   se (b>0) então
      mf<- (b/mulher)
   fimse
   se (a>0) então
      mm<- (a/homem)
   fimse
   mi<- (c/x)
   escreval ("A media das idades é:",mi)
   escreval ("A media das idades do sexo masculino é:",mm)
   escreval ("A media das idades do  sexo femenino é:",mf)
fimprocedimento
//-----------------FIM PROCEDIMENTO QUESTÃO 2-------------------------------
//-----------------INICIO FUNCAO QUESTAO 3----------------------------------
procedimento questao3(num1:inteiro)
inicio
   guia<-0
   tr<-2 //recebe 2 porque numero 1 nao e primo
   jr<-1
   se number>0 entao
      enquanto (tr<=number) faça
         enquanto jr <=tr faça
            se (tr mod jr = 0) entao
               //se o resto da divisao entre as variaveis for 0 entao e primo
               guia<-guia+1
            fimse
            jr<-jr+1
         fimenquanto
         se guia = 2 entao
            //somente quando a variavel guia for 2, o numero sera primo guardando
            // o valor dentro de outra variavel K
            escreval(tr)
            k<-k+tr
         fimse
         tr<-tr+1
         jr<-1
         guia<-0
      fimenquanto
      escreval (" A soma de todos os numeros primos é",k)
   senão
      escreval("Numero invalido,somente numero positivo")
   fimse
fimprocedimento
//-----------------FIM FUNCAO QUESTAO 3---------------------------------------
//-----------------INICIO FUNCAO QUESTAO 4------------------------------------
procedimento questao4(num1:inteiro)
inicio
   se elementos >0 então
      Para ajuda de 1 ate elementos passo 1 faça:
         //estrutura de repeticao para alcancar o n maximo de elementos
         Escreval ("Digite seu numero:")
         leia(numeral)
         p<-p+numeral
         se ajuda =1 então
            maior<-numeral
            menor<-numeral
         fimse
         se numeral>maior então
            maior<-numeral
         senão
            se numeral<menor então
               menor<-numeral
            fimse
         fimse
         c<-c+1 //variavel usada pra calcular a media posteriomente
      fimpara
      dividindooo<- (p)/c
      escreval("O seu menor numero é:",menor)
      escreval("O seu maior numero é:",maior)
      escreval("A media dos numeros é:",dividindooo)
      dividindooo<-0
      p<-0
      c<-0
   senão //bloquar a entrada de dados com numeros negativos ou letras
      escreval("Erro,somente numeros positivos")
   fimse
fimprocedimento

//------------------FIM FUNCAO QUESTAO 4--------------------------------------
//----------------------INICIO FUNCAO QUESTAO 5-------------------------------
procedimento questao5(num1:inteiro)
inicio
   enquanto morse<=0 faca
      escreval("Dado invalido, insira o numero novamente")
      //bloquar a entrada de dados errados
      escreval("Digite um numero de 0 a 20 e veja seu morse:")
      leia(morse)
   fimenquanto
   escolha (morse)
   caso 4
      escreval("O seu codigo morse é: ....-")
   caso 3
      escreval("O seu codigo morse é: ...--")
   caso 7
      escreval("O seu codigo morse é: --...")
   caso 1
      escreval("O seu codigo morse é: .----")
   caso 2
      escreval("O seu codigo morse é: ..---")
   caso 5
      escreval("O seu codigo morse é: .....")
   caso 6
      escreval("O seu codigo morse é: -....")
   caso 8
      escreval("O seu codigo morse é: ---..")
   caso 9
      escreval("O seu codigo morse é: ----.")
   caso 10
      escreval ("O seu codigo morse é: .---- -----")
   caso 0
      escreval ("O seu codigo morse é: -----")
   caso 11
      escreval ("O seu codigo morse é: .---- .----")
   caso 12
      escreval ("O seu codigo morse é: .---- ..---")
   caso 13
      escreval ("O seu codigo morse é: .---- ...--")
   caso 14
      escreval("O seu codigo morse é: .---- ....-")
   caso 15
      escreval ("O seu codigo morse é: .---- .....")
   caso 16
      escreval ("O seu codigo morse é: .---- -....")
   caso 17
      escreval ("O seu codigo morse é: .---- --...")
   caso 18
      escreval("O seu codigo morse é: .---- ---..")
   caso 19
      escreval("O seu codigo morse é: .---- ----.")
   caso 20
      escreval ("O seu codigo morse é: ..--- -----")
   outrocaso
      escreval("Dado invalido")
   fimescolha
fimprocedimento
//----------------------------FIM FUNCAO QUESTAO 5---------------------
//----------------------------INICIO FUNCAO QUESTAO 6
procedimento questao6(num6:inteiro)
Inicio
   enquanto casos<=0 faça
      //enquanto usado para bloquear e repetir ate entrada ser valida
      escreval("Informação invalida, tente novamente")
      escreva("Digite o numero de casos:")
      leia(casos)
   fimenquanto
   para numerador de 1 ate casos faça
      escreval("O caso",numerador," é binario ou decimal?(Responda usando B ou D)")
      leia(valor)
      enquanto (valor<>"B") e (valor<>"b") e (valor <>"D") e (valor<>"d") faça
         //bloquear opçao de escolha invalidas
         escreval("Dado invalido,digite novamente.")
         escreval("O caso",numerador," é binarario ou decimal?(Responda usando B ou D)")
         leia(valor)
      fimenquanto
      se (valor="B") ou (valor="b") então
         //estrutura de selacao para identificar binario
         Escreval("Digite o numero binario, preenchendo as lacunas vazias com 0")
         para x1 de 7 ate 0 passo -1 faça
            //Usei essa repeticao para pedir 8 numeros binarios
            escreva("Digite o digito " ,8-x1,":(usando 0 ou 1 somente)")
            leia(po)
            enquanto (po<0) ou (po>1) faca
               escreval("Dado invalido,tente novamente")
               escreva("Digite o digito " ,8-x1,":(usando 0 ou 1 somente)")
               leia(po)
            fimenquanto
            se (po=1) então
               //se o numero digitado for 1,dependendo da posicao ira guarda o valor
               resposta <-1
               para x2 de 1 ate x1 faca
                  //apos x2 esta com a "localizaçao" de onde o valor do binario
                  //ira ser verdadeiro, criei uma repeticao para converte o numero
                  // de acordo em qual algorismo ele esta sendo colocado
                  resposta<-resposta*2
                  //calculo realizado para converte binario em decimal dentro
                  // de uma estrura de repeticao
               fimpara
               ndecimal<-ndecimal+po*resposta
            fimse
         fimpara
         escreval("O seu numero convertido é:",ndecimal)
      fimse
      Se (valor="D") ou (valor="d") então
         //estrutura de selecao para identificar decimal
         resposta<-0
         escreval("Digite o numero que será convertido em binário:")
         leia(resposta)
         nbinario<-resposta
         enquanto resposta <=0 faça
            //bloquear entrada de numeros negativos
            escreval("Dado invalido,digite novamente.")
            escreval("Digite o numero que será convertido em binário:")
            leia(resposta)
         fimenquanto
         enquanto resposta>0 faça
            se (resposta mod 2) = 0 então
               god<-"0"+god
               //Se o resto da divisao do numero digitado for 0
               // entao a variavel recebera 0

            senão
               god<-"1"+god //se for ao contrario ira receber 1
            fimse
            resposta<-resposta div 2 //resposta recebe cociente dividido por 2
            // para sair do laco de repeticao
         fimenquanto
         escreval(nbinario, "=", god)
      fimse
   fimpara
fimprocedimento
//-------------------------------- FIM FUNCAO QUESTAO 6------------------------
Inicio
   repita
      escreval("MENU")
      escreval("1.Divisão")
      escreval("2.Faixa etária")
      escreval("3.Numéros primos")
      escreval("4.Retorne o maior,menor e média")
      escreval("5.Código morse")
      escreval("6.Mudança de base")
      escreval("7.Sair")
      escreva("Escolha a opção:")
      leia(menu)
      limpatela
      escolha (menu)
      caso 1
         escreval("Digite dois numeros para efetuar a divisão:")
         leia(n1,n2)
         result<-questao1(n1,n2)
         escreval(" O resultado é:",result)
      caso 2
         escreval(" Digite a quantidade de pessoas:")
         leia(x)
         questao2(x)
      caso 3
         escreva("Digite um numero e veja a soma de todos os seus primos:")
         leia(number)
         questao3(number)
      caso 4
         Escreval("Digite a quantidade de elementos:")
         leia(elementos)
         questao4(elementos)
      caso 5
         escreval("Digite um numero de 0 a 20 e veja seu morse:")
         leia(morse)
         questao5(morse)
      caso 6
         escreva("Digite o numero de casos:")
         leia(casos)
         questao6(casos)
      caso 7
         escreval("Programa finalizado")
      outrocaso
         escreval("Erro,tente novamente ")
      fimescolha
   ate (menu=7)
Fimalgoritmo