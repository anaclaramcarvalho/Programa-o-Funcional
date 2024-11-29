par::Int->Int
par n = if even n then 1 else 0

impar::Int->Int
impar n = if even n then 0 else 1

maior::Int->Int->Int
maior n m = if n <m them m else n

menor::Int->Int->Int
menor n m = if n > m them m else n

parProf::Int->Bool
parProf n = if mod n 2 == 0 then TRUE else False

imparProf::Int->Bool
imparProf n = not(parProf n)