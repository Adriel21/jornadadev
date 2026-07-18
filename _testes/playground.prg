// #define NOME "Adriel" // Constante

// FUNCTION Main()
//     LOCAL nNumero1 := 5
//     LOCAL nNumero2 := 10

//     QOut(NOME)
//     IF nNumero1 > nNumero2
//         QOut(.T.)
//     ELSE
//         QOut(.F.)
//     ENDIF

//     IF nNumero1 != 5 .AND. nNumero2 > 2
//         QOut(.T.)
//     ELSE
//         QOut(.F.)
//     ENDIF

//     ? (7 >= 5)

//     ? CALCMEDIA()
// RETURN NIL


// FUNCTION CALCMEDIA()
//     LOCAL nNota1, nNota2
//     LOCAL nMedia
//     LOCAL participacaoExtra := .T.
//     ACCEPT "Digite a primeira nota: " TO nNota1
//     ACCEPT "Digite a segunda nota: " TO nNota2

//     nMedia := (nNota1 + nNota2) / 2

//     IF participacaoExtra == .T.
//         nMedia += 1
//     ENDIF

// RETURN nMedia



// FUNCTION Main()
//     LOCAL nTotal := 0
//     LOCAL nI := 1, nNum, nQtd
    
//     ACCEPT "Quantos n£meros? " TO nQtd
//     nQtd := VAL(nQtd)

//     WHILE nI <= nQtd
//         ACCEPT "N£mero: " TO nNum
//         nTotal += VAL(nNum)
//         nI++
//     ENDDO
//     QOut("Soma: " + STR(nTotal))
// RETURN NIL



// FUNCTION Main()
//     ACCEPT "Tabuada de qual n£mero? " TO nNum
//     nNum := VAL(nNum)

//     FOR nI := 1 TO 10
//         QOut(ALLTRIM(Str(nNum)) + " x " + ALLTRIM(Str(nI)) + " = " + ALLTRIM(Str(nNum * nI)))
//     NEXT
// RETURN NIL


// FUNCTION Main()
//     FOR nI := 1 TO 100
//         IF nI == nBusca
//             EXIT
//         ENDIF
//     next

//     FOR nI := 1 TO 20
//         IF Mod(nI, 2) == 0
//             LOOP
//         ENDIF
//         QOut(Str(nI))
//     NEXT

// FUNCTION Main()
//     LOCAL cInput, cNota
//     WHILE .T.
//         ACCEPT "Nota (0 a 10): " TO cInput
//         cNota := VAL(cInput)
//         IF cNota >= 0 .AND. cNota <= 10
//             EXIT
//         ENDIF
//         QOut("Nota inv lida! Tente de novo.")
//     ENDDO
// RETURN NIL


FUNCTION Main()
    LOCAL nTentativas := 0
    LOCAL nSenha := "1234"
    WHILE nTentativas < 3 
        ACCEPT "Senha: " TO cDigitada
        nTentativas++
        IF cDigitada == cSenha
            QOut("Acesso permitido!")
            RETURN NIL
        ENDIF
        QOut("Inv lida! Tentativa " + STR(nTentativas) + "/3")
    ENDDO
    QOut("Sistema bloqueado")
RETURN NIL