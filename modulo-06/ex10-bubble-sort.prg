REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()
    LOCAL aNumeros := {}
    LOCAL cValor
    LOCAL i

    hb_cdpSelect("UTF8EX")

    FOR i := 1 TO 10
        ACCEPT "Digite o " + Str(i, 2) + "º número: " TO cValor
        aAdd(aNumeros, Val(cValor))
    NEXT

    BubbleSort(aNumeros)

    ? "Array ordenado:"
    FOR i := 1 TO Len(aNumeros)
        ?? Str(aNumeros[i], 6)
    NEXT

RETURN NIL


FUNCTION BubbleSort(aVetor)
    LOCAL i, j, temp
    LOCAL n := Len(aVetor)

    FOR i := 1 TO n - 1
        FOR j := 1 TO n - i
            IF aVetor[j] > aVetor[j + 1]
                temp := aVetor[j]
                aVetor[j] := aVetor[j + 1]
                aVetor[j + 1] := temp
            ENDIF
        NEXT
    NEXT

RETURN NIL