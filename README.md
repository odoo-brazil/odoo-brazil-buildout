# odoo-brazil-buildout

[![Build Status](https://travis-ci.org/odoo-brazil/odoo-brazil-buildout.svg?branch=feature%2Fv10-refactory)](https://travis-ci.org/odoo-brazil/odoo-brazil-buildout)

Passos para instalação do Odoo V10

1º Criar uma pasta vazia com permissão de escrita.

	mkdir projeto10

2º Configurar um Virtual Env na pasta criada, 
com permissão de acesso às bibliotecas do sistema:
	
	cd projeto10
	virtualenv . --system-site-packages


3º Atualizar e/ou Instalar o buildout dentro da virtualenv

	bin/pip install -U pip zc.buildout 


4º Criar um arquivo chamado 'common.cfg' que irá extender buildout do repositório Odoo-Brazil

	printf "[buildout]\n\nextends =  https://raw.githubusercontent.com/odoo-brazil/odoo-brazil-buildout/10.0/default.cfg" >> common.cfg

4º Criar um arquivo chamado 'buildout.cfg' que irá extender o arquivo do common.cfg

	printf "[buildout]\n\nextends = common.cfg" >> buildout.cfg


5º Rodar buildout apartir da virtualenv

	bin/buildout 

6º Rodar Odoo
	
	bin/start_odoo
 
 7º Enjoy!
