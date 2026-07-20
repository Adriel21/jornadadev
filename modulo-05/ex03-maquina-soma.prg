REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()

    LOCAL cEntrada := ""
    LOCAL nValor   := 0
    LOCAL nTotal   := 0     
    LOCAL nQtd     := 0   

    hb_cdpSelect("UTF8EX")

    DO WHILE .T.
        ACCEPT "Digite um valor (0 para sair): " TO cEntrada
        nValor := Val(cEntrada)

        IF nValor == 0
            EXIT
        ENDIF

        nTotal += nValor
        nQtd++
    ENDDO

    QOut("")
    QOut("Soma total dos valores: " + hb_ntos(nTotal))
    QOut("Quantidade de valores somados: " + hb_ntos(nQtd))

RETURN NIL