import os
import sys



SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(os.path.dirname(SCRIPT_DIR))


from core import get_backup_tool

tool = get_backup_tool(
    db_type="postgres",
    db_name="CodeGenerator",
    user="postgres",
    password="postgres",
    host="localhost",
    port=5432
)

tool.backup("mydb.sql")
#tool.restore("mydb.sql")
