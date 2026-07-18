REQUEST HB_CODEPAGE_UTF8EX

#define PI 3.14159

FUNCTION Main()
    LOCAL nRaio
    LOCAL nAreaDoCirculo
    LOCAL nLadoA 
    LOCAL nLadoB
    LOCAL nHipotenusa
    LOCAL nPeso
    LOCAL nAltura
    LOCAL nIMC

    hb_cdpSelect("UTF8EX") 

    ACCEPT "Digite o valor do raio: " TO nRaio

    nAreaDoCirculo := AreaDoCirculo(nRaio)

    QOut("A área do círculo é: " + Str(nAreaDoCirculo, 10, 2))

    ACCEPT "Digite o valor do lado A: " TO nLadoA
    ACCEPT "Digite o valor do lado B: " TO nLadoB

    nHipotenusa := Hipotenusa(nLadoA, nLadoB)
    QOut("A hipotenusa é: " + Str(nHipotenusa, 10, 2))

    ACCEPT "Digite o valor do peso: " TO nPeso
    ACCEPT "Digite o valor da altura em metros: " TO nAltura

    nIMC := IMC(nPeso, nAltura)
    QOut("O IMC é: " + Str(nIMC, 10, 2))

RETURN NIL

FUNCTION AreaDoCirculo(nRaio)
    RETURN PI * (Val(nRaio) ** 2)

FUNCTION Hipotenusa(nLadoA, nLadoB)
    RETURN Sqrt((Val(nLadoA) ** 2) + (Val(nLadoB) ** 2))

FUNCTION IMC(nPeso, nAltura)
    RETURN Val(nPeso) / (Val(nAltura) ** 2)
