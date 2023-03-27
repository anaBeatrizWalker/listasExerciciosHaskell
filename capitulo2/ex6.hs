--Faça uma função que receba uma String	e retorne True se esta for um palíndromo; caso contrário, False.

ehPalindromo :: String -> Bool
ehPalindromo xs = xs == reverse xs

--ghci> ehPalindromo "mesas"
--False
--ghci> ehPalindromo "salas"
--True