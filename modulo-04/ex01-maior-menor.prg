REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()
    LOCAL nNumeroUm
    LOCAL nNumeroDois
    LOCAL nMaiorNumero
    LOCAL nMenorNumero

    hb_cdpSelect("UTF8EX")

    ACCEPT "Digite o primeiro número: " TO nNumeroUm
    ACCEPT "Digite o segundo número: " TO nNumeroDois

    nNumeroUm := Val(nNumeroUm)
    nNumeroDois := Val(nNumeroDois)

    IF nNumeroUm == nNumeroDois
        QOut("Os dois números são iguais.")
    END

    IF nNumeroUm > nNumeroDois
        qOut("O maior número é: " + Str(nNumeroUm, 10, 2))
        qOut("O menor número é: " + Str(nNumeroDois, 10, 2))
    ELSEIF nNumeroDois > nNumeroUm
        qOut("O maior número é: " + Str(nNumeroDois, 10, 2))
        qOut("O menor número é: " + Str(nNumeroUm, 10, 2))
    END

RETURN NIL