FUNCTION Main()
    LOCAL cNome := "Adriel"
    LOCAL cCidade := "Francisco Morato"
    LOCAL cCurso := "Harbour/ADVPL"
    LOCAL dataAtual,horaAtual

    SET DATE FORMAT "dd/mm/yyyy"   // para definir o padr∆o br
    SET CENTURY ON                  // garantir exibiá∆o do ano com 4 d°gitos

    dataAtual := Dtoc(Date())
    horaAtual := Time()

    QOut("==============================")
    QOut("  FICHA DE APRESENTAÄ«O   ")
    QOut("  " + dataAtual + " " + horaAtual)
    QOut("==============================")
    QOut("Nome: " + cNome)
    QOut("Cidade: " + cCidade)
    QOut("Curso: " + cCurso)
    QOut("==============================")
RETURN NIL