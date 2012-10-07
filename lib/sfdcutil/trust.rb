module SFDCUtil
  class Trust
    require 'open-uri'
    require 'nokogiri'

    def initialize(url = 'http://trust.salesforce.com/trust/status/')
      @url = url
      @instances = nil
    end

    def set_url(url)
      unless url == nil
        @url = url
      end
    end

    def get_all_status()
      gather_data()
    end

    def get_status(instance_name)
      data = gather_data()
      data.select { |item| item[:instance] == instance_name }
    end

    private

    def gather_data(reload=false)
      if @instances != nil &&
          reload != true
        return @instances
      end

      html_doc = Nokogiri::HTML(open(@url))

      @instances = Array.new

      %w(NORTH_AMERICA APAC EMEA SANDBOX).each do |region|
        raw_instances = html_doc.css('#instanceTable_' + region + ' * a[title]')
        raw_status = html_doc.css('#instanceTable_' + region + ' > tbody > tr > td > img')

        (0..raw_instances.length - 1).each do |x|
          # Yes this is really ugly but I can't figure out why strip doesn't work
          # I think that there is actually a multi-byte character in at [-1]
          instance = raw_instances[x].content[0..-2]
          status = raw_status[x].attribute('title').to_s

          @instances << {:instance => instance,
                         :status => status }
        end
      end

      @instances
    end
  end
end