  # DesafioSicredi

  ## 1) Utilização

  Executar o Dump do banco de dados em um servidor mysql
  atualizar as varives no arquivo main.py:
  banco="jdbc:mysql://localhost/sicooperative"
  Com o caminho do banco de dados
  caminho="C:/Users/mauri/OneDrive/Desktop/DesafioSicredi"
  Com o Caminho onde quer se salvar o arquivo
  executar o arquivo main.py
  Importante, a versão de JDK que foi testado é a 11.0.13, as versões mais recentes apresentaram instabilidade

  ## 2) Lógica

  Como a ingesão de dados envolvia apenas dados estruturados, optei por utiizar o spark como framework de etl. carregando a massa de dados para a memória e usando o dataframe do spark, pude aplicar linguagem SQL sobre eles fazendo os joins com um codigo limpo. Se no contexto do cluster a massa de dados superasse o total de ram disponivel o spark usario o disco degrando a performace mas ainda sim em um nivel satisfatorio. Se chegassemos ao ponto desta solução fica com um tempo inaceitavel, ai poderiamos trabalhar dentro do banco relacional criando views com menor periodo de tempo e importar a informação apartir delas para voltar a ficafr do tamnho da RAM ou trocar o dataframe por um RDD bruto, e ir aplicando funções de map reduce para conseguirmos uma base mais otimizada.
  A liguagem que utlizei para tabalhar com o spark foi o Python, principalmente pela facilidiade de converter o dataframe Spark em Pandas Dataframe, isso facilita muito, para plugar alum modelo de ML ou analise que o cientista de dados ja tenha feito ou ate mesmo para extriar uma amostra da base dentro de criterios estabelecidos.

  ## 3) Dificuldades

  Me propuz a fazer todo o desafio em ambiente windows (justamente para testar a viabilidade) e as configurações de ambiente para subir o spark fora do ecosistema linux real são realmente longas. Um ponto que chamou a minha atenção é o impacto da versão da JDK sobre o Spark e Python, comecei com uma JDK17 e o PySpark simplismente não rodava no python mas abri o shell do spark, testei varias versões de JDK e algumas quase tudo rodava, mas a funcionalidade do SQL não, até chegar na JDK11 onde todo o sistema  se estabilizou.
