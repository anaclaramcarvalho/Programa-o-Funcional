module Main where

main :: IO()
main = do putStrLn "blablabla"
          comparar numero

comparar :: Int -> IO()
comparar numero =
     do putStrLn "Adivinhe o numero entre 1 e 100: "
        palpite <- getLine
        putStr(show(palpite))
        if(read palpite) < numero
           then do putStrLn "O numero digitado é menor do que eu pensei!"
                     comparar numero
           else if (read palpite) > numero
                     then do putStrLn "O numero digitado é maior do que eu pensei!"
                           comparar numero
                     else do putStrLn "PARABENS VOCE ACERTOU O NÚMERO!"