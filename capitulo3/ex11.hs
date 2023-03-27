--Crie o tipo de dado Binario que pode ser Zero ou Um. Faça outro tipo de dado chamado Funcao que pode ser Soma2 , Maior , Menor ou Mult2. Implemente a função aplicar que recebe uma Funcao e dois Binarios. Seu retorno consiste em executar a operação desejada. Exemplo: aplicar Soma2 Um Um = Zero

data Binario =  Zero | Um deriving Show
data Funcao = Soma2 | Maior | Menor | Multiplica2 deriving Show

aplicar :: Funcao -> Binario -> Binario -> Binario
aplicar Soma2 Zero Zero = Zero
aplicar Soma2 Um Zero = Um
aplicar Soma2 Um Um = Zero
