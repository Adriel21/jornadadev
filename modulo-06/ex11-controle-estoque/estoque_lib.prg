FUNCTION CadastrarProduto(aProdutos, cCodigo, cNome, nQtd, nPreco)
    aAdd(aProdutos, {cCodigo, cNome, nQtd, nPreco})
RETURN NIL


FUNCTION ListarProdutos(aProdutos)
    LOCAL i

    IF Len(aProdutos) == 0
        ? "Nenhum produto cadastrado."
        RETURN NIL
    ENDIF

    ? "Código      Nome                Qtd      Preço"
    FOR i := 1 TO Len(aProdutos)
        ? aProdutos[i][1] + Space(6) + ;
          PadR(aProdutos[i][2], 18) + ;
          Str(aProdutos[i][3], 6) + ;
          Str(aProdutos[i][4], 10, 2)
    NEXT

RETURN NIL


FUNCTION BuscarProduto(aProdutos, cCodigo)
    LOCAL i

    FOR i := 1 TO Len(aProdutos)
        IF aProdutos[i][1] == cCodigo
            RETURN i
        ENDIF
    NEXT

RETURN 0


FUNCTION EntradaEstoque(aProdutos, cCodigo, nQtd)
    LOCAL nPos := BuscarProduto(aProdutos, cCodigo)

    IF nPos == 0
        ? "Produto não encontrado."
        RETURN NIL
    ENDIF

    aProdutos[nPos][3] += nQtd
    ? "Entrada registrada. Novo estoque: " + Str(aProdutos[nPos][3], 6)

RETURN NIL


FUNCTION SaidaEstoque(aProdutos, cCodigo, nQtd)
    LOCAL nPos := BuscarProduto(aProdutos, cCodigo)

    IF nPos == 0
        ? "Produto não encontrado."
        RETURN NIL
    ENDIF

    IF nQtd > aProdutos[nPos][3]
        ? "Estoque insuficiente. Estoque atual: " + Str(aProdutos[nPos][3], 6)
        RETURN NIL
    ENDIF

    aProdutos[nPos][3] -= nQtd
    ? "Saída registrada. Novo estoque: " + Str(aProdutos[nPos][3], 6)

RETURN NIL


FUNCTION RelatorioEstoque(aProdutos)
    LOCAL i
    LOCAL nValorItem
    LOCAL nTotalGeral := 0

    IF Len(aProdutos) == 0
        ? "Nenhum produto cadastrado."
        RETURN NIL
    ENDIF

    ? "Código      Nome                Qtd     Preço      Total"
    FOR i := 1 TO Len(aProdutos)
        nValorItem := aProdutos[i][3] * aProdutos[i][4]
        nTotalGeral += nValorItem

        ? aProdutos[i][1] + Space(6) + ;
          PadR(aProdutos[i][2], 18) + ;
          Str(aProdutos[i][3], 6) + ;
          Str(aProdutos[i][4], 10, 2) + ;
          Str(nValorItem, 12, 2)
    NEXT

    ? ""
    ? "Valor total em estoque: " + Str(nTotalGeral, 12, 2)

RETURN NIL