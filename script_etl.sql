/* 
	---------------- SCRIPT PARA TRATATIVA DOS DADOS COLETADOS ---------------------
	Data criação do Script: 16.11.2021
	Responsável: Claudio Vinicius
	Data Última Atualização: --- 
	Atualizado por: 
	
	
	Etapas:
	
	1. Criação da Tabela DM_CALENDAR que servirá como base para definição dos dias que deverão ser coletados
	2. Insert de Dados da Tabela DM_CALENDAR
	3. Criação da Tabela DM_ECOMMERCE que servirá como DE PARA dos Ecommerce e agrupamento
	4. Insert de Dados da Tabela DM_ECOMMERCE
	5. Script de ETL que será utilizado no Power BI para análise dos dados.
	
*/


USE BlackFriday;



-- CRIAR TABELA DIMENSÃO PARA O CALENDÁRIO

---> Script criação da Tabela

CREATE TABLE BlackFriday.dbo.dm_calendar (
	dt_base date NULL,
	chave int NULL
);

---> Importação das Datas

	insert into dm_calendar values ('2021-10-28',1);
	insert into dm_calendar values ('2021-10-29',1);
	insert into dm_calendar values ('2021-10-30',1);
	insert into dm_calendar values ('2021-10-31',1);
	insert into dm_calendar values ('2021-11-01',1);
	insert into dm_calendar values ('2021-11-02',1);
	insert into dm_calendar values ('2021-11-03',1);
	insert into dm_calendar values ('2021-11-04',1);
	insert into dm_calendar values ('2021-11-05',1);
	insert into dm_calendar values ('2021-11-06',1);
	insert into dm_calendar values ('2021-11-07',1);
	insert into dm_calendar values ('2021-11-08',1);
	insert into dm_calendar values ('2021-11-09',1);
	insert into dm_calendar values ('2021-11-10',1);
	insert into dm_calendar values ('2021-11-11',1);
	insert into dm_calendar values ('2021-11-12',1);
	insert into dm_calendar values ('2021-11-13',1);
	insert into dm_calendar values ('2021-11-14',1);
	insert into dm_calendar values ('2021-11-15',1);
	insert into dm_calendar values ('2021-11-16',1);
	insert into dm_calendar values ('2021-11-17',1);
	insert into dm_calendar values ('2021-11-18',1);
	insert into dm_calendar values ('2021-11-19',1);
	insert into dm_calendar values ('2021-11-20',1);
	insert into dm_calendar values ('2021-11-21',1);
	insert into dm_calendar values ('2021-11-22',1);
	insert into dm_calendar values ('2021-11-23',1);
	insert into dm_calendar values ('2021-11-24',1);
	insert into dm_calendar values ('2021-11-25',1);
	insert into dm_calendar values ('2021-11-26',1);
	insert into dm_calendar values ('2021-11-27',1);
	insert into dm_calendar values ('2021-11-28',1);
	insert into dm_calendar values ('2021-11-29',1);
	insert into dm_calendar values ('2021-11-30',1);


-- CRIAR TABELA DIMENSÃO PARA ECOMMERCE

---> Script criação da Tabela

	CREATE TABLE BlackFriday.dbo.dm_ecommerce (
		ds_ecommerce varchar(50) COLLATE Latin1_General_CI_AS NULL,
		group_ecommerce varchar(50) COLLATE Latin1_General_CI_AS NULL,
		ecommerce_padronizado varchar(50) COLLATE Latin1_General_CI_AS NULL,
		ecommerce_fantasia varchar(50) COLLATE Latin1_General_CI_AS NULL
);

---> Insert dos Dados

	Insert into dm_ecommerce values ('Americanas', 'Top Varejo', 'Americanas', 'Americanos') ;
	Insert into dm_ecommerce values ('_menor_preco_produto', 'Top Varejo', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Casas Bahia', 'Top Varejo', 'Casas Bahia', 'Casas Minas');
	Insert into dm_ecommerce values ('Extra', 'Top Varejo', 'Extra', 'Extraordinário');
	Insert into dm_ecommerce values ('Shoptime', 'Top Varejo', 'Shoptime', 'Shoptempo');
	Insert into dm_ecommerce values ('Pontofrio', 'Top Varejo', 'Pontofrio', 'Pontoquente');
	Insert into dm_ecommerce values ('Submarino', 'Top Varejo', 'Submarino', 'Submerso');
	Insert into dm_ecommerce values ('Amazon', 'Top Varejo', 'Amazon', 'Amazonia');
	Insert into dm_ecommerce values ('Carrefour', 'Top Varejo', 'Carrefour', 'Carrefull');
	Insert into dm_ecommerce values ('Magazine Luiza', 'Top Varejo', 'Magazine Luiza', 'Magazine Maria');
	Insert into dm_ecommerce values ('Magazine Luiza.', 'Top Varejo', 'Magazine Luiza', 'Magazine Maria');
	Insert into dm_ecommerce values ('Fast Shop', 'Top Varejo', 'Fast Shop', 'Rapido Shop');
	Insert into dm_ecommerce values ('Mercado Livre', 'Top Varejo', 'Mercado Livre', 'Mercado Preso');
	Insert into dm_ecommerce values ('Casa & Video', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Angeloni', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Webcontinental', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('KaBuM!', 'Top Varejo', 'Kabum!', 'Explosão');
	Insert into dm_ecommerce values ('Colombo', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('eFácil', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Zema', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Mobly', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Frigelar', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Nagem', 'Top Varejo', 'Nagem', 'Navem');
	Insert into dm_ecommerce values ('MadeiraMadeira', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Dufrio', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Eletrum', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Havan', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('MOBCOMSTORE', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Brastemp', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Compra Certa', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Leveros', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Novo Mundo', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Leroy Merlin', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('FRIOPEÇAS', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Girafa', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Loja Samsung Oficial', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Dell Pequenas Empresas', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('STR Ar Condicionado', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Olist', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Consul', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Dell Loja Oficial', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Le Biscuit', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Kalunga', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('NEW YORK SHOP', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Philco', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Aliexpress  - Internacional', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Britânia', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Electrolux', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Motorola', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Continental Center', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Oficina dos Bits', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('TY Informatica', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Mega Mamute', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Avenue Prime', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Fujioka', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Clima Rio', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Mmplace', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Lojas MM', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Arno Parceiro', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Gynshop', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Acer Brasil', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Mallory Oficial', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('JR Store', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Compulink', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('SuperDig', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Giralar', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Coelho Comercio', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Cell Digital', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Berlanda', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Tá barato, Tô levando', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Equipe Total', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Lojas Dular', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Inpower Eletrônicos', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Achei Pneus', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Leonfer', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Bits & Bytes', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Spell', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Lojas Marabraz', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Trilar', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Mpozenato Móveis', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Detona Shop', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Shoptem', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Lojas IM', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Mega Digital', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Mua Commerce', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Tramontina', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Tricae', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Midea Carrier', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Loja Mundo On', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Onofre Eletro', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Lojas Presidente', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Mappin', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Móveis Brasília', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('iPlace', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Premium Estofados', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Continental Brasil', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Pernambucanas', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Macbuy Store', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Viver Casa e Gourmet Parceiro', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Oster', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('DrogaRaia.com', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Celtop', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Central Ar', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Casa Ferrari', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Lumi Energy', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Cook Eletroraro', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('G-Fire', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Lojas Certel', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Compra Certa+', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('MasterTronic', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Telhanorte', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Loja DoceLar', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Loja Oficial Apple', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Yell Mobile', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('França Eletro', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Pichau Informática', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('MService', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('So Fast', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('VAIO', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('O Mercadão Digital', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Lojão Rio do Peixe', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('PagDepois', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Makeda', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Ferpam', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('MainShop', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Lojas Obino', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Poloar', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Cadence', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Gimba.com', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Home Supreme', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Login Informática', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Estrela 10', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Doural Presentes', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('LCG ELETRO', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('SPICY', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Trocafone', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Centauro', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Everex Computer', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Cavuca', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Marin Brasil', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Comando Digital', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Shop Smart Find', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Mirage', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Flash Company', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Kärcher', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Gran Belo', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Outlet das Fábricas', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Memoria Distribuidora', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Moveis TemTudo', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Laptopshop', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('MobiliStore.com.br', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Madesa Móveis', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Emania', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('eletrofácil', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('WayTechBr', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('KitchenAid', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Shop JM', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Venax', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Giro lar', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Loja Mueller', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Moderna Mobília', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Lojas TaQi', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Amo Morar', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Supriti Eletro', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('CellFone', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Lojas Toda Casa', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Drogasil.com', 'Marca Direta', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Wanke Store', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Smarts Carol', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Brasil Tronic', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Magazine Decor', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('SUGGAR ELETRODOMÉSTICOS', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Farma 22', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Shop Next', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Farmadelivery', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('DULAR', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Spirit', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Casah', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('DC Importação', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Processtec', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('Total AR', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');
	Insert into dm_ecommerce values ('BringIT', 'Outras Lojas', 'Outras Lojas', 'Outras Lojas');


-- CRIAR TABELA FINAL PARA STORYTELLING

--> Etapas do ETL:
	-- 1. Nem todos os produtos tinham o preço no dia. Então, para datas que não tinham o valor coletado, o preço do dia anterior foi repetido. 
	-- 2. Separamos as lojas que representam 85% dos preços e definimos nomes para elas como Loja 01 a Loja 14
	-- 3. As demais lojas agrupamos em "Outras Lojas"
	-- 4. Foi retirada a loja chamada '_menor_preco_produto'. Essa será refeita após tratativas

 WITH
 	prods as (
 		select DISTINCT ds_category, ds_subcategory, ds_product, prd.ds_ecommerce, dme.group_ecommerce, dme.ecommerce_padronizado, dme.ecommerce_fantasia, 1 chave  from scraping_results prd
 		left join  dm_ecommerce dme on prd.ds_ecommerce = dme.ds_ecommerce
 	),
 	precos as (
 		select sr.*, dme.ecommerce_padronizado, 1 chave from scraping_results sr 	
 		left join  dm_ecommerce dme on sr.ds_ecommerce = dme.ds_ecommerce
 	),	
 	db_base as (
 		select distinct
 			prd.ds_category,
 			prd.ds_subcategory,
 			prd.ds_product,
 			prd.ecommerce_padronizado,
 			dmc.dt_base from prods prd
 		left join dm_calendar dmc on prd.chave = dmc.chave
 		where ds_ecommerce <> '_menor_preco_produto'
 	),
 	db_base2 as (
	 	Select
	 		db.*
	 		,(Select max(dt_insert) from precos pr 
	 			where pr.ds_category = db.ds_category 
	 			and pr.ds_subcategory = db.ds_subcategory 
	 			and pr.ds_product = db.ds_product 
	 			and pr.ecommerce_padronizado = db.ecommerce_padronizado
	 			and pr.dt_insert < db.dt_base ) LastDate
	 		,(Select min(dt_insert) from precos pr 
	 			where pr.ds_category = db.ds_category 
	 			and pr.ds_subcategory = db.ds_subcategory 
	 			and pr.ds_product = db.ds_product 
	 			and pr.ecommerce_padronizado = db.ecommerce_padronizado
	 			and pr.dt_insert > db.dt_base ) NextDate 			
	 		,(select min(price) menor from precos pr 
	 			where pr.ds_category = db.ds_category 
	 			and pr.ds_subcategory = db.ds_subcategory 
	 			and pr.ds_product = db.ds_product 
	 			and pr.ecommerce_padronizado = db.ecommerce_padronizado
	 			and pr.dt_insert = db.dt_base
	 		) menor_preco
	 	from db_base db
 	)
 	Select 
 		*
 		,Case 
 			When menor_preco is not null then menor_preco
 			when LastDate is not null then 
	 				(Select min(price) from precos pr 
		 			where pr.ds_category = db.ds_category 
		 			and pr.ds_subcategory = db.ds_subcategory 
		 			and pr.ds_product = db.ds_product 
		 			and pr.ecommerce_padronizado = db.ecommerce_padronizado
		 			and pr.dt_insert = db.LastDate)
 			when NextDate is not null then 
	 				(Select min(price) from precos pr 
		 			where pr.ds_category = db.ds_category 
		 			and pr.ds_subcategory = db.ds_subcategory 
		 			and pr.ds_product = db.ds_product 
		 			and pr.ecommerce_padronizado = db.ecommerce_padronizado
		 			and pr.dt_insert = db.NextDate)		 
		 	else NULL 
		 End Price_final
 	from db_base2 db

