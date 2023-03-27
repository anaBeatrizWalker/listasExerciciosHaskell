--Gere as listas
--a) [1,11,121,1331,14641,161051,1771561]
--b) [1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23,25,26,27,29,30,31,33,34,35,37,38,39]
--c) ["AaBB", "AbBB", "AcBB", "AdBB", "AeBB", "AfBB","AgBB"]
--d) [5,8,11,17,20,26,29,32,38,41]
--e) [1.0,0.5,0.25,0.125,0.0625,0.03125]
--f) [1,10,19,28,37,46,55,64]
--g) [2,4,8,10,12,16,18,22,24,28,30]
--h) ['@','A','C','D','E','G','J','L']

geraListaA :: [Int] -> [Int]
geraListaA xs = [ round $ 1*(11 ** (x-1)) | x <- [1..7]]
--ghci> geraListaA []
--[1,11,121,1331,14641,161051,1771561]

geraListaB :: [Int] -> [Int]
geraListaB xs = [ x | x <- [1..40], mod x 4 /= 0]

geraListaC :: [String] -> [String]
geraListaC xs = [ 'A':x:"BB" | x <- ['a'..'g']]

geraListaD :: [Int] -> [Int]
geraListaD xs = [ 5 + (x-1) * 3 | x <- [1..13]]

geraListaE :: [Double] -> [Double]
geraListaE xs = [ 1/2 ** x | x <- [0..5]]

geraListaF :: [Int] -> [Int]
geraListaF xs = [ 1 + (x-1) * 9 | x <-[1..8]]

geraListaG :: [Int] -> [Int]
geraListaG xs = [ 2 + (x-1) * 2 | x <-[1..15], x `notElem` [3, 7, 10, 13]]

geraListaH :: [Char] -> [Char]
geraListaH xs = '@' : [ x | x <- ['A'..'L'], x `notElem` ['B', 'F', 'H', 'I', 'K']]