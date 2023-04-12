-- Filtre os números primos de uma lista recebida por parâmetro

ehPrimo :: Int -> Bool
ehPrimo n = n > 1 && all (\ x -> mod n x /= 0) [2..(n-1)]

filtraPrimos :: [Int] -> [Int]
filtraPrimos xs = filter ehPrimo xs

--ghci> filtraPrimos [1..30]      
--[2,3,5,7,11,13,17,19,23,29]