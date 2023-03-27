--Faça uma função que elimine todos os números pares, todos os ímpares múltiplos de 7 e negativos de uma lista de inteiros passada via parâmetro. Você deve retornar esta lista em ordem reversa em comparação a do parâmetro.

m :: [Int] -> [Int]
m xs = reverse([x | x <- xs, odd x && mod x 7 /= 0 && x > 0])

--Teste
--m [7, 14, 21, 25, 26, 28, 30, 35, 36, 37, 42, 43, -2, -14, -17]
--[43, 37, 25]