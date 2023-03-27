--Faça o tipo Temperatura que pode ter valores Celsius, Farenheit ou Kelvin. Implemente as funções:
--converterCelsius: recebe um valor double e uma temperatura, e faz a conversão para Celsius.
--converterKelvin: recebe um valor double e uma temperatura, e faz a conversão para Kelvin.
--converterFarenheit: recebe um valor double e uma temperatura, e faz a conversão para Farenheit.

data Temperatura = Celsius | Farenheit | Kelvin deriving Show

convertePCelsius :: Double -> Temperatura -> Double
convertePCelsius x Celsius = x
convertePCelsius x Farenheit = (x - 32) * (5/9)
convertePCelsius x Kelvin = x - 273.15

--ghci> convertePCelsius 25 Celsius  
--25.0
--ghci> convertePCelsius 25 Farenheit
---3.8888888888888893
--ghci> convertePCelsius 25 Kelvin   
---248.14999999999998

convertePFarenheit :: Double -> Temperatura -> Double
convertePFarenheit x Celsius = x * (9/5) + 32
convertePFarenheit x Farenheit = x
convertePFarenheit x Kelvin = (x - 273.15) * (9/5) + 32

--ghci> convertePFarenheit 25 Celsius
--77.0
--ghci> convertePFarenheit 25 Farenheit
--25.0
--ghci> convertePFarenheit 25 Kelvin   
---414.66999999999996

convertePKelvin :: Double -> Temperatura -> Double
convertePKelvin x Celsius = x + 273.15
convertePKelvin x Farenheit = (x - 32)* (5/9) + 273.15
convertePKelvin x Kelvin = x

--ghci> convertePKelvin 25 Celsius     
--298.15
--ghci> convertePKelvin 25 Farenheit
--269.26111111111106
--ghci> convertePKelvin 25 Kelvin   
--25.0