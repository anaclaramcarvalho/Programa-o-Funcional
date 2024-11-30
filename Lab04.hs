palindromo::IO()
palindromo = do puStrLn "Digite a frase: "
                frase <- getLine
                if frase == reverse frase the putStrLn "e um palindromo" else putStrLn "nao e palindromo"

produto::IO()
produto = do putStrLn "Digite o primeiro numero: "
             num1 <- readLn::IO FLoat
             putStrLn "Digite o segundo numero: "
             num2 <- readLn::IO Float
             putStrLn "Digite o terceiro numero: "
             num3 <- readLn::IO Float
             putStrLn(show(num1+num2+num3))

celsius::Double ->Double
celsius f = (5/9)*(f-32)

temperatura = do putStrLn "Digite a temperatura em fahrenheit: "
                 f <- readLn::IO Double
                 putStr "A temperatura em Fahrenheit e "
                 putStr(show(f))
                 putStr "A temperatura em celciues e "
                 putStr(show(celsius f))