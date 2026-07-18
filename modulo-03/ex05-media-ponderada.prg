REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()
    LOCAL nNotaUm
    LOCAL nNotaDois
    LOCAL nNotaTres
    LOCAL nNotaQuatro
    LOCAL nPesoUm := 1
    LOCAL nPesoDois := 2
    LOCAL nPesoTres := 3
    LOCAL nPesoQuatro := 4
    LOCAL nMediaPonderada

    hb_cdpSelect("UTF8EX")

    ACCEPT "Digite a primeira nota: " TO nNotaUm
    ACCEPT "Digite a segunda nota: " TO nNotaDois   
    ACCEPT "Digite a terceira nota: " TO nNotaTres
    ACCEPT "Digite a quarta nota: " TO nNotaQuatro

    nNotaUm := Val(nNotaUm)
    nNotaDois := Val(nNotaDois)
    nNotaTres := Val(nNotaTres)
    nNotaQuatro := Val(nNotaQuatro)

    nMediaPonderada := (nNotaUm * nPesoUm + nNotaDois * nPesoDois + nNotaTres * nPesoTres + nNotaQuatro * nPesoQuatro) / (nPesoUm + nPesoDois + nPesoTres + nPesoQuatro)

    QOut("A média ponderada é: " + Str(nMediaPonderada, 10, 2))
RETURN NIL