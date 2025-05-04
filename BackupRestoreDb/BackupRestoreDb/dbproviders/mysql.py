import subprocess
import os
import logging
from ..common_interface import DatabaseBackupInterface  # optional for common interface

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)

class MySQLBackup(DatabaseBackupInterface):
    """
    A class to handle MySQL database backup and restore operations.
    """

    def __init__(self, db_name, user, password, host, port=3306):
        """
        Initialize the MySQLBackup class with database connection details.

        Args:
            db_name (str): Name of the database to back up or restore.
            user (str): Username for the database.
            password (str): Password for the database.
            host (str): Hostname or IP address of the database server.
            port (int, optional): Port number for the database server. Defaults to 3306.
        """
        self.db_name = db_name
        self.user = user
        self.password = password
        self.host = host
        self.port = port

    def backup(self, backup_file):
        """
        Perform a backup of the MySQL database and save it to the specified file.

        Args:
            backup_file (str): Path to the file where the backup will be saved.

        Raises:
            subprocess.CalledProcessError: If the mysqldump command fails.
            FileNotFoundError: If the mysqldump command is not found.
            PermissionError: If there is no permission to write to the backup file.
            Exception: For any other unexpected errors.
        """
        try: 
            subprocess.run([
                "mysqldump",
                "-h", self.host,
                "-P", str(self.port),
                "-u", self.user,
                f"-p{self.password}", 
                self.db_name,
                ">",
                backup_file
            ], check=True)
            logger.info(f"MySQL backup completed: {backup_file}")
        except subprocess.CalledProcessError as e:
            logger.error("MySQL backup failed: %s", e)
        except FileNotFoundError as e:
            logger.error("mysqldump command not found: %s", e)
        except PermissionError as e:
            logger.error("Permission denied while accessing the output file: %s", e)
        except Exception as e:
            logger.error("An unexpected error occurred during backup: %s", e)

    def restore(self, restore_file):
        """
        Restore a MySQL database from the specified backup file.

        Args:
            restore_file (str): Path to the file containing the database backup.

        Raises:
            subprocess.CalledProcessError: If the mysql command fails.
            FileNotFoundError: If the mysql command is not found.
            PermissionError: If there is no permission to read the restore file.
            Exception: For any other unexpected errors.
        """
        try:
            subprocess.run([
                "mysql",
                "-h", self.host,
                "-P", str(self.port),
                "-u", self.user,
                f"-p{self.password}",
                self.db_name,
                "<",
                restore_file
            ], check=True)
            logger.info("MySQL restore completed successfully.")
        except subprocess.CalledProcessError as e:
            logger.error("MySQL restore failed: %s", e)
        except FileNotFoundError as e:
            logger.error("mysql command not found: %s", e)
        except PermissionError as e:
            logger.error("Permission denied while accessing the input file: %s", e)
        except Exception as e:
            logger.error("An unexpected error occurred during restore: %s", e)
