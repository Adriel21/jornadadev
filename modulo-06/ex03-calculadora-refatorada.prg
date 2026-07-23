REQUEST HB_CODEPAGE_UTF8EX


FUNCTION Main()
    LOCAL aNumeros := {}
    LOCAL cOpcao := "S"
    LOCAL nNumero
    LOCAL cOperacao
    LOCAL nContador := 0


    hb_cdpSelect("UTF8EX")

    ACCEPT "Qual operação deseja fazer? +, -, *, /, ^, R: " TO cOperacao

    IF cOperacao == "+" .OR. cOperacao == "-"
        DO WHILE Upper(cOpcao) == "S"
            ACCEPT "Digite um número para a operação: " TO nNumero
            AADD(aNumeros, Val(nNumero))

            ACCEPT "Deseja adicionar mais um número para a operação? Responda S para (Sim) e N para (Não): " TO cOpcao
        ENDDO
    ELSEIF  cOperacao == "R"
        ACCEPT "Digite um número para encontrar o quadrado: " TO nNumero
        AADD(aNumeros, Val(nNumero))
    ELSEIF cOperacao == "*" .OR. cOperacao == "^" .OR. cOperacao == "/"
        DO WHILE nContador < 2
            ACCEPT "Digite um número para a operação: " TO nNumero
            AADD(aNumeros, Val(nNumero))

            nContador++
        ENDDO
    ELSE 
        QOut("Operação inválida!")

    RETURN NIL
    ENDIF

    QOut(Operacao(cOperacao, aNumeros))

RETURN NIL

FUNCTION Operacao(cOperacao, aNumeros)
    LOCAL cResultado := "O resultado da operação de " + cOperacao + " é de: "
    LOCAL uResultadoDiv   

    DO CASE
        CASE cOperacao == "+"
            cResultado := cResultado + Str( Soma(aNumeros) )
        CASE cOperacao == "-"
            cResultado := cResultado + Str( Subtracao(aNumeros) )
        CASE cOperacao == "*"
            cResultado := cResultado + Str( Multiplicacao(aNumeros) )
        CASE cOperacao == "/"
            uResultadoDiv := Divisao(aNumeros)
            IF uResultadoDiv == .F.
                cResultado := cResultado + "Erro! Divisão por zero não é permitida."
            ELSE
                cResultado := cResultado + Str( uResultadoDiv, 10, 2 )
            ENDIF
        CASE cOperacao == "^"
            cResultado := cResultado + Str( Exponenciacao(aNumeros) )
        CASE cOperacao == "R"
            cResultado := cResultado + RaizQuadrada(aNumeros)
    ENDCASE

RETURN cResultado

FUNCTION Soma(aNumeros)
    LOCAL nResultadoSoma := 0
    FOR nContador := 1 TO LEN(aNumeros)
        nResultadoSoma := nResultadoSoma + aNumeros[nContador] 
    NEXT
RETURN nResultadoSoma

FUNCTION Subtracao(aNumeros)
    LOCAL nResultadoSub := 0
    FOR nContador := 1 TO LEN(aNumeros)
        IF nContador == 1
            nResultadoSub := aNumeros[nContador]
        ELSE 
            nResultadoSub := nResultadoSub - aNumeros[nContador]
        ENDIF    
    NEXT
RETURN nResultadoSub


FUNCTION Multiplicacao(aNumeros)
    LOCAL nResultadoMulti := aNumeros[1] * aNumeros[2]

RETURN nResultadoMulti


FUNCTION Divisao(aNumeros)
    LOCAL nResultadoDiv

    IF aNumeros[2] == 0
        RETURN .F.
    ENDIF

    nResultadoDiv := aNumeros[1] / aNumeros[2]

RETURN nResultadoDiv

FUNCTION Exponenciacao(aNumeros)
    LOCAL nResultadoExpo := aNumeros[1] ^ aNumeros[2]

RETURN nResultadoExpo

FUNCTION RaizQuadrada(aNumeros)
    LOCAL nResultadoRaiz := Str(Sqrt(aNumeros[1]), 10, 2)
   
RETURN nResultadoRaiz
