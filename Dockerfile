FROM gitlab.kmee.com.br:5043/odoo/base-buildout:10-0

USER odoo
ENV ODOO_HOME /opt/odoo
WORKDIR $ODOO_HOME
COPY ["default.cfg", "develop.cfg", "entrypoint.sh", "$ODOO_HOME/"]
USER root
RUN chown odoo:odoo $ODOO_HOME/entrypoint.sh
#RUN whoami
#RUN ls -lah ./entrypoint.sh
USER odoo
#RUN sudo chown odoo ./entrypoint.sh
RUN bin/buildout -Nc develop.cfg
#EXPOSE 8069
#RUN ls -lah
ENTRYPOINT ["./entrypoint.sh"]
CMD ["odoo"]
