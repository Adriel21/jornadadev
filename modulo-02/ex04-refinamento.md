## Refinamento sucessivo

NÍVEL 1 (visão geral)

1. Inicializar o sistema
2. Registrar os itens da compra
3. Calcular o subtotal
4. Aplicar desconto (se tiver cartão fidelidade) e mostrar o total


NÍVEL 2 (detalhado)

1. Inicializar o sistema
   1.1 lista de itens = vazia
   1.2 subtotal = 0
   1.3 perguntar se cliente tem cartão fidelidade (sim/não)

2. Registrar os itens
   Repetir enquanto tiver item:
   2.1 ler código do produto
   2.2 ler quantidade
   2.3 ler preço unitário
   2.4 valor_item = quantidade * preço
   2.5 somar valor_item no subtotal
   2.6 adicionar item na lista
   2.7 perguntar "mais algum item?" -> se não, parar o loop

3. Calcular o subtotal
   3.1 subtotal já foi somado no passo 2.5, só guarda o valor final

4. Aplicar desconto e mostrar total
   4.1 se tem cartão fidelidade:
       desconto = subtotal * 0.05
       total = subtotal - desconto
       mostrar "desconto: R$ 12,50" (exemplo)
   4.2 se não tem cartão:
       total = subtotal
   4.3 mostrar "total a pagar: R$ 237,50" (exemplo)