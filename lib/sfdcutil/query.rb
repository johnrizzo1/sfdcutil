require 'thor'
require 'databasedotcom'
require 'readline'
require 'io/console'

module SFDCUtil
  class Query < Thor
    namespace name='object'
    Hirb.disable
    extend Hirb::Console

    class_option :env, :type => :string, :aliases => '-e',
                  :desc => 'The environment to connect to'
    class_option :config_file, :type => :string, :aliases => "-f",
                  :desc => "The name of the file containing the connection parameters."

    desc 'list', 'list the available objects'
    #long_desc <<-LONGDESC
    #  list long description
    #LONGDESC
    def list()
      client = connect

      puts 'list all objects'
      sobjects = Hash[*client.list_sobjects]
      table_data = [sobjects]

      Formatador.display_table(table_data)

      #client.list_sobjects.each do |object|
      #  puts object.to_s
      #end
    end

    private
      def connect()
        if options[:config_file].nil? && ENV['SFDCUTIL_HOME'].nil?
          puts 'Unable to locate the sfdcutil config file.  ' +
                   'Please point SFDCUTIL_HOME to the sfdcutil config directory or specify the config file manually'
          exit 1
        end

        file_name = options[:config_file] ? options[:config_file] : ENV['SFDCUTIL_HOME'] + "/sites.yml"

        config = YAML.load_file(file_name)
        if config.nil?
          puts 'Unable to locate the configuration for the environment ' + env
          exit 1
        end

        default_env = options[:env] ? options[:env] : config['default_env']
        env = config['envs'].detect { |e| e['env'] == default_env }

        host = env['host'].to_s
        client_id = env['client_id'].to_s
        client_secret = env['client_secret'].to_s
        user = Readline.readline("Username: ", false).strip
        print "Password: "
        pass = STDIN.noecho(&:gets).strip
        puts ""

        if host.to_s.empty? || client_id.to_s.empty? || client_secret.to_s.empty? || user.to_s.empty? || pass.to_s.empty?
          puts 'You must enter a config file or all of the following; client_id, client_secret, user and pass'
          exit 1
        end

        begin
          client = Databasedotcom::Client.new :host => host,
                                              :client_id => client_id,
                                              :client_secret => client_secret
          client.authenticate :username => user, :password => pass
          return client
        rescue Exception => ex
          puts 'Unable to authenticate: ' + ex.message
          puts 'Host: ' + host
          puts 'Client ID: ' + client_id
          puts 'Client Secret: ' + client_secret
          puts 'User: ' + user
          puts 'Password: ' + pass
          exit 1
        end
      end

  end
end