--Faça uma função que receba um inteiro e retorne uma tupla, contendo: o dobro deste número	na primeira coordenada,	o triplo na	segunda, o quádruplo na terceira e o quíntuplo na quarta.

multiplicar :: Int -> (Int, Int, Int, Int)
multiplicar x = (x * 2, x * 3, x * 4, x * 5)

--ghci> multiplicar 5
--(10,15,20,25)