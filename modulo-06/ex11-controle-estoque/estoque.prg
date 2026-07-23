REQUEST HB_CODEPAGE_UTF8EX


FUNCTION Main()
    LOCAL aProdutos := {}
    LOCAL nOpcao := -1

    hb_cdpSelect("UTF8EX")

    DO WHILE nOpcao != 0
        nOpcao := ExibirMenu()

        DO CASE
            CASE nOpcao == 1
                Cadastrar(aProdutos)

            CASE nOpcao == 2
                ListarProdutos(aProdutos)

            CASE nOpcao == 3
                Entrada(aProdutos)

            CASE nOpcao == 4
                Saida(aProdutos)

            CASE nOpcao == 5
                Buscar(aProdutos)

            CASE nOpcao == 6
                RelatorioEstoque(aProdutos)

            CASE nOpcao == 0
                ? "Encerrando o sistema."

            OTHERWISE
                ? "Opção inválida."
        ENDCASE
    ENDDO

RETURN NIL


FUNCTION ExibirMenu()
    LOCAL cOpcao

    ? ""
    ? "1 - Cadastrar produto"
    ? "2 - Listar produtos"
    ? "3 - Entrada de estoque"
    ? "4 - Saída de estoque"
    ? "5 - Buscar produto por código"
    ? "6 - Relatório de estoque"
    ? "0 - Sair"

    ACCEPT "Escolha uma opção: " TO cOpcao

RETURN Val(cOpcao)


FUNCTION Cadastrar(aProdutos)
    LOCAL cCodigo, cNome, cQtd, cPreco

    ACCEPT "Código: " TO cCodigo

    IF BuscarProduto(aProdutos, cCodigo) > 0
        ? "Já existe um produto com esse código."
        RETURN NIL
    ENDIF

    ACCEPT "Nome: " TO cNome
    ACCEPT "Quantidade inicial: " TO cQtd
    ACCEPT "Preço unitário: " TO cPreco

    CadastrarProduto(aProdutos, cCodigo, cNome, Val(cQtd), Val(cPreco))
    ? "Produto cadastrado com sucesso."

RETURN NIL


FUNCTION Entrada(aProdutos)
    LOCAL cCodigo, cQtd

    ACCEPT "Código do produto: " TO cCodigo
    ACCEPT "Quantidade de entrada: " TO cQtd

    EntradaEstoque(aProdutos, cCodigo, Val(cQtd))

RETURN NIL


FUNCTION Saida(aProdutos)
    LOCAL cCodigo, cQtd

    ACCEPT "Código do produto: " TO cCodigo
    ACCEPT "Quantidade de saída: " TO cQtd

    SaidaEstoque(aProdutos, cCodigo, Val(cQtd))

RETURN NIL


FUNCTION Buscar(aProdutos)
    LOCAL cCodigo
    LOCAL nPos

    ACCEPT "Código do produto: " TO cCodigo
    nPos := BuscarProduto(aProdutos, cCodigo)

    IF nPos == 0
        ? "Produto não encontrado."
    ELSE
        ? "Produto encontrado na posição " + Str(nPos, 3)
        ? "Nome: " + aProdutos[nPos][2]
        ? "Quantidade: " + Str(aProdutos[nPos][3], 6)
        ? "Preço: " + Str(aProdutos[nPos][4], 10, 2)
    ENDIF

RETURN NIL