media::IO()
media = do putStrLn "Digite sua primeira nota: "
            nota1 <- readLn::IO Float
            putStrLn "Digite sua segunda nota: "
            nota2 <- readLn::IO Float
            putStrLn "Digite sua terceira nota: "
            nota3 <- readLn::IO Float
            let m = (nota1+nota2+nota3)/3
            putStrLn (aluno m)

aluno:: Float->String
aluno m
  | m < 3 = "reprovado"
  | m >= 3 && m <= 7 = "Exame especial"
  | m > 7 = "Aprovado"

idade::IO()
idade = do putStrLn "Digite sua idade: "
            i <- readLn::IO Int
            putStrLn (classe i)

classe:: Int->String
classe i
  | i < 16 = "Não eleitor!"
  | i >= 18 && i < 65 = "Obrigatorio!"
  | otherwise = "Facultativo!"

menu::IO()
menu = do putStrLn "1-Salva frase em arquivo."
          putStrLn "2-Imprime o conteudo do arquivo."
          putStrLn "3-Sair"
          putStrLn "Digite uma opção: "
          opcao <- readLn::IO Int
          case opcao of
            1 -> do putStrLn "Digite uma frase: "
                    frase <- getLine
                    a_direita frase
                    putStrLn "Frase salva."
            2 -> r_direta
            _ -> putStrLn "Opção Invalida."
          if opcao /= 3 then menu else putStrLn "Saindo..."