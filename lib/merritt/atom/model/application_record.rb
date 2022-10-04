require 'active_record'
require 'uc3-ssm'

@config = Uc3Ssm::ConfigResolver.new.resolve_file_values(file: 'config/atom.yml')
ActiveRecord::Base.establish_connection (
   { adapter: 'mysql2',
     encoding: 'utf8mb4',
     host: @config.fetch(ENV.fetch('ATOM_ENV'), {}).fetch("host"),
     database: @config.fetch(ENV.fetch('ATOM_ENV'), {}).fetch("database"),
     pool: 20,
     port: 3306,
     username: @config.fetch(ENV.fetch('ATOM_ENV'), {}).fetch("username"),
     password: @config.fetch(ENV.fetch('ATOM_ENV'), {}).fetch("password")
   }
)

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

