--Faça uma função que recebe três Strings x , y e z como parâmetro. A função retorna uma tupla com três coordenadas contendo a ordem reversa em cada. A primeira coordenada deve conter string reversa do primeiro parâmetro, e assim por diante.

retornarTuplaReversa :: String -> String -> String -> (String, String, String)
retornarTuplaReversa x y z = (reverse(x), reverse(y), reverse(z))

--retornarTuplaReversa "lapis" "tigela" "cobertor"
--("sipal","alegit","rotreboc")
