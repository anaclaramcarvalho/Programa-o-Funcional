fatorialDuplo::Int->Int
fatorialDuplo n
  |n == 0 = 1
  |n == 1 = 1
  |otherwise = fatorialDuplo (n-2) * n

quociente::Int->Int->Int
quociente p q
  |p < q = 0
  |otherwise = 1 + quociente(p-q) q

resto::Int->Int->Int
resto p q
  |p < q = p
  |otherwise = resto(p-q) q

potencia::Int->Int->Int
potencia base expo
  |expo == 0 = 1
  |expo > 0 = base * potencia base (expo-1)

potenciacasado::Float->Float->Float
potenciacasado x n = x * potenciacasado base (expo -1)

nand::Boll->Boll->Boll
nand a b = if a == False || b == False
           then True else False

nand'::Boll->Bool->Bool
nand' True True = False
nand' _ _ = True

