FROM odoo-kmee:eggs
#kmee/docker.odoo:master
MAINTAINER KMEE infra@kmee.com.br

USER odoo

ENV ODOO_HOME /opt/odoo
WORKDIR $ODOO_HOME

COPY default.cfg $ODOO_HOME/
COPY develop.cfg $ODOO_HOME/
COPY pre-build.sh $ODOO_HOME/

RUN ./pre-build.sh -c develop.cfg
