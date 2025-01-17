require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/user'

# DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] ||
                 "postgres://localhost/chitter_#{ENV['RACK_ENV']}")
DataMapper.finalize
