-- 7.6) Escreva uma possível instância de Functor para o tipo
data Dupla a = Dupla a Int a .

instance Functor Dupla where
  fmap f (Dupla x y z) = Dupla (f x) y (f z)

funcao2 :: Int -> Int
funcao2 x = x * 2

valor2 :: Dupla Int 
valor2 = Dupla 5 10 7

-- ghci> fmap funcao2 valor2 
-- Dupla 10 10 14
