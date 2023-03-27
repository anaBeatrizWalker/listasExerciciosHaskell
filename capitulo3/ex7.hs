--Faça uma função que receba uma String e retorne True se esta for um palíndromo; caso contrário, False.
ehPalindromo :: String -> Bool
ehPalindromo string = string == reverse string

--ghci> ehPalindromo "ana beatriz"
--False
--ghci> ehPalindromo "ovo"        
--True