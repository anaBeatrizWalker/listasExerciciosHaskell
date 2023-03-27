--Escreva uma função que receba um vetor de Strings e retorne uma lista	com	todos os elementos em ordem reversa.
reverteStrings :: [String] -> [String]
reverteStrings xs = reverse xs

reverteStrings2 :: [String] -> [String]
reverteStrings2 xs = [ reverse x | x <- xs ]

--ghci> reverteStrings ["Python","Java","Haskell"]
--["Haskell","Java","Python"]
--ghci> reverteStrings2 ["Python","Java","Haskell"]
--["nohtyP","avaJ","lleksaH"]