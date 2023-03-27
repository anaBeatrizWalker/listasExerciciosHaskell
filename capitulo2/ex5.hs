--Escreva a função head como composição de duas outra
funcaoHead :: [a] -> a
funcaoHead = last . take 3

--ghci> funcaoHead [1..10]
--3