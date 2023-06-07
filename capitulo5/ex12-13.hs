-- 5.12) Faça uma função para inserir um elemento em uma árvore de busca binária (use a mesma estrutura vista).
 
data Arvore a = Nulo | Folha a | Ramo a (Arvore a) (Arvore a) deriving (Show)

inserir :: (Ord a) => a -> Arvore a -> Arvore a
inserir x Nulo = Folha x
inserir x (Folha valor)
  | x < valor = Ramo valor (Folha x) Nulo
  | x > valor = Ramo valor Nulo (Folha x)
  | otherwise = Folha valor
inserir x (Ramo valor esquerda direita)
  | x < valor = Ramo valor (inserir x esquerda) direita
  | x > valor = Ramo valor esquerda (inserir x direita)
  | otherwise = Ramo valor esquerda direita

arvore :: Arvore Int
arvore = Ramo 5 (Ramo 3 Nulo Nulo) (Ramo 7 Nulo Nulo)

arvoreInserida :: Arvore Int
arvoreInserida = inserir 4 arvore
--Ramo 5 (Ramo 3 Nulo (Folha 4)) (Ramo 7 Nulo Nulo)
--[5, 3, 7, 4]

-- 5.13) Faça uma função que, a partir de uma lista de elementos de tipo, insira todos os elementos desta lista na árvore e retorne-a, usando o exercício anterior.

lista :: (Ord a) => [a] -> Arvore a
lista = foldr inserir Nulo

novaArvore :: Arvore Int
novaArvore = lista [5, 2, 7, 1, 4, 6, 8]
--Ramo 8 (Ramo 6 (Ramo 4 (Ramo 1 Nulo (Folha 2)) (Folha 5)) (Folha 7)) Nulo