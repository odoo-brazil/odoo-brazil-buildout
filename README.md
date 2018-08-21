# odoo-brazil-buildout

Passos para instalação do Odoo V10

1º Criar uma pasta vazia com permissão de escrita.

	mkdir projeto10

2º Configurar um Virtual Env na pasta criada, 
com permissão de acesso às bibliotecas do sistema:
	
	cd projeto10
	virtualenv -p python2 .

3º Atualizar e/ou Instalar o buildout dentro da virtualenv

	bin/pip install -U pip zc.buildout 


4º Criar um arquivo chamado 'buildout.cfg' que irá extender o arquivo do common.cfg

    [buildout]
    extends = default.cfg
    
    [odoo]
    options.db_password = <password on odoo runbot database>
    options.db_user = <odoo user>
    options.admin_passwd = <password on odoo instance>
    options.db_host = <host>
    options.db_password = <db password>

Setando outros parametros:

    options.nome_parametro_no_arquivo_cfg = 4

5º Execute o buildout, para fazer o download do Odoo e suas dependencias

	bin/buildout 

6º Iniciando o Odoo
	
	bin/start_odoo
 
 7º Enjoy!
 
 Mais informações veja a documentação oficial: https://github.com/anybox/anybox.recipe.odoo/
