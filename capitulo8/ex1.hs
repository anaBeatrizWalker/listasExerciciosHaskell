-- 8.1) Faça um tipo Caixa com um type parameter a e três construtores chamados Um, Dois e Tres possuindo um, dois e três campos de tipo a, respectivamente.Faça uma instância de Functor para o tipo Caixa. A função deve ser aplicada em todas as coordenadas dos valores (Um, Dois ou Tres). Crie uma instância de Monad para o tipo Caixa. Seu return deve ser o value constructor de Um.

data Caixa a = Um a | Dois a a | Tres a a a deriving (Show, Eq)

instance Functor Caixa where
  fmap f (Um x) = Um (f x)
  fmap f (Dois x y) = Dois (f x) (f y)
  fmap f (Tres x y z) = Tres (f x) (f y) (f z)

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

-- ghci> let caixa = Tres 1 2 3
-- ghci> fmap (+1) caixa -- Tres 2 3 4

-- ghci> let caixa = Um 10
-- ghci> caixa >>= (\x -> Tres (x+1) (x+2) (x+3)) 
-- Tres 11 12 13
