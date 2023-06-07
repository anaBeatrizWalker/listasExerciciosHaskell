-- 5.9) Uma lista ordenada é uma lista cujos elementos são inseridos de forma ordenada (crescente). Usando o tipo ListaOrd a = a :?: (ListaOrd a) | Nulo deriving Show, crie as funções: 
-- inserir :: (Ord a) => a -> ListaOrd a -> ListaOrd a
-- remover :: (Eq a) => a -> ListaOrd a -> ListaOrd a (a função remover deve buscar um elemento. Se não achar, a lista deve se manter intacta.)
-- tamanho :: ListaOrd a -> Int

data ListaOrd a = a :?: (ListaOrd a) | Nulll deriving Show

inserir :: (Ord a) => a -> ListaOrd a -> ListaOrd a
inserir x Nulll = x :?: Nulll
inserir x (y :?: ys)
  | x <= y = x :?: (y :?: ys)
  | otherwise = y :?: inserir x ys

remover :: (Eq a) => a -> ListaOrd a -> ListaOrd a
remover _ Nulll = Nulll
remover x (y :?: ys)
  | x == y = ys
  | otherwise = y :?: remover x ys

tamanho :: ListaOrd a -> Int
tamanho Nulll = 0
tamanho (_ :?: ys) = 1 + tamanho ys

lista :: ListaOrd Int
lista = 2 :?: (4 :?: (6 :?: Nulll))

listaComNovoElemento :: ListaOrd Int
listaComNovoElemento = inserir 5 lista
--2 :?: (4 :?: (5 :?: (6 :?: Nulll)))

listaComElementoRemovido :: ListaOrd Int
listaComElementoRemovido = remover 4 listaComNovoElemento
--2 :?: (5 :?: (6 :?: Nulll))

tamanhoLista :: Int
tamanhoLista = tamanho listaComElementoRemovido
--3