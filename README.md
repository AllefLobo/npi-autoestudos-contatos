# npi-autoestudo-contatos



    Baixe o projeto crud-basico-spring e o importe para o eclipse.

        1 - 'Clone' o projeto
        2 - Importe para o eclipse: File > Import > Existing Maven Projects

    Crie um banco de dados chamado contatos no postgres.

    Configure o acesso ao banco nos arquivos de configuração do tomcat:

        No arquivo context.xml, adicione a linha abaixo depois da tag WatchedResource
        <ResourceLink global="contatos" name="contatos" type="javax.sql.DataSource"/>

        No arquivo server.xml, adicione o código abaixo dentro da tag GlobalNamingResources
        <Resource auth="Container" driverClassName="org.postgresql.Driver" name="contatos" password="postgres" type="javax.sql.DataSource" url="jdbc:postgresql://localhost:5432/contatos" username="postgres"/>

        Obs: substitua os valores de username e passoword pelo usuário e senha do seu postgres.

    Execute a aplicação. Ao executá-la serão criadas as tabelas no banco de dados referentes à aplicação.

    Insira no banco de dados uma tupla de usuário e o papel com nome 'ROLE_CONTATO'. Insira também na tabela papel_usuario a
    ligação entre o usuário e o papel através dos respectivos ids. Obs: a senha a ser inserida no banco deve ser um hash do seu
    valor. Você pode criar o hash através do link (http://www.xorbin.com/tools/sha256-hash-calculator)
    

