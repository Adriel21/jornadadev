REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()
    LOCAL nIdade := 0
    LOCAL nNumeroDependentes := 0
    LOCAL nValorPlano := 0.00
    LOCAL nAdicionalPorDependente := 0.00

    hb_cdpSelect("UTF8EX")

    ACCEPT "Digite a idade: " TO nIdade
    ACCEPT "Digite o número de dependentes: " TO nNumeroDependentes

    nIdade := Val(nIdade)
    nNumeroDependentes := Val(nNumeroDependentes)

    IF nIdade <= 25
        nValorPlano := 180.00
    ELSEIF nIdade >= 26 .AND. nIdade <= 40
        nValorPlano := 240.00
    ELSEIF nIdade >= 41 .AND. nIdade <= 60  
        nValorPlano := 380.00
    ELSE
        nValorPlano := 520.00
    ENDIF

    nAdicionalPorDependente := nNumeroDependentes * 90.00

    nValorPlano := nValorPlano + nAdicionalPorDependente

    QOut("O valor mensal do seu plano de saúde é: " + Str(nValorPlano, 10, 2))

RETURN NIL