class DatabaseNotExists(Exception):
    """Raised when the specified database does not exist."""
    def __init__(self, db_name):
        super().__init__(f"The database '{db_name}' does not exist.")
        self.db_name = db_name

class AuthenticationError(Exception):
    """Raised when there is an authentication error."""
    def __init__(self, message):
        super().__init__(message)
        self.message = message