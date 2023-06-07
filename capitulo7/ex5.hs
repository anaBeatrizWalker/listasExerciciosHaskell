-- 7.5)Escreva uma instância de Functor para o tipo data Fantasma a = Fantasma .
data Fantasma a = Fantasma deriving (Show)

instance Functor Fantasma where
  fmap f (Fantasma) = Fantasma

funcao :: Int -> Int
funcao x = x * 2

valor :: Fantasma Int
valor = Fantasma

-- ghci> fmap funcao valor 
-- Retorna: Fantasma
