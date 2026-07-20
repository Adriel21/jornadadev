REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()

    LOCAL nSecreto  := 0
    LOCAL nPalpite  := 0
    LOCAL cEntrada  := ""
    LOCAL nI        := 0
    LOCAL lAcertou  := .F.

    hb_cdpSelect("UTF8EX")

    nSecreto := HB_RandomInt(1, 100)

    QOut("===== Adivinhe o número =====")
    QOut("Pensei em um número entre 1 e 100. Você tem 7 tentativas.")
    QOut("")

    FOR nI := 1 TO 7

        ACCEPT "Tentativa " + hb_ntos(nI) + "/7 - Digite seu palpite: " TO cEntrada
        nPalpite := Val(cEntrada)

        IF nPalpite == nSecreto
            lAcertou := .T.
            EXIT
        ELSEIF nPalpite < nSecreto
            QOut("O número secreto é MAIOR que " + hb_ntos(nPalpite))
        ELSE
            QOut("O número secreto é MENOR que " + hb_ntos(nPalpite))
        ENDIF

        QOut("")

    NEXT

    QOut("")
    IF lAcertou
        QOut("Parabéns! Você acertou em " + hb_ntos(nI) + " tentativa(s).")
    ELSE
        QOut("Suas tentativas acabaram!")
    ENDIF

    QOut("O número secreto era: " + hb_ntos(nSecreto))

RETURN NIL