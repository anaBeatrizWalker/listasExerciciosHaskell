-- 7.1) Faça uma instância de Functor para o tipo Coisa, definido no início do capítulo 5. A função g deve "ir para dentro" em todas as coordenadas de Coisa. No caso de ZeroCoisa, o fmap deve retornar ZeroCoisa.

data Coisa a = UmaCoisa a | DuasCoisas a a | ZeroCoisa deriving (Show)

instance Functor Coisa where
  fmap g ZeroCoisa = ZeroCoisa
  fmap g (UmaCoisa x) = UmaCoisa (g x)
  fmap g (DuasCoisas x y) = DuasCoisas (g x) (g y)
-- ghci> fmap (+1) DuasCoisas 2 3 
-- DuasCoisas 3 4


-- 7.2) Aproveitando o exercício anterior, faça uma instância de Applicative Functor para o tipo Coisa

instance Applicative Coisa where
  pure = UmaCoisa
  _ <*> _ = ZeroCoisa
  (UmaCoisa f) <*> (UmaCoisa x) = UmaCoisa (f x)
  (UmaCoisa f) <*> (DuasCoisas x y) = DuasCoisas (f x) (f y)
  (DuasCoisas f g) <*> (DuasCoisas x y) = DuasCoisas (f x) (g y)

-- ghci> pure (+1) <*> UmaCoisa 5 
-- UmaCoisa 6

-- ghci> pure (*) <*> DuasCoisas 3.0 4.0 -- DuasCoisas 12.0 16.0

-- ghci> let coisaF = UmaCoisa (+1)
-- ghci> let coisaX = DuasCoisas 2 3
-- ghci> coisaF <*> coisaX 
-- DuasCoisas 3 4
