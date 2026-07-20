REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()

    LOCAL cNome  := ""
    LOCAL cDisc  := ""
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0
    LOCAL cEntrada := ""
    LOCAL cContinua := ""

    hb_cdpSelect("UTF8EX")

    DO WHILE .T.

        cNome := ""
        cDisc := ""

        DO WHILE Len(Trim(cNome)) == 0
            ACCEPT "Digite o nome do aluno: " TO cNome
            IF Len(Trim(cNome)) == 0
                QOut("Nome não pode ser vazio! Tente novamente.")
            ENDIF
        ENDDO

        DO WHILE Len(cDisc) != 3 .OR. cDisc != Upper(cDisc)
            ACCEPT "Digite a disciplina (3 letras maiúsculas, ex.: MAT): " TO cDisc
            IF Len(cDisc) != 3 .OR. cDisc != Upper(cDisc)
                QOut("Disciplina inválida! Deve ter exatamente 3 letras maiúsculas.")
            ENDIF
        ENDDO

        DO WHILE .T.
            ACCEPT "Digite a nota 1 (entre 0 e 10): " TO cEntrada
            nNota1 := Val(cEntrada)
            IF nNota1 >= 0 .AND. nNota1 <= 10
                EXIT
            ENDIF
            QOut("Nota inválida! Digite um valor entre 0 e 10.")
        ENDDO

        DO WHILE .T.
            ACCEPT "Digite a nota 2 (entre 0 e 10): " TO cEntrada
            nNota2 := Val(cEntrada)
            IF nNota2 >= 0 .AND. nNota2 <= 10
                EXIT
            ENDIF
            QOut("Nota inválida! Digite um valor entre 0 e 10.")
        ENDDO

        nMedia := (nNota1 + nNota2) / 2

        QOut("")
        QOut("===== Dados do Aluno =====")
        QOut("Nome: " + Trim(cNome))
        QOut("Disciplina: " + cDisc)
        QOut("Nota 1: " + hb_ntos(nNota1))
        QOut("Nota 2: " + hb_ntos(nNota2))
        QOut("Média: " + hb_ntos(nMedia))
        QOut("")

        ACCEPT "Deseja calcular outro? (S/N): " TO cContinua

        IF Upper(cContinua) != "S"
            EXIT
        ENDIF

    ENDDO

    QOut("Programa encerrado.")

RETURN NIL