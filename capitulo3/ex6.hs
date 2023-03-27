--Faça um novo tipo chamado Mes , que possui como yvalores todos os meses do ano. Implemente:
data Mes = Janeiro | Fevereiro | Março | Abril | Maio | Junho | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro

--A função checaFim , que retorna o número de diasque cada mês possui (considere fevereiro tendo 28 dias).
checaFim :: Mes -> Int
checaFim Janeiro = 31
checaFim Fevereiro = 28
checaFim Março = 31
checaFim Abril = 30
checaFim Maio = 31
checaFim Junho = 30
checaFim Julho = 31
checaFim Agosto = 31
checaFim Setembro = 30
checaFim Outubro = 31
checaFim Novembro = 30
checaFim Dezembro = 31

--A função prox, que recebe um mês atual e retorna o próximo mês.
prox :: Mes -> String
prox valor = case valor of
                Janeiro -> "Fevereiro"
                Fevereiro -> "Marco"
                Março -> "Abril"
                Abril -> "Maio"
                Maio -> "Junho"
                Junho-> "Julho"
                Julho -> "Agosto"
                Agosto -> "Setembro"
                Setembro -> "Outubro"
                Outubro -> "Novembro"
                Novembro -> "Dezembro"
                Dezembro -> "Janeiro"

--A função estacao , que retorna a estação do ano de acordo com o mês e com o hemisfério.
data Hemisferio = Norte | Sul | Leste | Oeste

estacao :: (Mes, Hemisferio) -> String
estacao (Janeiro, Norte) = "Inverno"
estacao (Janeiro, Sul) = "Verao"
estacao (Fevereiro, Norte) = "Inverno"
estacao (Fevereiro, Sul) = "Verao"
estacao (Março, Norte) = "Primavera"
estacao (Março, Sul) = "Outono"
estacao (Abril, Norte) = "Primavera"
estacao (Abril, Sul) = "Outono"
estacao (Maio, Norte) = "Primavera"
estacao (Maio, Sul) = "Outono"
estacao (Junho, Norte) = "Verao"
estacao (Junho, Sul) = "Inverno"
estacao (Julho, Norte) = "Verao"
estacao (Julho, Sul) = "Inverno"
estacao (Agosto, Norte) = "Verao"
estacao (Agosto, Sul) = "Inverno"
estacao (Setembro, Norte) = "Outono"
estacao (Setembro, Sul) = "Primavera"
estacao (Outubro, Norte) = "Outono"
estacao (Outubro, Sul) = "Primavera"
estacao (Novembro, Norte) = "Outono"
estacao (Novembro, Sul) = "Primavera"
estacao (Dezembro, Norte) = "Inverno"
estacao (Dezembro, Sul) = "Verao"