--Implemente uma função que simule o vencedor de uma partida de pedra, papel e tesoura usando tipos criados. Casos de empate devem ser considerados em	seu	tipo.

data Jogo = Pedra | Papel | Tesoura

partida :: Jogo -> Jogo -> String
partida Pedra Pedra = "Empatou!"
partida Papel Papel = "Empatou!"
partida Tesoura Tesoura = "Empatou!"
partida Pedra Papel = "Papel ganhou!"
partida Papel Pedra = "Papel ganhou!"
partida Pedra Tesoura = "Pedra ganhou!"
partida Tesoura Pedra = "Pedra ganhou!"
partida Papel Tesoura = "Tesoura ganhou!"
partida Tesoura Papel = "Tesoura ganhou!"