from abc import ABC, abstractmethod

class DatabaseBackupInterface(ABC):
    @abstractmethod
    def backup(self, output_file: str): pass

    @abstractmethod
    def restore(self, input_file: str): pass
