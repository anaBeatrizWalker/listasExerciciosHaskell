--Implemente o tipo Dinheiro que contenha os campos valor e correncia ( Real ou Dolar ), e uma função que converta todos os "dinheiros" de uma lista para dólar (e outra para real). Com isso, implemente funções para:
--Filtrar todos os Dolares de uma lista de Dinheiro .
--Somar todos os Dolares de uma lista.
--Contar a quantidade de Dolares de uma lista.

data Dinheiro = Dinheiro {valor :: Double, correncia :: String} deriving Show

converter :: Dinheiro -> Dinheiro
converter d = case correncia d of {
    "real" -> Dinheiro {valor = valor d * 0.19, correncia = "dolar"};
    "dolar" -> Dinheiro {valor = valor d * 5.25, correncia = "real"}
}
paraDolar:: [Dinheiro] -> [Dinheiro]
paraDolar = map converter
--ghci> paraDolar [Dinheiro {valor = 100, correncia = "real"}, Dinheiro {valor = 50, correncia = "real"}, Dinheiro {valor = 200, correncia = "real"}]
--[Dinheiro {valor = 19.0, correncia = "dolar"},Dinheiro {valor = 9.5, correncia = "real"},Dinheiro {valor = 38.0, correncia = "real"}]

paraReal :: [Dinheiro] -> [Dinheiro]
paraReal = map converter
--ghci> paraReal [Dinheiro {valor = 19.0, correncia = "dolar"},Dinheiro {valor = 9.5, correncia = "dolar"},Dinheiro {valor = 38.0, correncia = "dolar"}]
--[Dinheiro {valor = 99.75, correncia = "real"},Dinheiro {valor = 49.875, correncia = "real"},Dinheiro {valor = 199.5, correncia = "real"}]

filtrarDolar :: [Dinheiro] -> [Dinheiro]
filtrarDolar = filter(\ c -> correncia c == "dolar")
--ghci> filtrarDolar [Dinheiro {valor = 19.0, correncia = "dolar"},Dinheiro {valor = 9.5, correncia = "dolar"},Dinheiro {valor = 38.0, correncia = "real"}]
--[Dinheiro {valor = 19.0, correncia = "dolar"}]

somarDolar :: [Dinheiro] -> Double
somarDolar = foldl(\ acum (Dinheiro valor correncia) -> acum + case correncia of {"dolar" -> valor; _ -> 0}) 0
--ghci> somarDolar [Dinheiro {valor = 20.0, correncia = "dolar"},Dinheiro {valor = 9.5, correncia = "dolar"},Dinheiro {valor = 38.0, correncia = "real"}]
--29.5

contarQtdDolar :: [Dinheiro] -> Int
contarQtdDolar = foldl(\ acum (Dinheiro valor correncia) -> acum + case correncia of {"dolar" -> 1; _ -> 0}) 0
--ghci> contarQtdDolar [Dinheiro {valor = 19.0, correncia = "dolar"},Dinheiro {valor = 9.5, correncia = "dolar"},Dinheiro {valor = 38.0, correncia = "real"}]
--2