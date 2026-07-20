REQUEST HB_CODEPAGE_UTF8EX


FUNCTION Main()
    LOCAL nNumeroUm
    LOCAL nNumeroDois
    LOCAL cOperacao

    hb_cdpSelect("UTF8EX")

    ACCEPT "Digite o primeiro número: " TO nNumeroUm
    ACCEPT "Digite o segundo número: " TO nNumeroDois
    ACCEPT "Digite a operação desejada (+, -, *, /, ^, R): " TO cOperacao

    DO CASE
        CASE cOperacao == "+"
            QOut("O resultado da soma é: " + Str(Val(nNumeroUm) + Val(nNumeroDois), 10, 2))
        CASE cOperacao == "-"   
            QOut("O resultado da subtração é: " + Str(Val(nNumeroUm) - Val(nNumeroDois), 10, 2))
        CASE cOperacao == "*"
            QOut("O resultado da multiplicação é: " + Str(Val(nNumeroUm) * Val(nNumeroDois), 10, 2))
        CASE cOperacao == "/"   
            IF Val(nNumeroDois) == 0
                QOut("Erro: Divisão por zero não é permitida.")
            ELSE
                QOut("O resultado da divisão é: " + Str(Val(nNumeroUm) / Val(nNumeroDois), 10, 2))
            ENDIF   
        CASE cOperacao == "^"
            QOut("O resultado da exponenciação é: " + Str(Val(nNumeroUm) ** Val(nNumeroDois), 10, 2))
        CASE cOperacao == "R"
            IF Val(nNumeroUm) < 0 .OR. Val(nNumeroDois) < 0
                QOut("Erro: Não é possível calcular a raiz quadrada de números negativos.")
            ELSE
                QOut("O resultado da raiz quadrada do primeiro número é: " + Str(Sqrt(Val(nNumeroUm)), 10, 2))
                QOut("O resultado da raiz quadrada do segundo número é: " + Str(Sqrt(Val(nNumeroDois)), 10, 2))
            ENDIF
        OTHERWISE
            QOut("Operação inválida. Por favor, escolha uma operação válida.")
    ENDCASE

RETURN NIL