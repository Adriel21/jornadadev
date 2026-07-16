## Algoritmo 1 - Calcular área de um retângulo

algoritmo "calcularAreaDeUmRetangulo"

var
    base: real
    altura: real
    area: real

inicio  
    escreval("Digite a base do retângulo: ")
    leia(base)

    escreval("Digite a altura do retângulo")
    leia(altura)

    area <- base * altura

    escreval("A base do retângulo é de: ", area)

fimalgoritmo



## Algoritmo 2 - Verificar se um número é par ou ímpar

algoritmo "parOuImpar"

var
    numero: inteiro

inicio  
    escreval("Digite um numero: ")
    leia(numero)

    se(numero mod 2 = 0) entao
        escreval("O número digitado é par")
    senao
        escreval("O número digitado é ímpar")
fimalgoritmo


## Algoritmo 3 - Maior entre três números

algoritmo "maiorEntreTresNumeros"

var
    numero1: real
    numero2: real
    numero3: real
    maiorNumero: real

inicio  
    escreval("Digite o primeiro número: ")
    leia(numero1)

    maiorNumero <- numero1

    escreval("Digite o segundo número: ")
    leia(numero2)

    se(numero2 > maiorNumero) entao
        maiorNumero <- numero2

    escreval("Digite o terceiro número: ")
    leia(numero3)

    se(numero3 > maiorNumero) entao
        maiorNumero <- numero3

    escreval("O maior número entre os informados é: ", maiorNumero)

fimalgoritmo

