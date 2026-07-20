FUNCTION Main()
    LOCAL nSalarioAtual
    LOCAL nPercentualReajuste := 0
    LOCAL nSalarioReajustado := 0

    ACCEPT "Digite o salário atual: " TO nSalarioAtual

    nSalarioAtual := Val(nSalarioAtual)

    IF nSalarioAtual < 1000
        nPercentualReajuste := 0.15
    ELSEIF nSalarioAtual >= 1000 .AND. nSalarioAtual <= 2000
        nPercentualReajuste := 0.12
    ELSEIF nSalarioAtual > 2000 .AND. nSalarioAtual <= 4000
        nPercentualReajuste := 0.8
    ELSE
        nPercentualReajuste := 0.05
    ENDIF

    nSalarioReajustado := nSalarioAtual + (nSalarioAtual * nPercentualReajuste)

    QOut("O novo Salário com o reajuste é de: " + Str(nSalarioReajustado, 10, 2))

RETURN NIL