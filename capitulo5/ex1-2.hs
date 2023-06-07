-- 5.1) Crie o tipo TipoProduto que possui os value constructors Escritorio,Informatica, Livro, Filme e Total. O tipo Produto possui um value constructor - de mesmo nome - e os campos valor (Double), tp (TipoProduto) e um value constructor Nada que representa a ausência de um Produto. Deseja-se calcular o valor total de uma compra de modo a não ter nenhuma conversão para inteiro e de forma combinável. Crie uma instância de Monóide para Produto de modo que o retorno sempre terá Total no campo tp e a soma dos dois produtos em valor.
data TipoProduto = Escritorio | Informatica | Livro | Filme | Total deriving (Show)
data Produto = Produto {valor :: Double, tp :: TipoProduto} | Nada deriving (Show)

instance Semigroup Produto where
  Nada <> Nada = Produto 0 Total
  (Produto vl1 _) <> (Produto vl2 _) = Produto (vl1 + vl2) Total
  (Produto vl1 _) <> x = Produto vl1 Total
  x <> (Produto vl1 _) = Produto vl1 Total

instance Monoid Produto where
  mempty = Nada

-- ghci> let p1 = Produto 10.5 Livro
-- ghci> let p2 = Produto 5.0 Filme
-- ghci> let p3 = Produto 2.99 Informatica
-- ghci> valor (p1 <> p2 <> p3)
-- 18.490000000000002

-- 5.2) Crie uma função totalGeral que recebe uma lista de produtos e retorna o preço total deles usando o monoide anterior.
totalGeral :: [Produto] -> Produto
totalGeral = foldl (<>) mempty
-- ghci> totalGeral [(Produto 10.5 Livro), (Produto 5.0 Filme), (Produto 2.99 Informatica)]
-- Produto {valor = 18.490000000000002, tp = Total}