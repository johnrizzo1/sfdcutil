require 'thor'
require 'sfdcutil/trust'
require 'term/ansicolor'

module SFDCUtil
  class Status < Thor
    include Term::ANSIColor
    namespace name='trust'

    desc "status", "Retrieve the trust status"
    method_option :instance,
                  :aliases => "-i",
                  :desc => "Retrive the status of the specified instance"
    method_option :url,
                 :aliases => '-u',
                 :desc => "Trust Site URL, default is http://trust.salesforce.com/trust/status/"
    def status()
      instance_pod = options[:instance]
      instance_url = options[:url]

      if instance_url
        trust = Trust.new(instance_url)
      else
        trust = Trust.new
      end

      if instance_pod
        print_instances(trust.get_status(instance_pod))
      else
        print_instances(trust.get_all_status)
      end
    end

    no_tasks do
      def print_instances(instances)
        puts sprintf("%12s %s", "Instance", "Status")
        instances.each do |instance|
          message = sprintf("%12s %s" % [instance[:instance], instance[:status]])
          if instance[:status] == "Instance available"
            puts green(message)
          elsif instance[:status] == "Performance issues"
            puts yellow(message)
          elsif instance[:status] == "Service disruption"
            puts red(message)
          elsif instance[:status] == "Informational message"
            puts blue(message)
          elsif instance[:status] == "Status not available"
            puts magenta(message)
          else
            puts red(message)
          end
        end
      end
    end
  end
end