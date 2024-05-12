# Ponderada-BancoDeDados

### Descrição do Banco de Dados:
&nbsp;&nbsp;&nbsp;&nbsp;O banco de dados é projetado para armazenar informações relacionadas a aplicação web proposta pela Dell para o treinamento dos funcionários das linhas de montagem da fábrica da empresa. Descrição de cada tabela:

**Users:**

* id: Identificador único para cada usuário (chave primária).
* Nomes: Nome do usuário.
* Genero: Gênero do usuário.
* Email: Endereço de e-mail do usuário.
* Senha: Senha do usuário.
* NivelDeAcesso: Nível de acesso do usuário no sistema.

**Manuais:**

* id: Identificador único para cada manual (chave primária).
* ProdutosAssociados: ID do produto associado ao manual.
* Nome: Nome do manual.
* Descricao: Descrição do manual.
* Publicacao: Data e hora de publicação do manual.
* IdUsers: ID do usuário responsável pela criação do manual.
    ###### Chaves estrangeiras:
* ProdutosAssociados: Referencia a tabela de Produtos.
* IdUsers: Referencia a tabela de Users.

**Task:**

* id: Id para cada tarefa (chave primária).
* IdMontador: ID do montador.
* ManualAssociado: ID do manual associado à tarefa.
* Finalizado: Indica se a tarefa foi finalizada ou não.
* DataUpload: Data e hora de upload da tarefa.
* IdAdminAssociado: ID do usuário administrador associado à tarefa.
    ###### Chaves estrangeiras:
* IdMontador: Referencia a tabela de Users.
* ManualAssociado: Referencia a tabela de Manuais.
* IdAdminAssociado: Referencia a tabela de Users.

**Produtos:**

* id: Identificador único para cada produto (chave primária).
* Nome: Nome do produto.
* IdLinhaAssociada: ID da linha de montagem associada ao produto.
    ###### Chave estrangeira:
* IdLinhaAssociada: Referencia a tabela de LinhaMontagem.
  
  
**LinhaMontagem:**

* id: Identificador único para cada linha de montagem (chave primária).
* Nome: Nome da linha de montagem.
* Descricao: Descrição da linha de montagem.
    ###### Chave estrangeira:
* IdMontadorAdm: Referencia a tabela de Users.