# Import PySpark
import pyspark
from pyspark.sql import SparkSession
from pyspark.sql import SQLContext
from pyspark.sql import Row
import pandas as pd
<<<<<<< HEAD
banco="jdbc:mysql://localhost/sicooperative"    
caminho="C:/Users/mauri/OneDrive/Desktop/DesafioSicredi"
=======
>>>>>>> 4664027c9b05a41391b87ea79c348eeab0eff761
#Cria SparkSession
spSession = SparkSession.builder.master("local[1]").appName("extratordedados").getOrCreate()
sc=spSession.sparkContext   
print("Iniciando ETL")
print(sc)
#conecta com tabelas
movimentoRDD = spSession.read.format("jdbc").options(
<<<<<<< HEAD
    url = banco,
=======
    url = "jdbc:mysql://localhost/sicooperative",
>>>>>>> 4664027c9b05a41391b87ea79c348eeab0eff761
    serverTimezone = "UTC",
    driver = "com.mysql.jdbc.Driver",
    dbtable = "movimento",
    user = "root",
    password = "123").load()
associadoRDD = spSession.read.format("jdbc").options(
<<<<<<< HEAD
    url = banco,
=======
    url = "jdbc:mysql://localhost/sicooperative",
>>>>>>> 4664027c9b05a41391b87ea79c348eeab0eff761
    serverTimezone = "UTC",
    driver = "com.mysql.jdbc.Driver",
    dbtable = "associado",
    user = "root",
    password = "123").load()
contaRDD = spSession.read.format("jdbc").options(
<<<<<<< HEAD
    url = banco,
=======
    url = "jdbc:mysql://localhost/sicooperative",
>>>>>>> 4664027c9b05a41391b87ea79c348eeab0eff761
    serverTimezone = "UTC",
    driver = "com.mysql.jdbc.Driver",
    dbtable = "conta",
    user = "root",
    password = "123").load()    
cartaoRDD = spSession.read.format("jdbc").options(
<<<<<<< HEAD
    url = banco,
=======
    url = "jdbc:mysql://localhost/sicooperative",
>>>>>>> 4664027c9b05a41391b87ea79c348eeab0eff761
    serverTimezone = "UTC",
    driver = "com.mysql.jdbc.Driver",
    dbtable = "cartao",
    user = "root",
    password = "123").load()        
#Valida informações
movimentoRDD.show(5)  
associadoRDD.show(5)
contaRDD.show(5)
cartaoRDD.show(5)
#carrega tableas para memoria
movimentoRDD.registerTempTable("movimentoRDD")
associadoRDD.registerTempTable("associadoRDD")
contaRDD.registerTempTable("contaRDD")
cartaoRDD.registerTempTable("cartaoRDD")
#varivel que armazena a consulta para minipulação dos dados
consulta="SELECT associadoRDD.nome as nome_associado,associadoRDD.sobrenome as sobrenome_associado,associadoRDD.idade as idade_associado,movimentoRDD.vlr_transacao as vlr_transacao_movimento,movimentoRDD.des_transacao as des_transacao_movimento,movimentoRDD.data_movimento as data_movimento,cartaoRDD.num_cartao as numero_cartao,cartaoRDD.nome_impresso as nome_impresso_cartao,cartaoRDD.data_criacao as data_criacao_cartao,contaRDD.tipo_conta as tipo_conta,contaRDD.data_criacao as data_criacao_conta FROM movimentoRDD  join cartaoRDD  on movimentoRDD.id_cartao=cartaoRDD.id left join contaRDD  on cartaoRDD.id_conta=contaRDD.id left join associadoRDD  on contaRDD.id_associado=associadoRDD.id"
#execução da consult nas tabelas em memória
df=spSession.sql(consulta)
#valida resultado
df.show(5)
#coverte o DataFrame Spark para DataFrame Pandas e exporta para CSV
    #nesta linha trocar para o caminho desejado
<<<<<<< HEAD
df.toPandas().to_csv(f'{caminho}/base.csv')
=======
df.toPandas().to_csv('C:/Users/mauri/OneDrive/Desktop/DesafioSicredi/base.csv')
>>>>>>> 4664027c9b05a41391b87ea79c348eeab0eff761
print("Fim do Processo de ETL")