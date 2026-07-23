REQUEST HB_CODEPAGE_UTF8EX


FUNCTION Main()
    LOCAL aDias := {"Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"}
    LOCAL cNumero
    LOCAL nNumero

    hb_cdpSelect("UTF8EX")

    ACCEPT "Digite um número de 1 a 7: " TO cNumero
    nNumero := Val(cNumero)

    IF nNumero >= 1 .AND. nNumero <= 7
        ? "O dia correspondente é: " + aDias[nNumero]
    ELSE
        ? "Número inválido! Digite um valor entre 1 e 7."
    ENDIF

RETURN NIL