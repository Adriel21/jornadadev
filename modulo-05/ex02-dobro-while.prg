REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()

    LOCAL cEntrada := ""
    LOCAL nValor := 0

    hb_cdpSelect("UTF8EX")

    ACCEPT "Digite um número inteiro. Para sair digite um número zero ou negativo: " TO cEntrada
    nValor := Val(cEntrada)

    DO WHILE nValor > 0
        QOut("O dobro de " + Str(nValor) + " é: " + LTrim(Str(nValor * 2)))

        ACCEPT "Digite um número inteiro. Para sair digite um número zero ou negativo: " TO cEntrada
        nValor := Val(cEntrada)
    ENDDO

    QOut("Programa encerrado.")

RETURN NIL