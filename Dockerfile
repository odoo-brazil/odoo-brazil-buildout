FROM gitlab.kmee.com.br:5043/odoo/base-buildout:10-0

USER odoo
ENV ODOO_HOME /opt/odoo
WORKDIR $ODOO_HOME
COPY ["default.cfg", "buildout.cfg", "entrypoint.sh", "$ODOO_HOME/"]
USER root
RUN chown -R odoo:odoo $ODOO_HOME/
#RUN whoami
#RUN ls -lah ./entrypoint.sh
USER odoo
#RUN sudo chown odoo ./entrypoint.sh
RUN bin/buildout -N
#EXPOSE 8069
#RUN ls -lah
ENTRYPOINT ["./entrypoint.sh"]
CMD ["odoo"]
