# Radar Black Friday

## Resumo:
Partindo de uma necessidade pessoal em comprar uma TV Smart, venho acompanhando os preços do produto específico desde Agosto deste ano, mas sempre adiando para o momento da tão falada Black Friday. Sendo assim e relembrando aquela famosa frase: "A Black Friday é muito boa. Você paga a metade do dobro", resolvi criar uma aplicação que diariamente realiza a raspagem de sites da WEB coletando o preço de diversos produtos/lojas e armazenando em um banco de dados. 

Irei utilizar essas informações para avaliar os seguintes pontos:
* Os preços aumentam antes da Black Friday?
* Os preços realmente foram reduzidos durante o evento? 
* Quais categorias sofrem maiores reduções nos preços? 
* Quais lojas aplicaram maiores descontos? 

Alguns pontos que devem ser levados em consideração e que podem afetar a analise:
* As lojas podem não reduzir o preço do produto, mais sim aplicar cupons de desconto
* O inicio do processo de coleta aconteceu no dia 28.10.2021, algumas lojas já estavam prometendo antecipação da Black Friday.

Ainda que os resultados não seja tão satisfatório, será uma experiência excelente para o meu desenvolvimento. 

Deixo canal aberto para todos que se sentirem a vontade em contribuir com esse projeto.


## Pipeline do Projeto

1. Coleta dos Dados (Em andamento) | _Previsão de Conclusão: 30/11/2021_
2. Modelagem e Tratativa dos Dados (Em andamento) | _Previsão de Conclusão: 30/11/2021_
3. Análise Exploratória (Pendente) | _Previsão de Conclusão: 15/11/2021_
4. Construção do Relatório de Acompanhamento (Pendente) | _Previsão de Conclusão: 20/11/2021_
5. Publicação dos Resultados (Pendente) | _Previsão de Conclusão: 21/11/2021_


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



