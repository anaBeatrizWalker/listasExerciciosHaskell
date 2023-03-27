--Faça o novo tipo Valido que possui dois value constructors Sim e Nao. O value constructor Sim possui um parâmetro (campo) String. Implemente uma função isNomeValido que recebe um nome e retorna Nao caso a String seja vazia; caso contrário, Sim.

data Validacao = Sim String | Nao deriving Show

isNomeValido :: String -> Validacao
isNomeValido [] = Nao
isNomeValido xs = Sim xs

--ghci> isNomeValido ""
--Nao
--ghci> isNomeValido "Abobrinha"
--Sim "Abobrinha"