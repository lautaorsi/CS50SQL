from cs50 import SQL

db = SQL("sqlite:///pets.db")

db.execute(
    """
    UPDATE "users"
    SET "password" = ?
    WHERE "username" = 'admin';
    """,
    password
)
