import Data.List

type Nome = String
type CPF = Int
type Telefone = String
data Data = Data {dia :: Int, mes :: Int, ano :: Int}
data Cliente = Cliente {cpf :: CPF, nome :: Nome, telefone :: Telefone, dataNasc :: Data} 
data Produto = Produto {cod :: Codigo, item :: NomeItem, forne :: Fornecedor, preco :: Preco}
type Clientes =[Cliente]
type Codigo = Int
type NomeItem = String
type Fornecedor = String
type Fornecedores = [Fornecedor]
type Preco = Int
type Catalogo = [Produto]
type Quantidade = Int
type ItemVenda = (Codigo, Quantidade)
type Vendas = [(CPF, Data,[ItemVenda])]

vem :: Vendas 
vem = [(11111111111, (Data 10 10 2010), [(147852, 2),(147853, 2),(147854, 2)])]
cat :: Catalogo 
cat = [(Produto 147852 "Carro" "Jesus" 10000),(Produto 147852 "Carro" "Jesus" 10000),(Produto 147852 "Carro" "Jesus" 10000)]

--questao 01
{--
Cadastro de Vendas -> Vendas
Cadastro de Clientes -> Clientes
Cadastro de Produtos -> Catalogo
Periodo de tempo
Dados o cadastro de vendas realizadas na loja, o catálogo, e um período
informado, retornar a lista de tuplas, em que os elementos de uma tupla, são, na
ordem: código do produto, nome do item, quantidade vendida de cada item no
período informado. As quantidades dos produtos de mesmo código no cadastro de
vendas devem ser totalizadas, de forma que cada produto só pode aparecer na lista
de saída uma única vez. A lista de saída deve vir ordenada pelo código dos produtos
vendidos, em ordem crescente.
--}
questao01 :: Vendas -> Catalogo -> Data -> Data -> [(Codigo, NomeItem, Quantidade)]
questao01 vendas catalogo dataI dataF = a0 (auxiliar1 vendas catalogo dataI dataF)

--Auxiliares
auxiliar1 :: Vendas -> Catalogo -> Data -> Data -> [(Codigo, NomeItem, Quantidade)]
auxiliar1 vendas catalogo dataI dataF  = [(codPro, getNomeItem produto, qtd) | (cpf, datinha, listaItem) <- vendas, (codPro, qtd) <- listaItem, produto <- catalogo, getCod produto == codPro, noPeriodo dataI dataI datinha]

a0 :: [(Codigo, NomeItem, Quantidade)] -> [(Codigo, NomeItem, Quantidade)]
a0 [] = []
a0 x = a1 x : a0 (aatrox x (a1 x))

a1 :: [(Codigo, NomeItem, Quantidade)] -> (Codigo, NomeItem, Quantidade)
a1 [x] = x 
a1 (x:xs) = a2 x (a1 xs)
           where zyra (x, xs,  xxs) = x 

a2 :: (Codigo, NomeItem, Quantidade) -> (Codigo, NomeItem, Quantidade) -> (Codigo, NomeItem, Quantidade)
a2 x y = if ((zyra x) <= (zyra y)) then x else y
       where zyra (x, xs, xxs) = x 

aatrox :: [(Codigo, NomeItem, Quantidade)] -> (Codigo, NomeItem, Quantidade) -> [(Codigo, NomeItem, Quantidade)]
aatrox [] _ = []
aatrox (x:xs) n = if (n == x) then xs else [x] ++ aatrox xs n

getCod :: Produto -> Codigo
getCod (Produto cod nomeItem  forne preco) = cod

getNomeItem :: Produto -> NomeItem
getNomeItem (Produto cod nomeItem  forne preco) = nomeItem

noPeriodo :: Data -> Data -> Data -> Bool
noPeriodo dataI dataF dataProd = (dataDepois dataProd dataI) && (dataAntes dataProd dataF)

--Verificar se uma data venho depois da outra
dataDepois :: Data -> Data -> Bool
dataDepois (Data dia1 mes1 ano1) (Data dia2 mes2 ano2) 
    | (ano1 >= ano2) = True --Primeiro compara os anos
    | (ano1 == ano2) && (mes1 >= mes2) = True --Verifica os meses com data de mesmo ano
    | (ano1 == ano2) && (mes1 == mes2) && (dia1 >= dia2) = True --Verifica os dias e os meses iguais,  
    | otherwise = False 
    
--Verificar se uma data venho Antes da outra
dataAntes :: Data -> Data -> Bool
dataAntes (Data dia1 mes1 ano1) (Data dia2 mes2 ano2) 
    | (ano1 <= ano2) = True --Primeiro compara os anos
    | (ano1 == ano2) && (mes1 <= mes2) = True --Verifica os meses com data de mesmo ano
    | (ano1 == ano2) && (mes1 == mes2) && (dia1 <= dia2) = True --Verifica os dias e os meses iguais,  
    | otherwise = False
   
