--Faça uma função que receba uma [String] e retorne todos os elementos palíndromos.

returnPalindromos :: [String] -> [String]
returnPalindromos xs = filter (\ x -> x == reverse(x)) xs
--returnPalindromos = filter (\ x -> x == reverse (x))

--ghci> returnPalindromos ["ana", "beatriz", "ovo", "manteiga"]
--["ana","ovo"]