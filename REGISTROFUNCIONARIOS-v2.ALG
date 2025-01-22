algoritmo "RegistroFuncionariosPersonalizado"
// Disciplina   : [Algoritmo e Programação]
// Professor   : Pedro Brandão Neto 
// Descrição   : Registro de funcionários
// Autor(a)    : André da Silva Lopes
// Data atual  : 19/01/2025
var
    // Vetores para registrar os dados
    sexo: vetor[1..10] de caractere
    salario: vetor[1..10] de real

    // Variáveis para cálculos e verificações
    contM, contF: inteiro
    somaM, mediaM: real
    maiorF: real
    i: inteiro
inicio
    // Mensagem de introdução personalizada
    escreval("Bem-vindo ao Sistema de Registro de Funcionários!")
    escreval("Este programa solicitará o sexo e o salário de 10 funcionários.")
    escreval("Ao final, seráo exibidos:")
    escreval("1. A quantidade de funcionários de cada sexo;")
    escreval("2. A média dos salários masculinos;")
    escreval("3. O maior salário registrado entre as mulheres.")
    escreval("----------------------------------------------")

    // Inicializações
    contM <- 0
    contF <- 0
    somaM <- 0
    maiorF <- 0

    // Entrada de dados
    para i de 1 ate 10 faca
        escreval("Informe o sexo do funcionário ", i, " (M ou F): ")
        leia(sexo[i])
        escreval("Informe o salário do funcionário ", i, ": ")
        leia(salario[i])

        // Verificação do sexo (alterando a ordem para primeiro feminino e depois masculino)
        se (sexo[i] = "F") ou (sexo[i] = "f") entao
            contF <- contF + 1
            se (salario[i] > maiorF) entao
                maiorF <- salario[i]
            fimse
        senao
            se (sexo[i] = "M") ou (sexo[i] = "m") entao
                contM <- contM + 1
                somaM <- somaM + salario[i]
            fimse
        fimse
    fimpara

    // Cálculo da média masculina
    se contM > 0 entao
        mediaM <- somaM / contM
    senao
        mediaM <- 0
    fimse

    // Exibição dos resultados
    escreval("----------------------------------------------")
    escreval("RESULTADOS FINAIS:")
    escreval("Quantidade de funcionários do sexo masculino: ", contM)
    escreval("Quantidade de funcionárias do sexo feminino: ", contF)

    se contM > 0 entao
        escreval("Média salarial dos homens: ", mediaM:0:2)
    senao
        escreval("Não houve funcionários do sexo masculino.")
    fimse

    se contF > 0 entao
        escreval("Maior salário entre as mulheres: ", maiorF:0:2)
    senao
        escreval("Não houve funcionárias registradas.")
    fimse
fimalgoritmo
