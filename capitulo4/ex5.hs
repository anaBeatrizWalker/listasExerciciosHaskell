--Implemente uma função que receba uma lista de inteiros e retorne o dobro de todos, eliminando os múltiplos de 4.

dobro :: [Int] -> [Int]
dobro = map (*2)

semMultiplos :: [Int] -> [Int]
semMultiplos =  filter(\ x -> x `mod` 4 == 0)

--ghci> semMultiplos(dobro [1,2,3,4,5,6,7,8])
--[4,8,12,16]