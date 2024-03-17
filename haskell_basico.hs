import System.Win32 (xBUTTON1)
--Cabeçalho

-- nome_da_funcao :: Tipo_argumento1 -> Tipo_argumento2 -> ... -> Tipo_argumento_n -> Tipo_retorno

-- soma :: Int -> Int -> Int -- função soma que tem 2 argumentos do tipo Int e que retorna um valor Int

-- 3x3 = 3 + 3 +3 = 3 + (3X2)
-- 3x2 = 3+3

-- n*m = n + (n*(m-1))

venda :: Int -> Int
venda 1 = 10
venda 2 = 13
venda 3 = 90
venda 4 = 5
venda 5 = 15
venda _ = -1

type Venda = Int
type Intervalo = Int
maiorVenda :: Venda -> Intervalo -> Int
maiorVenda x 1 = venda x
maiorVenda x y
    | venda x > venda (y-1) = maiorVenda x (y-1)
    | otherwise = maiorVenda (y-1) (y-1)

-- e se a gente fizer um tqpete/balanca (de peso) que q quando a novinha entre na sua casa e o peso for > a 40kg 
-- ele toque uma ligacao da sua mae falando q eum parente ta no hospitql
-- da pra fazer em C# e arduino (sem meme KKKKKKK)
-- 4 periodo br fazer a eletiva do eliseu q ensina a mecher c isso
-- ja fiz heheheheeh. mas nao ensina a mexer com arduino, só com CI, é basicamente a mema merda to trampo pratico de logica
-- eu c