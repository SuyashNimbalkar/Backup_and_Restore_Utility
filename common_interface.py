from abc import ABC, abstractmethod

class DatabaseBackupInterface(ABC):
    """
    Abstract base class for database backup and restore operations.
    """

    @abstractmethod
    def backup(self, output_file: str):
        """
        Perform a backup of the database and save it to the specified file.

        Args:
            output_file (str): Path to the file where the backup will be saved.

        Raises:
            Exception: If the backup operation fails.
        """
        pass

    @abstractmethod
    def restore(self, input_file: str):
        """
        Restore the database from the specified backup file.

        Args:
            input_file (str): Path to the file containing the database backup.

        Raises:
            Exception: If the restore operation fails.
        """
        pass
