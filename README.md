# Radar Black Friday

![](bin/imgs/capa.jpg)


## Resumo:
<p>
"METADE DO DOBRO", Verdade ou Mito? <br>

Que tal descobrir isso com aquele que nunca mente? Os dados. <br>

Partindo de uma necessidade pessoal de comprar uma TV e um Smartphone combinada com o objetivo de compartilhar cada vez mais conteúdo na comunidade de dados, resolvi criar uma Aplicação que diariamente acessa um determinado site, coleta os preços dos produtos e sua determinada loja e armazena tudo isso em um banco de dados. 

</p>

A ideia desse projeto é responder as seguintes perguntas:
* Os preços aumentam antes da Black Friday?
* Os preços realmente foram reduzidos durante o evento? 
* Quais categorias sofrem maiores reduções nos preços? 
* Quais lojas aplicaram maiores descontos? 

>Alguns pontos que devem ser levados em consideração e que podem afetar a analise:
>* As lojas podem não reduzir o preço do produto, mais sim aplicar cupons de desconto
>* O inicio do processo de coleta aconteceu no dia 28.10.2021, algumas lojas já estavam prometendo antecipação da Black Friday.


>Ainda que os resultados não seja tão satisfatórios, será uma experiência excelente para o meu desenvolvimento profissional e espero ajudar a comunidade de dados de alguma forma.


Deixo canal aberto para todos que se sentirem a vontade em contribuir com esse projeto.


## Pipeline do Projeto

1. **Coleta dos Dados** ```Em andamento``` ```Conclusão em: 30/11/2021```<br>
   Arquivos: [/Notebooks](/Notebooks)
   
2. **Modelagem e Tratativa dos Dados** ```Em andamento``` ```Conclusão em: 30/11/2021```<br>
   Arquivos: [Amostra de Dados Coletados](amostra_dados.zip)
   
3. **Análise Exploratória** ```Pendente``` ```Conclusão em: 15/11/2021```<br>
   Arquivos: -
   
4. **Construção do Relatório de Acompanhamento** ```Pendente``` ```Conclusão em: 20/11/2021```<br>
   Arquivos: -
   
5. **Publicação dos Resultados** ```Pendente``` ```Conclusão em: 21/11/2021```<br>
   Arquivos: -


## Técnicas e Desafios do Projeto

**Coleta dos Dados**<br>
Está sendo utilizando um banco de dados SQLite para armazenamento dos dados e algumas técnicas de WEB Scraping com Libs BS4 e UrlLib do Python. 
<br>

**Modelagem e Tratativa dos Dados**<br>
Para tratar os dados estou utilizando comandos SQL dentro do SQLite.<br>
Os principais desafios são:
* O produto muda de nome de um dia para outro o que causa "furos" entre as datas
* Existe o mesmo produto anunciado várias vezes em uma só loja. 

**Análise Exploratória**<br>
Será utilizado o SQL e Power BI para esta análise.<br>

**Construção do Relatório**<br>
Relatório será construído no Power BI.<br>

**Publicação dos Resultados**<br>
Link do relatório será divulgado no Linkedin juntamente com análises dos resultados.<br>



