FROM gitlab.kmee.com.br:5043/odoo/base-buildout:10-0

USER odoo
ENV ODOO_HOME /opt/odoo
WORKDIR $ODOO_HOME
COPY ["default.cfg", "develop.cfg", "$ODOO_HOME/"]
RUN bin/buildout -Nc develop.cfg
EXPOSE 8069
CMD ["bin/start-odoo"]
