FUNCTION Main()
/* 
LOCAL - ideal
PRIVATE - dados ..
PUBLIC - 
STATIC - 
*/
    PUBLIC nNumero := 50
    Operacoes()
    Soma()     

RETURN NIL

FUNCTION Operacoes() 
    PRIVATE nNumero := 10

    Soma()
    Subtrai()

RETURN NIL       

FUNCTION Soma()
    //LOCAL nNumero := 20
    QOut(nNumero)
    QOut("Função Soma")
RETURN NIL

FUNCTION Subtrai()
    //LOCAL nNumero := 30
    QOut(nNumero)  
    QOut("Função Substrai")
RETURN NIL