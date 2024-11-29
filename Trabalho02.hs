import System.IO

{-

Trabalho 2 - Programação Funcional

Grupo:
Ana Clara de Carvalho
João Vitor Feijó
Jean Souto

Sobre: O programa é um sistema de gerenciamento de dados de estudantes em Haskell que permite a realização de quatro operações 
principais: adicionar um estudante, buscar um estudante por ID (matricula), atualizar informações de um estudante por ID e sair do programa.

-}

type Estudante = (Int, String, String, Int)
type Matricula = Int
type Nome = String
type Sobrenome = String
type Idade = Int

bancoDeDados :: [Estudante]
bancoDeDados = []

adicionarEstudante :: [Estudante] -> IO [Estudante]
adicionarEstudante dados = do
    putStrLn ""
    putStrLn "Digite a matrícula do estudante:"
    matricula <- readLn
    putStrLn "Digite o primeiro nome do estudante:"
    nome <- getLine
    putStrLn "Digite o sobrenome do estudante:"
    sobrenome <- getLine
    putStrLn "Digite a idade do estudante:"
    idade <- readLn
    let novoEstudante = (matricula, nome, sobrenome, idade)
    return (novoEstudante : dados)

buscaEstudante :: [Estudante] -> IO()
buscaEstudante dados = do
    putStrLn "\nDigite o ID do estudante que deseja recuperar:"
    busca <- readLn
    let result = filter (\(matricula, _, _, _) -> matricula == busca) dados
    case result of
      [] -> putStrLn "Estudante não encontrado."
      (matricula, nome, sobrenome, idade):_ ->
        putStrLn $ "\nMatrícula: " ++ show matricula ++ "\nNome: " ++ nome ++ " " ++ sobrenome ++ "\nIdade: " ++ show idade

atualizaInformacoes :: [Estudante] -> IO [Estudante]
atualizaInformacoes dados = do
    putStrLn "\nDigite a matrícula do estudante que deseja atualizar:"
    aux <- readLn
    novoDado <- mapM (\estudante@(matricula, _, _, _) ->
                        if matricula == aux
                        then do
                            putStrLn "Digite o novo primeiro nome do estudante:"
                            novoNome <- getLine
                            putStrLn "Digite o novo sobrenome do estudante:"
                            novoSobrenome <- getLine
                            putStrLn "Digite a nova idade do estudante:"
                            novaIdade <- readLn
                            return (matricula, novoNome, novoSobrenome, novaIdade)
                        else return estudante
                    ) dados
    return novoDado


menu :: [Estudante] -> IO()
menu dados = do
    putStrLn ""
    putStrLn "1. Adicionar estudante"
    putStrLn "2. Recuperar estudante por matrícula"
    putStrLn "3. Atualizar informações do estudante"
    putStrLn "4. Sair"
    putStrLn "Escolha uma opção:"
    op <- getLine
    case op of
      "1" -> do
        novoDado <- adicionarEstudante dados 
        putStrLn ""
        print novoDado
        menu novoDado
      "2" -> do
        buscaEstudante dados 
        menu dados
      "3" -> do
         novoDado <- atualizaInformacoes dados 
         putStrLn ""
         print novoDado
         menu novoDado
      "4" -> putStrLn "\nPrograma finalizado com sucesso."
      _   -> do
        putStrLn "\nOpção inválida. Tente novamente."
        menu dados

main :: IO()
main = do 
    putStrLn ""
    putStrLn "-------------------------------"
    putStrLn "|        GERENCIAMENTO        |"
    putStrLn "|        DE ESTUDANTES        |"
    putStrLn "-------------------------------"
    menu bancoDeDados