REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()
    LOCAL aMeses := { "Janeiro", "Fevereiro", "Março", "Abril", ;
                      "Maio", "Junho", "Julho", "Agosto", ;
                      "Setembro", "Outubro", "Novembro", "Dezembro" }

    LOCAL nMes := 0

    hb_cdpSelect("UTF8EX")

    ACCEPT "Digite o número do mês (1 a 12): " TO nMes

    nMes := Val(nMes)

    DO CASE
        CASE nMes >= 1 .AND. nMes <= 12
            QOut(aMeses[nMes])
        OTHERWISE
            QOut("Número do mês inválido. Por favor, digite um número entre 1 e 12.")
    ENDCASE

RETURN NIL