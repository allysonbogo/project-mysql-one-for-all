# Store Manager
#### _by [Allyson Belli Bogo](https://www.linkedin.com/in/allysonbogo/)_

## :page_with_curl: Sobre

O projeto consolida a utilização da ferramenta Docker, conceitos de SQL e a normalização e manipulação de tabelas simultaneamente utilizando MySQL Workbench. Como desafio, foi utilizado o banco de dados SpotifyClone.

Este projeto utiliza o banco de dados relacional MySQL, e para manipulá-lo construímos queries utilizando conceitos de JOIN, SELECT, COUNT, entre outros.


## :man_technologist: Habilidades desenvolvidas

* Docker
* MySQL
* Normalização e manipulação de tabelas
* Filtragem de dados


## 🛠️ Ferramentas Utilizadas

* Docker
* MySQL

## ⚙️ Como Executar

> :warning: _É necessário ter o Docker e o MySQL Workbench instalados para executar este projeto_

<details>
  <summary> Passo a passo </summary>
  <br>

1. Clone o repositório em uma pasta de preferência

```
git clone git@github.com:allysonbogo/project-mysql-one-for-all.git
```

2. Entre na pasta raíz do projeto e instale todas as dependências

```
npm install
```

3. Para rodar o projeto é necessario executar o comando abaixo no diretório raiz do projeto. Isso fará com que os containers docker sejam orquestrados e o banco de dados esteja disponível

```
docker-compose up -d
```
4. No MySQL Workbench, crie o banco de dados a partir dos comandos do arquivo <code>challenges/desafio1.sql</code>

5. Depois que o banco de dados estiver criado, as queries podem ser testadas a partir dos comandos dos arquivos <code>challenges/desafio2...9.sql</code>

6. Para testar os comandos dos arquivos <code>challenges/desafio11...13.sql</code>, crie uma nova tabela a partir dos comandos do arquivo <code>challenges/desafio10.sql</code> no MySQL Workbench