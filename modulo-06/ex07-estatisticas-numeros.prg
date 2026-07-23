REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()
    LOCAL aNumeros := {}
    LOCAL cValor
    LOCAL nSoma := 0
    LOCAL nMedia
    LOCAL i

    hb_cdpSelect("UTF8EX")

    FOR i := 1 TO 10
        ACCEPT "Digite o " + Str(i, 2) + "º número: " TO cValor
        aAdd(aNumeros, Val(cValor))
        nSoma += Val(cValor)
    NEXT

    ASort(aNumeros)

    nMedia := nSoma / Len(aNumeros)

    ? ""
    ? "Números em ordem crescente:"
    FOR i := 1 TO Len(aNumeros)
        ?? Str(aNumeros[i], 6)
    NEXT

    ? ""
    ? "Soma  : " + Str(nSoma, 8)
    ? "Média : " + Str(nMedia, 8, 2)
    ? "Maior : " + Str(aNumeros[Len(aNumeros)], 6)
    ? "Menor : " + Str(aNumeros[1], 6)

RETURN NIL