Funcionalidade: Cadastro de usuário 
    Como cliente administrador da Diocese/Paróquia
	Quero cadastrar usuários
	Para ter usuários com acesso as funcionalidades do sistema ao logar 
	
Contexto: Possibilidade de cadastrar um usuário

Esquema do Cenário: Usuário inserido com sucesso, preenchendo campos obrigatórios
	
	Dado que esteja no Cadastro de usuários
	E preencha o campo de "Nome"
	E preencha o campo de "E-mail"
	E preencha o campo de "Login"
	E informe as "Permissões" para o usuário
	E informe um "Organismo" padrão
	Quando clicar no botão "Salvar"
	Então o cadastro de usuario deve ser salvo
	E deve exibir a mensagem de "E-mail de verificação enviado"
	
Esquema do Cenário: validar mensagens de campos obrigatórios do cadastro de usuário
		
	Dado que esteja no Cadastro de usuários
	E preencha o campo de "Nome"
	E preencha o campo de "E-mail"
	E preencha o campo de "Login"
	E informe um "Organismo" padrão
	Quando clicar no botão "Salvar"
	Então deve ser exibida a mensagem "É necessário definir alguma permissão para o usuário."

    Dado que esteja no Cadastro de usuários
	E preencha o campo de "Nome"
	E preencha o campo de "E-mail"
	E preencha o campo de "Login"
	E informe as "Permissões" para o usuário
	Quando clicar no botão "Salvar"
	Então deve ser exibida a mensagem "Usuário deve pertencer a pelo menos um Organismo. e o mesmo deve ser padrão"