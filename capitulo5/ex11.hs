-- 5.11) Implemente os percursos pós-ordem e pré-ordem. Via comentário faça os testes de mesa para os dois percursos da arvore Raiz 15 Ramo 15 (Ramo 11 (Folha 6) (Ramo 12 (Folha 10) Nulo)) (Ramo 20 Nulo (Ramo 22 (Folha 21) Nulo))
data Arvore a = Nulo | Folha a | Ramo a (Arvore a) (Arvore a) deriving (Show)

preOrdem :: Show a => Arvore a -> [a]
preOrdem (Ramo x l r) = [x] ++ preOrdem l ++ preOrdem r 
preOrdem (Folha y) = [y]
preOrdem Nulo = []
--[15, 11, 6, 12, 10, 20, 22, 21] 

posOrdem :: Show a => Arvore a -> [a]
posOrdem (Ramo x l r) = posOrdem l ++ posOrdem r ++ [x] 
posOrdem (Folha y) = [y]
posOrdem Nulo = []
--[6,10,12,21,22,20,15]