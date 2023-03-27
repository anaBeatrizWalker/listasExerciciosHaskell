--Escreva uma função que receba um vetor de Strings e retorne uma lista com o tamanho de cada String. As palavras de tamanho par devem ser excluídas da resposta.

tamanhoDasStrings :: [String] -> [Int]
tamanhoDasStrings xs = [ length x | x <- xs ]

removerTamanhosPares :: [String] -> [Int]
removerTamanhosPares xs = [ length x | x <- xs, odd $ length x ]

--ghci> tamanhoDasStrings ["abobora", "banana", "beterraba", "pera"]   
--[7,6,9,4]

--ghci> removerTamanhosPares ["abobora", "banana", "beterraba", "pera"]
--[7,9]