-- 8.4) Faça um exemplo, usando a notação do, de um trecho de qualquer código usando sua Monad Caixa.

data Caixa a = Um a | Dois a a | Tres a a a deriving (Show, Eq)

instance Monad Caixa where
  return = Um
  (Um x) >>= f = f x
  (Dois x y) >>= f = f y
  (Tres x y z) >>= f = f z

mult456 :: Double -> Caixa Double
mult456 x = do
  w <- return x
  x <- return (w*4)
  y <- return (x*5)
  z <- return (y*6)
  return z

-- ghci> mult456 2 
-- Um 240.0
