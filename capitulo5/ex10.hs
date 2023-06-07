-- 5.10) Usando a estrutura de árvore vista, faça uma função que some todos os elementos de uma árvore de números
data Arvore a = Nulo | Folha a | Ramo a (Arvore a) (Arvore a) deriving (Show)

tamanho :: Arvore Int -> Int
tamanho (Ramo x l r) = tamanho l + 1 + tamanho r
tamanho (Folha y) = 1
tamanho Nulo = 0

somar :: Arvore Int -> Int
somar (Ramo x l r) = somar l + x + somar r
somar (Folha y) = y
somar Nulo = 0

-- ghci> let arvore = Ramo 2 (Folha 3) (Ramo 4 (Folha 5) (Folha 6))
-- ghci> tamanho arvore
-- 5
-- ghci> somar arvore
-- 20