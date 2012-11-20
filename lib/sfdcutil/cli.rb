require 'thor'
require 'sfdcutil/status'
require 'sfdcutil/query'

module SFDCUtil

  class CLI < Thor
    desc "trust SUBCOMMAND ..ARGS", "retrieve the trust status"
    subcommand "trust", Status

    desc 'object SUBCOMMAND', 'query the objects'
    subcommand 'object', Query
  end

end