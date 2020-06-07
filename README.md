# NewBox

Antes de tudo, caso queira ver um vídeo autoexplicativo ao invés de ler o texto abaixo, clique aqui: https://youtu.be/2164wqSNKSU

Primeiramente, clone o projeto NewBox do repositório, para isso, na linha de comando faça:

```
git clone https://github.com/romulo059/newbox.git
```

Após clonar, vá na pasta “Config” e abra o arquivo chamado “database.yml”.

Nele, você precisará configurar com as informações do seu banco de dados: 

```
efault: &default
  adapter: postgresql
  encoding: unicode
  username: 
  password: 
  host: localhost

development:
  <<: *default
  database: postgres
```
No nosso caso, estamos utilizando o banco de dados PostgreSQL.

Voltando para o prompt, entre na pasta “newbox” através do comando “cd”:

```
cd newbox
```

Para certificar de que os arquivos já instalados em node_modules não foram removidos, dê o comando:

```
yarn install --check-files
```

Após ter solocitado ao Yarn para checar os arquivos, levante o server na linha de comando:

```
rails server
```

Por padrão, o servidor é executado na porta 3000.

Abra seu navegador e acesse: http://localhost:3000/

Pronto! Você verá o CRUD que criamos.

Para entender mais sobre o projeto, veja o vídeo: https://youtu.be/YLRgCBQEvHs