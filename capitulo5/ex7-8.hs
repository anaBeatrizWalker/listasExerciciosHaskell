-- 5.7) Usando a estrutura de árvore, monte uma função mapa, que jogue uma função passada por parâmetro para todos os elementos de uma árvore. Deixe explícito o tipo desta função
data Arvore a = Nulo | Folha a | Ramo a (Arvore a) (Arvore a) deriving (Show)

mapa :: (Int -> Int) -> Arvore Int -> Arvore Int
mapa f (Ramo x l r) = Ramo (f x) (mapa f l) (mapa f r)
mapa f (Folha y) = Folha (f y)
mapa f Nulo = Nulo

-- ghci> let arvore = Ramo 2 (Folha 3) (Ramo 4 (Folha 5) (Folha 6))
-- ghci> mapa (+1) arvore
-- Ramo 3 (Folha 4) (Ramo 5 (Folha 6) (Folha 7))

-- 5.8) Usando o exercício anterior, some 5 a cada elemento de uma árvore de inteiros.
somaCinco :: Int -> Int
somaCinco x = x + 5

mapa2 :: (Int -> Int) -> Arvore Int -> [Int]
mapa2 f (Ramo x l r) = mapa2 f l ++ [f x] ++ mapa2 f r
mapa2 f (Folha y) = [f y]
mapa2 f Nulo = []

mapaSomaCinco :: Arvore Int -> [Int]
mapaSomaCinco = mapa2 somaCinco

arvoreExemplo :: Arvore Int
arvoreExemplo = Ramo 1 (Folha 2) (Ramo 3 (Folha 4) Nulo)
-- ghci> mapaSomaCinco arvoreExemplo
--[7,6,9,8]