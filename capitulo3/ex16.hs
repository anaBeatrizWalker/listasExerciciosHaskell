--Faça o tipo Numero , que possui um value constructor Ok com um campo double e outro value constructor Erro com um campo String. Faça a função dividir que divida dois números e, caso o segundo número seja 0, emita um erro (use o pattern matching). Exemplo:
--Prelude> dividir (Numero 6) (Numero 5)
--Numero 1.2.

data Numero = Ok Double | Erro String deriving Show

dividir :: Numero -> Numero -> Numero
dividir (Ok x) (Ok 0) = Erro "Nao irei dividir por 0! Tente novamente."
dividir (Ok x) (Ok y) = Ok (x / y)

--ghci> dividir (Ok 15) (Ok 2)
--Ok 7.5
--ghci> dividir (Ok 8) (Ok 0)
--Erro "Nao irei dividir por 0! Tente novamente."