REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()
    LOCAL cNome 
    LOCAL dDataNascimento
    LOCAL nPreco
    LOCAL nDesconto := 0.00
    LOCAL nTotal
    LOCAL nIdade

    hb_cdpSelect("UTF8EX") 

    ACCEPT "Digite o nome do cliente: " TO cNome
    ACCEPT "Digite a data de nascimento (dd/mm/aaaa): " TO dDataNascimento
    ACCEPT "Digite o preço do produto: " TO nPreco

    nPreco := Val(nPreco)
    dDataNascimento := CTOD(dDataNascimento)
    nTotal := nPreco
    nIdade := (Date() - dDataNascimento) / 365

    IF nIdade >= 60
        nDesconto := nPreco * 0.125
        nTotal := nPreco - nDesconto
    ENDIF

    QOut("Resumo:")
    QOut("Nome do cliente: " + cNome)
    QOut("Idade: " + Str(nIdade, 10, 0))
    Qout("Preço do produto: " + Str(nPreco, 10, 2))
    QOut("Desconto aplicado: " + Str(nDesconto, 10, 2))
    QOut("Total a pagar: " + Str(nTotal, 10, 2))

RETURN NIL