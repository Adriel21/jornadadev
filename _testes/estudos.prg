#define NOME "Adriel" // Constante

FUNCTION Main()
    LOCAL nNumero1 := 5
    LOCAL nNumero2 := 10

    QOut(NOME)
    IF nNumero1 > nNumero2
        QOut(.T.)
    ELSE
        QOut(.F.)
    ENDIF

    IF nNumero1 != 5 .AND. nNumero2 > 2
        QOut(.T.)
    ELSE
        QOut(.F.)
    ENDIF
RETURN NIL