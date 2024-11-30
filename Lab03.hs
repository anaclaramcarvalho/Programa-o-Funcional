areaCirculo::Float->Float
areaCirculo d = pi*r*r where r = d/2

numRaizes::Float->Float->Float->Int
numRaizes a b c
     |delta > 0 = 2
     |delta == 0 = 1
     |otherwise = 0
  where delta = b*b - 4*a*c

maior::Int->Int->Int
maior x y = if x < y then y else x

menor::Int->Int->Int
menor x y = if x > y then y else x

diferenca::Int->Int->Int
diferenca x y = l - s
                where l = maior x y
                      s = menor x y

menu::Float->Float->Int->Float
menu a b op
   |op == 1 = a + b
   |op == 2 = if a>b then a-b else b-a
   |op == 3 = a * b
   |op == 4 = if x > y && y/=0 then x/y else if y >=x && x/=0 then y/x else -1
   |otherwise = -1

