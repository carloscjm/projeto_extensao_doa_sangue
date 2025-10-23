Agenda Colaborativa para Eventos Comunitários
Este projeto é uma plataforma para que organizadores de eventos, como feiras, quermesses e pequenos comerciantes, 
possam gerenciar e divulgar suas atividades de forma colaborativa. A aplicação permite que usuários cadastrem, editem e visualizem eventos em um calendário compartilhado.

🚀 Tecnologias Utilizadas
O projeto foi construído utilizando as seguintes tecnologias:

Backend: Node.js

Banco de Dados: MySQL

Mensageria: Kafka

Cache: Redis

Gerenciamento de Containers: Docker

Controle de Versão: Git

Metodologia: Scrum

📦 Pré-requisitos
Para rodar o projeto localmente, você precisa ter o Docker e o Docker Compose instalados em sua máquina.

Docker

Docker Compose

⚙️ Instalação e Execução
Siga os passos abaixo para configurar o ambiente e iniciar a aplicação.

Clone este repositório:

Bash

git clone https://github.com/carloscjm/extencap_ads_eventos.git
Crie um arquivo .env com base no arquivo de exemplo .env.example. Este arquivo irá conter as variáveis de ambiente necessárias para a conexão com o banco de dados e outros serviços.

Suba os containers da aplicação utilizando o Docker Compose:

Bash

docker-compose up -d
Isso irá construir as imagens e iniciar os containers do backend (Node.js), MySQL, Redis.

Acesse a aplicação no seu navegador:

Backend: http://localhost:8080

Frontend: http://localhost:3032

📚 Estrutura do Projeto
/backend-node: Microsserviço para funcionalidades específicas, como processamento de notificações em tempo real.

/frontend: Código da interface do usuário (UI) da aplicação.

👥 Colaboradores
[Carlos Junior Machado]
[Renan Silva]
[Luana Correa]
[Lara Otoni]

Faça o commit das suas alterações (git commit -m 'Adiciona nova funcionalidade').

Faça o push para a branch (git push origin feature/NomeDaFuncionalidade).

Abra um pull request.
