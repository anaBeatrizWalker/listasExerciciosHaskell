-- 7.8) Implemente o tipo NovoPred possui um value constructor de mesmo nome, contendo o campo runNovoPred de tipo Maybe a -> Bool. Crie uma instância de Funtor Contravariante para o tipo NovoPred .

data NovoPred a = NovoPred { runNovoPred :: Maybe a -> Bool }

instance Contravariant NovoPred where
  contramap f (NovoPred g) = NovoPred (g . fmap f)

exemplo :: NovoPred Int
exemplo = NovoPred (\x -> case x of
                            Just n -> n > 0
                            Nothing -> False)

teste :: NovoPred String
teste = contramap length exemplo

-- ghci> runNovoPred exemplo (Just 5) -- True
-- ghci> runNovoPred exemplo (Just (-3)) -- False
-- ghci> runNovoPred teste (Just "Hello") -- True
-- ghci> runNovoPred teste Nothing -- False
