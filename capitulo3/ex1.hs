--Crie o tipo Pergunta com os values constructors Sim ou Nao. Faça as funções seguintes: 
--pergNum: recebe via parâmetro uma Pergunta e retorna 0 para Nao e 1 para Sim;
--listPergs: recebe via parâmetro uma lista de Perguntas, e retorna 0 s e 1 s correspondentes aos constructores contidos na lista;
--and': recebe duas Perguntas como parâmetro e retorna a tabela	verdade	do and lógico, usando Sim	como verdadeiro	e Nao como falso;
--or': idem ao anterior, porém deve ser usado o ou lógico;
--not': idem aos anteriores, porém usando o not lógico

data Pergunta = Sim | Nao deriving Show

pergNum :: Pergunta -> Int
pergNum Sim = 1
pergNum Nao = 0
-- >pergNum Sim 
--1

listPergs :: [Pergunta] -> [Int]
listPergs xs = [pergNum x | x <- xs]
-- >listPergs [Sim, Nao, Nao]
--[1,0,0]
--listPergs xs = map pergNum xs

funcaoAnd :: Pergunta -> Pergunta -> Pergunta
funcaoAnd Sim Sim = Sim
funcaoAnd Sim Nao = Nao
funcaoAnd Nao Sim = Nao
funcaoAnd Nao Nao = Nao

funcaoOr :: Pergunta -> Pergunta -> Pergunta
funcaoOr Sim Sim = Sim
funcaoOr Sim Nao = Sim
funcaoOr Nao Sim = Sim
funcaoOr Nao Nao = Nao

funcaoNot :: Pergunta -> Pergunta
funcaoNot Sim = Nao
funcaoNot Nao = Sim