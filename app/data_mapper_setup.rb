env = ENV["RACK_ENV"] || "development"
database_url = ENV["DATABASE_URL"] || "postgres://localhost/bookmark_manager_#{env}"

DataMapper.setup(:default, database_url)
DataMapper.finalize
DataMapper.auto_upgrade!