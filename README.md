## EscamboApp
> Site de vendas feito em ruby on rails
> 1. Gerenciamento de Anuncio (criar,editar e excluir)
> 2. Cadastro de Usuários e Administradores(com diferentes níveis de acesso)
> 3. Notificações e recuperação de senha por email
> 4. Sistema administrativo (cadastro de categorias, novos administradores, gerador de diagrama ER)


* Versão do Ruby = 2.3.0

* Versão do Rails = 4.2.7.1

## Dependências do projeto

* ImageMagick (https://www.imagemagick.org)

```
sudo apt-get update
sudo apt-get install imagemagick libmagickwand-dev
```

* Graphviz (https://www.graphviz.org) - Apenas para Ambiente de Desenvolvimento

```
sudo apt-get update
sudo apt-get install graphviz
```

## Ambiente de desenvolvimento

* Populando banco de dados em ambiente de desenvolvimento

```
rake dev:setup
```
saida gerada: 

```
Configurando Ambiente de Desenvolvimento...
Apagando Images /Public/System 
Apagando BD... 
Criando BD... 
Cadastrando as CATEGORIAS...
Cadastrando as Categorias...[OK]
Cadastrando Usuario Padrão...
Cadastrando Usuario Padrão...[OK]
Cadastrando Membro Padrão...
Cadastrando Membro Padrão...[OK]
Cadastrando Administradores...
Cadastrando Administradores...[OK]
Cadastrando Membros...
Cadastrando Membros...[OK]
Cadastrando Anuncios...
Cadastrando Anuncios...[OK]
Cadastrando Comentarios...
Cadastrando Comentarios...[OK]
Configurando Ambiente de Desenvolvimento...[OK]

```
