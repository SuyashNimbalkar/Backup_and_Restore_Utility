# dbbackup/factory.py
from .dbproviders.postgres import PostgresBackup
from .dbproviders.mysql import MySQLBackup

def get_backup_tool(db_type, **kwargs):
    db_type = db_type.lower()
    if db_type == "postgres":
        return PostgresBackup(**kwargs)
    elif db_type == "mysql":
        return MySQLBackup(**kwargs)
    else:
        raise ValueError(f"Unsupported database type: {db_type}")
