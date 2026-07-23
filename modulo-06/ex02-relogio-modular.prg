FUNCTION Main()
    LOCAL nContador := 0
    LOCAL cHoraAtual

    DO While nContador < 30
        cHoraAtual := ObterHora()
        cHoraAtual := FormatarHora(cHoraAtual)
        ExibirHora(cHoraAtual)

        Inkey(1)
        nContador++
    ENDDO
RETURN NIL

FUNCTION ObterHora()
    LOCAL cHora := TIME()
RETURN cHora

FUNCTION FormatarHora(cHora)
    LOCAL cHH, cMM, cSS
    
    cHH := SubStr(cHora, 1, 2)
    cMM := SubStr(cHora, 4, 2)
    cSS := SubStr(cHora, 7, 2)
    
RETURN cHH + ":" + cMM + ":" + cSS

FUNCTION ExibirHora(cHora)
    @ 3, 0 SAY "Hora atual: " + cHora
RETURN NIL