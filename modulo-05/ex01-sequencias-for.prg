REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()

    LOCAL i := 0

    hb_cdpSelect("UTF8EX")

    QOut("=== Letra a) Números de 1 a 100 ===")
    FOR i := 1 TO 100
        QOut(Str(i))
    NEXT

    QOut("")
    QOut("=== Letra b) Números de -50 a 50 ===")
    FOR i := -50 TO 50
        QOut(Str(i))
    NEXT

    QOut("")
    QOut("=== Letra c) Números de 80 a 5 (decrescente) ===")
    FOR i := 80 TO 5 STEP -1
        QOut(Str(i))
    NEXT

RETURN NIL