REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()
    LOCAL cCodigoComPrefixo := "ABC-123"

    hb_cdpSelect("UTF8EX") 
    
    // Apenas = compara os caracteres da esquerda até o tamanho dos caracteres da direita. Portanto, será Verdadeiro
    IF cCodigoComPrefixo = "ABC"
        QOut(.T.)
    ENDIF

    // == Compara exatamente os dois valores. Portanto, será Falso
    IF cCodigoComPrefixo == "ABC"
        QOut(.F.)
    ENDIF
RETURN NIL