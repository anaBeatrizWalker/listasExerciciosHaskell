-- 7.4) Escreva uma instância para Functor e Applicative para o tipo Arvore, visto no capítulo 5.

data Arvore a = Nulo | Folha a | Ramo a (Arvore a) (Arvore a) deriving (Show)

instance Functor Arvore where
  fmap g Nulo = Nulo
  fmap g (Folha x) = Folha (g x)
  fmap g (Ramo c l r) = Ramo (g c) (fmap g l) (fmap g r)

instance Applicative Arvore where
  pure = Folha
  (<*>) (Folha f) (Folha x) = Folha (f x)
  (<*>) (Folha f) (Ramo c l r) = Ramo (f c) (fmap f l) (fmap f r)
  (<*>) (Ramo x y z) (Ramo c l r) = Ramo (x c) ((<*>) y l) ((<*>) z r)
  (<*>) (Ramo x y z) _ = Nulo
  (<*>) _ _ = Nulo

-- ghci> let arvoreF = Ramo (+1) (Folha (+2)) (Ramo (+3) (Folha (+4)) (Folha (+5)))
-- ghci> let arvoreX = Ramo 1 (Folha 2) (Ramo 3 (Folha 4) (Folha 5))
-- ghci> arvoreF <*> arvoreX 
-- Ramo 2 (Folha 4) (Ramo 6 (Folha 8) (Folha 10))
