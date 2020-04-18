# Trabalho de DevOps

Pós em Cloud Computing - SETREM

Daniel Tomm e Willian Baum

## Ferramentas utilizadas no trabalho:

*  Github
*  Travis: Build e test
*  DockerHub: Publish
*  Heroku: Deploy

## Pipeline utilizada
*  Build > Test > Publish > Deploy


## Ambiente

Para permitir o funcionamento do ambiente, foi efetuada a configuração e liberação entre as ferramentas utilizadas. A primeira configuração realizada foi permitir o acesso a ferramenta Travis dentro do repositório do Github. Feito isso, configuramos o Travis para identificar quando ocorrer um push dentro do repositório, e assim iniciar o Build. Ainda, dentro do Travis, houve a necessidade de configurar as variáves do docker para a etapa de publish, informando login, senha e repositório. Posteriormente configuramos o Heroku para ter acesso ao repositório. Nesta configuração é necessário habilitar as opções **"Wait for CI to pass before deploy"** e **"Enable Automatic Deploys"**. Feito isso, o Heroku estará habilitado para realizar o Deploy da aplicação.

## Escolha das ferramentas

De forma geral as ferramentas utilizadas na atividade, foram escolhidas devido a facilidade de comunicação e integração entre ambas, bem como a quantidade de materiais disponíveis.

## Ferramentas Alternativas

### Github
*  GitLab
*  Bitbucket
*  VisualSVN
*  Gitlab

### TravisCI
*  Jenkins
*  Gitlab
*  Jira/Atlassian

### Heroku
*  Google Cloud Plataform
*  AWS
*  Azure

## Links
*  Docker Hub: https://hub.docker.com/repository/docker/danieltomm/devops-go
*  Heroku: https://devops-goo.herokuapp.com/
