require 'thor'
require 'sfdcutil/trust'
require 'term/ansicolor'

module SFDCUtil

  class CLI < Thor

    include Term::ANSIColor

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

    #no_tasks do
    #
    #  def colorize(text, color_code)
    #    "\e[#{color_code}m#{text}\e[0m"
    #  end
    #
    #  RED = 31
    #  GREEN = 32
    #  YELLOW = 33
    #  BLUE = 34
    #  MAGENTA = 35
    #
    #  def print_instances(instances)
    #    puts sprintf("%12s %s", "Instance", "Status")
    #    instances.each do |instance|
    #      if instance[:status] == "Instance available"
    #        color = GREEN
    #        #color = green
    #      elsif instance[:status] == "Performance issues"
    #        color = YELLOW
    #        #color = yellow
    #      elsif instance[:status] == "Service disruption"
    #        color = RED
    #        #color = red
    #      elsif instance[:status] == "Informational message"
    #        color = BLUE
    #        #color = blue
    #      elsif instance[:status] == "Status not available"
    #        color = MAGENTA
    #        #color = magenta
    #      else
    #        color = RED
    #        #color = red
    #      end
    #
    #      puts colorize(sprintf("%12s %s" % [instance[:instance], instance[:status]]), color)
    #      #puts color(sprintf("%12s %s" % [instance[:instance], instance[:status]]))
    #      #puts sprintf("%12s %s" % [instance[:instance], instance[:status]])
    #    end
    #  end
    #end

  end
end