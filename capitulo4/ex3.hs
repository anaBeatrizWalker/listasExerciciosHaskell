--Implemente uma função que filtre os números pares e outra que filtre os ímpares de uma lista recebida via parâmetro. 

filtraPares :: [Int] -> [Int]
filtraPares xs = filter (\ x -> mod x 2 == 0) xs

filtraImpares :: [Int] -> [Int]
filtraImpares xs = filter (\ x -> mod x 2 /= 0) xs

--ghci> filtraPares [1..10]              
--[2,4,6,8,10]
--ghci> filtraImpares [20..31]           
--[21,23,25,27,29,31]