Algoritmo "RegistroFuncionarios"
// Disciplina   : [Algoritmo e Programação]
// Professor   : Pedro Brandão Neto 
// Descrição   : Registro de funcionários
// Autor(a)    : André da Silva Lopes
// Data atual  : 21/01/2025
Var
   sexo: vetor[1..10] de caractere
   salario: vetor[1..10] de real
   i, contM, contF: inteiro
   somaSalarioM, mediaSalarioM, maiorSalarioF, totalFolha: real

Inicio
   // Mensagem de introdução personalizada
   EscrevaL("============================================")
   EscrevaL("  Sistema de Registro de Funcionários v3.0  ")
   EscrevaL("============================================")
   EscrevaL("Bem-vindo ao Sistema de Registro de Funcionários!")
   EscrevaL("Este programa solicitará o sexo e o salário de 10 funcionários.")
   EscrevaL("Ao final, serão exibidos:")
   EscrevaL("1. A quantidade de funcionários de cada sexo;")
   EscrevaL("2. A média dos salários masculinos;")
   EscrevaL("3. O maior salário registrado entre as mulheres.")
   EscrevaL("--------------------------------------------")

   // Inicialização das variáveis
   contM <- 0
   contF <- 0
   somaSalarioM <- 0
   maiorSalarioF <- 0
   totalFolha <- 0
   
   // Entrada de dados
   Para i de 1 ate 10 faca
      Repita
         Escreva("Digite o sexo do funcionário ", i, " (M/F): ")
         Leia(sexo[i])
         sexo[i] <- maiusc(sexo[i])  // Converter para maiúsculo
      Ate (sexo[i] = "M") ou (sexo[i] = "F")
      
      Repita
         Escreva("Digite o salário do funcionário ", i, " (R$): ")
         Leia(salario[i])
      Ate salario[i] > 0
      
      // Contagem por sexo e cálculos
      Se (maiusc(sexo[i]) = "M") entao
         contM <- contM + 1
         somaSalarioM <- somaSalarioM + salario[i]
      senao
         Se (maiusc(sexo[i]) = "F") entao
            contF <- contF + 1
            Se (salario[i] > maiorSalarioF) entao
               maiorSalarioF <- salario[i]
            FimSe
         FimSe
      FimSe
   FimPara
   
   // Cálculo da média salarial masculina
   Se contM > 0 entao
      mediaSalarioM <- somaSalarioM / contM
   FimSe

   // Add total payroll calculation
   Para i de 1 ate 10 faca
      totalFolha <- totalFolha + salario[i]
   FimPara
   
   // Exibição dos resultados
   EscrevaL("============================================")
   EscrevaL("              RESULTADOS FINAIS             ")
   EscrevaL("============================================")
   EscrevaL("----------------------------------------")
   EscrevaL("RESULTADOS:")
   EscrevaL("Quantidade de funcionários do sexo masculino: ", contM)
   EscrevaL("Quantidade de funcionários do sexo feminino: ", contF)
   
   Se contM > 0 entao
      EscrevaL("Média salarial dos funcionários do sexo masculino: R$ ", mediaSalarioM:8:2)
   Senao
      EscrevaL("Não há funcionários do sexo masculino cadastrados.")
   FimSe
   
   Se contF > 0 entao
      EscrevaL("Maior salário entre funcionárias: R$ ", maiorSalarioF:8:2)
   Senao
      EscrevaL("Não há funcionárias cadastradas.")
   FimSe

   EscrevaL("Total da folha de pagamento: R$ ", totalFolha:10:2)
   EscrevaL("Média salarial geral: R$ ", (totalFolha/10):10:2)

   // Improved results display with percentages
   Se contM > 0 entao
      EscrevaL("Percentual de funcionários masculinos: ", (contM/10)*100:4:1, "%")
   FimSe

   Se contF > 0 entao
      EscrevaL("Percentual de funcionárias femininas: ", (contF/10)*100:4:1, "%")
   FimSe

Fimalgoritmo