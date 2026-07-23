REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()
    LOCAL aCarrinho := {}
    LOCAL cNome, cPreco, cContinuar
    LOCAL total := 0
    LOCAL i

    hb_cdpSelect("UTF8EX")

    cContinuar := "s"

    DO WHILE Lower(cContinuar) == "s"
        ACCEPT "Nome do produto: " TO cNome
        ACCEPT "Preço: " TO cPreco

        aAdd(aCarrinho, {cNome, Val(cPreco)})

        ACCEPT "Adicionar outro item? (s/n): " TO cContinuar
    ENDDO

    ? "Itens do carrinho:"
    FOR i := 1 TO Len(aCarrinho)
        ? aCarrinho[i][1] + " - " + Str(aCarrinho[i][2], 8, 2)
        total += aCarrinho[i][2]
    NEXT

    ? "Total: " + Str(total, 10, 2)

RETURN NIL