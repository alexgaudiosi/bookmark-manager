env = ENV["RACK_ENV"] || "development"
puts env
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")
DataMapper.finalize
