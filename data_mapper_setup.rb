require 'data_mapper'
require 'dm-postgres-adapter'

# DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] ||
                 "postgres://localhost/chitter_#{ENV['RACK_ENV']}")
DataMapper.finalize