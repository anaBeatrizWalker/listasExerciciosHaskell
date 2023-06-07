-- 5.5) Crie o tipo Paridade com os values constructors Par e Impar. Crie o typeclass ParImpar que contém a função decide :: a -> Paridade e possui as instâncias para Int (noção de Par/Impar de Int), para [a] (uma lista de elementos qualquer é Par se o número de elementos o for) e para Bool (False como Par, True como Impar).

data Paridade = Par | Impar deriving Show

class ParImpar a where
  decide :: a -> Paridade

--Para int
instance ParImpar Int where
  decide n
    | even n    = Par
    | otherwise = Impar

--Para [a]
instance ParImpar [a] where
  decide xs
    | even (length xs) = Par
    | otherwise        = Impar

--Para bool
instance ParImpar Bool where
  decide True  = Impar
  decide False = Par

--ghci> decide (10 :: Int)   -- Retorna Par
--ghci> decide [1, 2, 3, 4]  -- Retorna Par
--ghci> decide True  -- Retorna Impar