dobro ::Int->Int
dobro n = n * 2

quadr::Int->Int
quadr n = n *4

quadrProf::Int->Int
quadrProf n = dobro(dobro n )

soma2::Int->Int->Int
soma2 x y = x + y

som4::Int->Int->Int->Int->Int
soma4 x y z w = x+w+z+y

soma4Prof::Int->Int->Int->Int->Int
soma4Prof x y z w = soma2(soma2 x y) (soma2 z w)

misterio::Int->Int->Int->Int->Int
misterio x y z w = soma2(soma2 x y) (soma2 z w)

hip::Float->FLoat->Float
hip x y = sqrt(x*x + y*y)

