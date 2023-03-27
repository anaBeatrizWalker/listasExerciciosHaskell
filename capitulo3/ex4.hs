--Faça uma função que retorne uma string, com todas as vogais maiúsculas e	minúsculas eliminadas de uma string	passada por	parâmetro usando list compreenshion.

eliminarVogais :: String -> String
eliminarVogais xs = [ x | x <- xs, x `notElem` "AEIOUaeiou" ]

--ghci> eliminarVogais "Bom dia, BOA TARDE, boa noite"
--"Bm d, B TRD, b nt"