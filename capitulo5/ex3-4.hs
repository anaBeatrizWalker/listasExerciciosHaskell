-- 5.3) A função min no Haskell retorna o menor entre dois números, por exemplo, min 4 5 = 4. Crie um tipo Min com um campo inteiro, que seja instância de Ord, Eq e Show (deriving). Crie um instância de Monoid para Min (maxBound representa o maior número inteiro existente no Haskell). Quanto vale a expressão Min (-32) <> Min (-34) <> Min (-33)?
data Min = Min Int deriving (Ord, Eq, Show)

instance Semigroup Min where
  (Min a) <> (Min b) = Min (min a b)

instance Monoid Min where
  mempty = Min (maxBound)

-- ghci> Min (-32) <> Min (-34) <> Min (-33)
-- Min (-34)

-- 5.4) Crie uma função minAll que recebe um [Min] e retorna um Min contendo o menor val
minAll :: [Min] -> Min
minAll = mconcat 
-- ghci> minAll [(Min (-32)), (Min (-32)), (Min (-2)), (Min (2)), (Min (-52)), (Min (-30))]
-- Min (-52)