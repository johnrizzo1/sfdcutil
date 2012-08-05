module SFDCUtil
  class Trust
    require 'open-uri'
    require 'nokogiri'

    def initialize(url = 'http://trust.salesforce.com/status-data/status.jsp')
      @url = url
    end

    def get_all_status()
      @data = gather_data()
      puts sprintf("%12s %s", "Instance", "Status")
      @data.each do |x|
        puts sprintf("%12s %s", x[:instance], x[:status])
      end
    end

    def gather_data()
      html_doc = Nokogiri::HTML(open(@url))

      @instances = Array.new
      raw_instances = html_doc.css('table#instanceTable > tbody > tr')
      raw_status = html_doc.css('table#instanceTable > tbody > tr > td > img')

      (1..raw_instances.length - 4).each do |x|
        @instances << {:instance => raw_instances[x].content.to_s.strip,
                       :status => raw_status[x-1].attribute('alt').to_s}
      end

      return @instances
    end
  end
end