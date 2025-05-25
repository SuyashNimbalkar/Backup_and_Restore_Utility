# dbbackup/providers/postgres.py
import subprocess
import os
import logging

from exceptions.exceptions import AuthenticationError, DatabaseNotExists
from common_interface import DatabaseBackupInterface

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)

class PostgresBackup(DatabaseBackupInterface):
    """
    A class to handle PostgreSQL database backup and restore operations.
    """

    def __init__(self, db_name, user, password, host, port):
        """
        Initialize the PostgresBackup class with database connection details.

        Args:
            db_name (str): Name of the database to back up or restore.
            user (str): Username for the database.
            password (str): Password for the database.
            host (str): Hostname or IP address of the database server.
            port (int): Port number for the database server.
        """
        self.db_name = db_name
        self.user = user
        self.password = password
        self.host = host
        self.port = port

    def backup(self, output_file):
        """
        Perform a backup of the PostgreSQL database and save it to the specified file.

        Args:
            output_file (str): Path to the file where the backup will be saved.

        Raises:
            subprocess.CalledProcessError: If the pg_dump command fails.
            FileNotFoundError: If the pg_dump command is not found.
            PermissionError: If there is no permission to write to the backup file.
            Exception: For any other unexpected errors.
        """
        try:
            os.environ["PGPASSWORD"] = self.password
            result=subprocess.run([
                "pg_dump", "-h", self.host, "-p", str(self.port), "-U", self.user,
                "-F", "c", "-f", output_file, self.db_name
            ], check=True,
                text=True,  # Ensures output is captured as a string
                stderr=subprocess.PIPE  # Captures stderr output
                )
            logger.info(f"PostgreSQL backup completed: {output_file}")
        except subprocess.CalledProcessError as e:
            error_message = e.stderr
            if "does not exist" in error_message:
                logger.error(f"Database '{self.db_name}' does not exist.")
                raise DatabaseNotExists(self.db_name)
            elif "password authentication failed for user" in error_message:
                logger.error("Authentication failed for user '%s'.", self.user)
                raise AuthenticationError("Authentication failed for user '%s'." % self.user)
            else:
                logger.error("PostgreSQL backup failed: %s", error_message)
                raise
        except FileNotFoundError as e:
            logger.error("pg_dump command not found: %s", e)
            raise FileNotFoundError("pg_dump command not found: %s", e)
        except PermissionError as e:
            logger.error("Permission denied while accessing the output file: %s", e)
            raise PermissionError("Permission denied while accessing the output file: %s", e)
        except Exception as e:
            logger.error("An unexpected error occurred during backup: %s", e)
            raise Exception("An unexpected error occurred during backup: %s", e)
        finally:
            os.environ.pop("PGPASSWORD", None)

    def restore(self, input_file):
        """
        Restore a PostgreSQL database from the specified backup file.

        Args:
            input_file (str): Path to the file containing the database backup.

        Raises:
            DatabaseNotExists: If the database does not exist.
            subprocess.CalledProcessError: If the pg_restore command fails.
            FileNotFoundError: If the pg_restore command is not found.
            PermissionError: If there is no permission to read the restore file.
            Exception: For any other unexpected errors.
        """
        try:
            os.environ["PGPASSWORD"] = self.password
            result = subprocess.run(
                [
                    "pg_restore", "-h", self.host, "-p", str(self.port), "-U", self.user,
                    "-d", self.db_name, input_file
                ],
                check=True,
                text=True,  # Ensures output is captured as a string
                stderr=subprocess.PIPE  # Captures stderr output
            )
            logger.info("PostgreSQL restore completed successfully.")
        except subprocess.CalledProcessError as e:
            error_message = e.stderr
            if "does not exist" in error_message:
                logger.error(f"Database '{self.db_name}' does not exist.")
                raise DatabaseNotExists(self.db_name)
            elif "password authentication failed for user" in error_message:
                logger.error("Authentication failed for user '%s'.", self.user)
                raise AuthenticationError("Authentication failed for user '%s'." % self.user)
            else:
                logger.error("PostgreSQL restore failed: %s", error_message)
                raise
        except FileNotFoundError as e:
            logger.error("pg_restore command not found: %s", e)
            raise FileNotFoundError("pg_restore command not found: %s", e)
        except PermissionError as e:
            logger.error("Permission denied while accessing the input file: %s", e)
            raise PermissionError("Permission denied while accessing the input file: %s", e)
        except Exception as e:
            logger.error("An unexpected error occurred during restore: %s", e)
            raise Exception("An unexpected error occurred during restore: %s", e)
        finally:
            os.environ.pop("PGPASSWORD", None)
