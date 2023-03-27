--Crie uma função que verifique se o tamanho de uma String é par ou não. Use Bool como retorno.

tamanhoEhPar :: String -> Bool
tamanhoEhPar xs = even $ length xs

--ghci> tamanhoEhPar "alohomora"
--False
--ghci> tamanhoEhPar "patolino" 
--True