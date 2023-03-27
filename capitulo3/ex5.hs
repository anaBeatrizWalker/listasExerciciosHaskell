--Sabe-se que as unidades imperiais de comprimento podem ser Inch, Yard ou Foot (há  outras ignoradas  aqui). Sabe-se que 1 in = 0.0254m, 1 yd = 0.9144m, 1 ft = 0.3048. Faça a função converterMetros que recebe a  unidade imperial e o valor correspondente nesta  unidade. Esta função deve retornar o valor em metros. Implemente também a função converterImperial, que recebe um valor em metros e a unidade de conversão. Esta função deve retornar o valor convertido para a unidade desejada.

data UnidadeImperial = Inch | Yard | Foot deriving Show

converterParaMetros :: Double -> UnidadeImperial -> Double
converterParaMetros x Inch = x / 39.37
converterParaMetros x Yard = x / 1.094
converterParaMetros x Foot = x / 3.281

converterParaImperial :: Double -> UnidadeImperial -> Double
converterParaImperial x Inch = x * 39.37
converterParaImperial x Yard = x * 1.094
converterParaImperial x Foot = x * 3.281

--ghci> converterParaMetros 25 Inch
--0.63500127000254
--ghci> converterParaImperial 25 Inch
--984.2499999999999