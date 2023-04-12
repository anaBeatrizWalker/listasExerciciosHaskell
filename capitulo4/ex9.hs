--Usando a função foldl, crie lambdas para: contar números negativos de uma lista de Int; contar letras 'P' de uma String; contar Sabados em uma lista de um [DiaSemana]; a partir de uma lista de [DiaSemana], retornar a soma dos dias, por exemplo: [Segunda, Segunda, Quarta] deve retornar 5. Use uma função auxiliar para converter DiaSemana para Int.

contarNegativos :: [Int] -> Int
contarNegativos = foldl (\ acum x -> acum + fromEnum (x < 0)) 0
--ghci> contarNegativos [-10, -5, 2, 3, 9, 12, -8, 7, -3]
--4

contarPs :: String -> Int
contarPs = foldl (\ acum x -> acum + fromEnum (x == 'p' || x == 'P')) 0
--ghci> contarPs "paralelepipedo"
--3

data DiaSemana = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo deriving Show

contarSabados :: [DiaSemana] -> Int
contarSabados = foldl (\ acum dia -> acum + 
                        (case dia of {
                            Sabado -> 1; 
                            _ -> 0})
                        ) 0
--ghci> contarSabados [Segunda, Quarta, Domingo, Sabado, Terca, Sabado]
--2

converterDiaInt :: DiaSemana -> Int
converterDiaInt dia = case dia of {
                        Segunda -> 1;
                        Terca -> 2;
                        Quarta -> 3;
                        Quinta -> 4;
                        Sexta -> 5;
                        Sabado -> 6;
                        Domingo -> 7
                    }

somarDiasInt :: [DiaSemana] -> Int
somarDiasInt = foldl (\ acum dia -> acum + converterDiaInt dia) 0
--ghci> somarDiasInt [Segunda, Segunda, Quarta]
--5
--ghci> somarDiasInt [Quarta, Sexta, Domingo]  
--15