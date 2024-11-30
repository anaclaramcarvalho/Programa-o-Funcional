import Data.Char

converte :: Char ->(Char,Char,Int)
converte char = (char, toUpper char, ord char)

equacao :: (Float,Float,Float) -> (Float,Float)
equacao (a,b,c)
  |delta >= 0 = (x1,x2)
  |otherwise =  error("Nao ha raizes reais")
  where delta = b^2 - 4*a*c
        x1 = (-b+sqrt delta)/(2*a)
        x2 = (-b-sqrt delta)/(2*a)

type Nome = String
type Idade = Int
type Sexo = String

type Pessoa = (Nome,Idade,Sexo)

persona :: Int->Pessoa
persona 1 = ("Julia", 19, "Feminino")
persona 2 = ("Mario", 32, "Masculino")

persona :: Int->Pessoa
persona indice
    |indice == 1 = ("Julia", 19, "Feminino")
    |indice == 2 = ("Mario", 32, "Masculino")

selec_idade :: Pessoa->Idade
selec_idade (_,i,_) = i

somaiddade :: Int ->Float
somaiddade n
  | n == 1 = selec_idade(persona 1)