FUNCTION FatorialN(nN)
    LOCAL nResultado := nN

    IF nN < 0
        RETURN NIL  
    ENDIF

    IF nN == 0 .OR. nN == 1
        RETURN 1
    ENDIF

    nN := nN - 1

    WHILE nN > 1
        nResultado := nResultado * nN
        nN--
    ENDDO
RETURN nResultado

FUNCTION EhPrimo(nN)
    IF nN <= 1
        RETURN .F.
    ENDIF

    FOR nContador := 2 TO nN - 1
        IF nN % nContador == 0
            RETURN .F.
        ENDIF
    NEXT
    RETURN .T.

FUNCTION MMC(nA, nB)
    LOCAL nFatoresPrimos := {}
    LOCAL nDivisor := 2
    LOCAL nMmc := 1
    LOCAL nAuxiliarA
    LOCAL nAuxiliarB
    LOCAL nDividiu := .F.  

    WHILE nA != 1 .OR. nB != 1
        nDividiu := .F.
        
        nAuxiliarA := nA % nDivisor
        IF nAuxiliarA == 0
            nA := nA / nDivisor
            AADD(nFatoresPrimos, nDivisor)
            nDividiu := .T.
        ENDIF
        
        nAuxiliarB := nB % nDivisor
        IF nAuxiliarB == 0
            nB := nB / nDivisor
            IF nAuxiliarA != nAuxiliarB
                AADD(nFatoresPrimos, nDivisor)
            ENDIF
            nDividiu := .T.
        ENDIF

        IF !nDividiu
            nDivisor++
        ENDIF
    ENDDO

    FOR nContador := 1 TO LEN(nFatoresPrimos)
        IF nContador == 1
            nMmc := nFatoresPrimos[nContador]
        ELSE
            nMmc := nMmc * nFatoresPrimos[nContador]
        ENDIF
    NEXT

RETURN nMmc

FUNCTION MDC(nA, nB)
    LOCAL nResto
    
    nA := ABS(nA)
    nB := ABS(nB)
    
    WHILE nB != 0
        nResto := nA % nB
        nA := nB
        nB := nResto
    ENDDO
    
RETURN nA