import System.Random
import System.IO 

{- 
Programação Funcional Extra

Integrantes:
Ana Clara Carvalho
Joao Vitor Feijó 

-}

main :: IO()
main = do
    hSetBuffering stdout NoBuffering
    putStrLn ""
    putStrLn "-------------------------------"
    putStrLn "|           JOGO DE           |"
    putStrLn "|          ADVINHAÇÃO         |"
    putStrLn "-------------------------------"
    geraAleatorio

geraAleatorio :: IO()
geraAleatorio = do
    aleatorio <- randomRIO (1,100) :: IO Int 
    putStrLn "\nEstou pensando em um número de 1 a 100. Tente Advinhar!"
    contador aleatorio 1

contador :: Int->Int->IO()
contador aleatorio tentativas = do 
    putStrLn ""
    putStrLn $ "Tentativa " ++ show tentativas ++ ":"
    putStrLn "Digite seu palpite: "
    palpite <- readLn :: IO Int
    if palpite == aleatorio
        then do 
            putStrLn $ "Você acertou!! Em " ++ show tentativas ++ " tentativas."
            gravaArquivo tentativas
            novoJogo
        else if palpite > aleatorio
            then do 
                putStrLn "Quase, tente um número menor"
                contador aleatorio (tentativas + 1)
            else do
                putStrLn "Quase, tente um número maior"
                contador aleatorio (tentativas + 1)

novoJogo :: IO()
novoJogo = do 
    putStrLn ""
    putStrLn "Você deseja jogar novamente? s (SIM) e n (NÃO)"
    opcao <- getLine
    if opcao == "s" 
       then do main 
    else putStrLn "Obrigado por jogar :)"

gravaArquivo :: Int->IO()
gravaArquivo tentativas = do 
    aux <- readFile "highscore.txt"
    let highscore = read aux :: Int 
    if tentativas < highscore
       then do 
           writeFile "highscore.txt" (show tentativas)
           putStrLn "Parabéns! Você bateu seu recorde."
           else putStrLn "Continue tentando!"