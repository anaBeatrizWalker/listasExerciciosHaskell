--Faça uma função chamada binList, usando list compreeshion, que recebe uma lista de Binarios (ver exercício anterior) e retorna outra lista com elemento somado Um e convertido para Int. Exemplo: binList [Um, Zero, Zero, Um, Zero] = [0,1,1,0,1]

data Binario =  Zero | Um deriving Show

binList xs = [ x | x <- xs, Zero == 0 && Um == 1]