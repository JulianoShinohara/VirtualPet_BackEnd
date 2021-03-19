<h1 align="center"> Virtual Pet - Beckend </h1>
<br>


<!-- TABLE OF CONTENTS -->
## Conteúdos

* [Sobre o Sistema](#about-the-project)
  * [Tecnologias](#built-with)
* [Principais Funcionalidades](#features)
* [Como rodar a apresentação](#getting-started)
  * [Pré-requisitos](#prerequisites)
  * [Instalação](#installation)
* [Contato](#contact)



<!-- ABOUT THE PROJECT -->
## Sobre o sistema

O backend do aplicativo Virtual Pet, inspirado no tamagotchi.

### Tecnologias
O sistema está sendo feito com as seguintes tecnologias:
* [Ruby on Rails](https://rubyonrails.org/) <br>
* [PostgreSQL](https://www.postgresql.org/download/)


<!-- GETTING STARTED -->
## Como rodar a aplicação

O tutorial abaixo foi feito utilizando o sistema operacional Ubuntu 18.04.5.

### Pré-requisitos

[Java SE 11](https://www.oracle.com/java/technologies/javase-downloads.html)
[PostgreSQL](https://www.postgresql.org/download/)
[Maven](https://maven.apache.org/)

### Instalação

1. Clone o repositorio
```sh
git clone https://github.com/xShinohara/VirtualPet.git
```
2. No terminal rode os seguintes comandos:
	```sh
	psql -U postgres
	```
    Após digitar a senha do usuário padrão postgres, iremos criar um novo e dar permissões para ele.
    ```sh
    CREATE USER nome_novo_usuario WITH PASSWORD 'nova_senha';
    ALTER ROLE nome_novo_usuario CREATEROLE CREATEDB;
    exit
    ```
3. Na pasta raiz do projeto, crie um novo arquivo com o nome '.env' e adicione as seguintes linhas:
	```sh
	VIRTUALPET_DATABASE_USERNAME=usuario
    VIRTUALPET_DATABASE_PASSWORD=senha
	```
    Onde usuario e senha são os que criamos anteriormente.
4. Novamente na pasta do projeto, rode os seguintes comandos:
	```sh
	yarn
    rake db:create
    rails s
	```
5. Agora, no seu navegador, acesse o seguinte endereço:	
	```sh	
	http://127.0.0.1:3000/
	```

<!-- CONTACT -->
## Contato

Juliano Kendyi Shinohara -
Alisson da Silva Vieira - alisson.v3@hotmail.com  

Project Link: [https://github.com/xShinohara/VirtualPet.git](https://github.com/xShinohara/VirtualPet.git)



