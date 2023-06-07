-- 8.2) Crie uma função mult234 :: Double -> Caixa Double que receba uma parâmetro x e devolva o dobro de x na primeira coordenada, o triplo na segunda e o quádruplo na terceira usando o operador >>=
data Caixa a = Um a | Dois a a | Tres a a a deriving (Show, Eq)

instance Applicative Caixa where
  pure = Um
  (<*>) (Um f) (Um y) = Um (f y) 
  (<*>) (Dois e f) (Dois x y) = Dois (e x) (f y) 
  (<*>) (Tres e f g) (Tres x y z) = Tres (e x) (f y) (g z)
  (<*>) (Um g) (Dois x y) = Dois (g x) (g y)
  (<*>) (Um g) (Tres x y z) = Tres (g x) (g y) (g z)

instance Monad Caixa where
  return = Um
  (Um x) >>= f = f x
  (Dois x y) >>= f = f y
  (Tres x y z) >>= f = f z

daCaixa :: Caixa a -> a 
daCaixa (Um x) = x

mult234 :: Double -> Caixa Double
mult234 x = do
  dois <- Um (x * 2)
  tres <- Dois (x * 3) (x * 3)
  quatro <- Tres (x * 4) (x * 4) (x * 4)
  return quatro

-- ghci> mult234 5.0
-- Um 20.0

--8.3) Determine o valor das expressões a seguir caso seja possível. 

--a) Tres 1 2 3 >>= mult234 >>= mult234. Retorna: Um 48.0

-- b) Dois 2 4 >>= mult234. Retorna: Um 16.0

-- c) :kind Coisa. Retorna: Coisa :: * -> *

--d) Dois 2 3 >>= \_ -> Dois 7 7. Retorna: Dois 7 7

-- 8.4) Faça um exemplo, usando a notação do, de um trecho de qualquer código usando sua Monad Caixa.

mult456 :: Double -> Caixa Double
mult456 x = do
  w <- return x
  x <- return (w*4)
  y <- return (x*5)
  z <- return (y*6)
  return z

-- ghci> mult456 2 
-- Um 240.0
