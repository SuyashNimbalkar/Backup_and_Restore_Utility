
from BackupRestoreDb.core import get_backup_tool


tool = get_backup_tool(
    db_type="postgres",
    db_name="mydb",
    user="postgres",
    password="secret",
    host="localhost",
    port=5432
)

tool.backup("mydb.bak")
tool.restore("mydb.bak")
