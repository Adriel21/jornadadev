FUNCTION Main()
    LOCAL aAlunos := {}
    LOCAL nQtde
    LOCAL cNome, cN1, cN2, cN3, cN4, media
    LOCAL i

    ACCEPT "Quantos alunos? " TO nQtde
    nQtde := Val(nQtde)

    FOR i := 1 TO nQtde
        ACCEPT "Nome: " TO cNome
        ACCEPT "Nota 1: " TO cN1
        ACCEPT "Nota 2: " TO cN2
        ACCEPT "Nota 3: " TO cN3
        ACCEPT "Nota 4: " TO cN4

        aAdd(aAlunos, {cNome, Val(cN1), Val(cN2), Val(cN3), Val(cN4)})
    NEXT

    ? "Aprovados:"
    FOR i := 1 TO Len(aAlunos)
        media := (aAlunos[i][2] + aAlunos[i][3] + aAlunos[i][4] + aAlunos[i][5]) / 4
        IF media >= 7
            ? aAlunos[i][1] + " - " + Str(media, 5, 2)
        ENDIF
    NEXT

    ? "Reprovados:"
    FOR i := 1 TO Len(aAlunos)
        media := (aAlunos[i][2] + aAlunos[i][3] + aAlunos[i][4] + aAlunos[i][5]) / 4
        IF media < 7
            ? aAlunos[i][1] + " - " + Str(media, 5, 2)
        ENDIF
    NEXT

RETURN NIL