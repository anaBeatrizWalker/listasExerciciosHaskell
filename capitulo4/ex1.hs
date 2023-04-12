--Faça uma função que retorne a média de um [Double], usando foldl.

media :: [Double] -> Double
media xs = foldl (+) 0 xs / fromIntegral (length xs)

--ghci> media [5.21, 8.89, 9.33, 12.5]
--8.9825