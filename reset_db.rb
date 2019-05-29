require "sqlite3"

dir = File.dirname(__FILE__)
db = SQLite3::Database.new(File.join(dir, "db/teachers.db"))

db.execute('DROP TABLE IF EXISTS `teachers`;')
create_statement = "
CREATE TABLE `teachers` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `first_name` TEXT,
  `last_name` TEXT,
  `skills`  INTEGER
);"
db.execute(create_statement)
