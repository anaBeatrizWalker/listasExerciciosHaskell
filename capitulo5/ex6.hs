-- 5.6) A função max no Haskell retorna o maior entre dois números, por exemplo: max 4 5 = 5. Crie um tipo Max com um campo inteiro que seja instância de Ord, Eq e Show (deriving). Crie um tipo Max com um campo inteiro que seja instância de Ord , Eq e Show (deriving). Crie uma função maxAll que recebe um [Max] e retorna um Max contendo o maior valor.

newtype Max = Max Int deriving (Ord, Eq, Show)
instance Semigroup Max where
  (Max x) <> (Max y) = Max (max x y)

instance Monoid Max where
  mempty :: Max
  mempty = Max minBound
  mappend (Max x) (Max y) = Max (max x y)
--ghci> Max 13 <> Max 10 <> Max 5
-- Max 13

maxAll :: [Max] -> Max
maxAll = foldr mappend mempty
--ghci> maxAll [Max 7, Max 2, Max 9, Max 4]
-- Max 9