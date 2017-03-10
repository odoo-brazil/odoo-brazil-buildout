# -*- python -*-
"""This is a template upgrade script.

The purpose is both to cover the most common use-case (updating all modules)
and to provide an example of how this works.
"""


def run(session, logger):
    """Update all modules."""
    if session.is_initialization:
        logger.warn("Usage of upgrade script for initialization detected. "
                    "You should consider customizing the present upgrade "
                    "script to add modules install commands. The present "
                    "script is at : %s (byte-compiled form)",
                    __file__)
        return
    logger.info("Procedimento de atualização, versão atual: " +
                session.db_version)

    if session.db_version < '10.0.0.0.0':
        session.update_modules(['all'])
    # elif session.db_version < '10.0.0.0.1':
    #     session.update_modules(['all'])
    # elif session.db_version < '10.0.0.0.1':
    #     session.update_modules(['all'])
