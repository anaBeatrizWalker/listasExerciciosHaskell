--Faça um novo tipo chamado Metros , que possui um \textit{value constructor} de mesmo nome, cujos parâmetros são: um Int que representa a dimensão, e um Double que representa o valor da medida e outro chamado MetragemInvalida. Implemente as funções:
--areaQuadrado :: Metros -> Metros : calcula a área de um quadrado.
--areaRet :: Metros -> Metros -> Metros : calcula a área de um retângulo.
--areaCubo :: Metros -> Metros : calcula a área de um cubo.

data Metros = Metros Int Double | MetragemInvalida deriving Show

areaQuadrado :: Metros -> Metros
areaQuadrado (Metros 1 y) = Metros 2 (y * y)
areaQuadrado (Metros 4 y) = MetragemInvalida
--ghci> areaQuadrado (Metros 1 2.0)
--Metros 2 4.0

areaRetangulo :: Metros -> Metros -> Metros
areaRetangulo (Metros 1 x) (Metros 1 z) = Metros 2 (x * z)
areaRetangulo (Metros w x) (Metros y z) = MetragemInvalida

areaCubo :: Metros -> Metros
areaCubo (Metros 1 y) = Metros 3 (y * y * y)
areaCubo (Metros x y) = MetragemInvalida

--ghci> areaRetangulo (Metros 1 2.0) (Metros 1 2.0)
--Metros 2 4.0
--ghci> areaCubo (Metros 1 2.0)                    
--Metros 3 8.0
--ghci> areaCubo (Metros 3 2.0)
--MetragemInvalida
--ghci> areaRetangulo (Metros 4 2.0) (Metros 1 2.0)
--MetragemInvalida